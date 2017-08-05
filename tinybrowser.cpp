// tinybrowse.cpp : Defines the entry point for the application.
//
#include "stdafx.h"
#include <winsock2.h>
#include <stdio.h>
#include <string.h>
//Most of Source comes from http://www.binarytides.com/winsock-socket-programming-tutorial/ I ported / combined the source to make it work on Windows CE.
//by Tsubasa Kato (twitter: @stingraze) 2017


int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
 	// TODO: Place code here.
	


 WSADATA wsa;
    SOCKET s;
    struct sockaddr_in server;
    char *message , server_reply[32000];

    int recv_size;
	char ip[100];
    struct hostent *he;
    struct in_addr **addr_list;
    int i;
 
    printf("\nInitialising Winsock...");
    if (WSAStartup(MAKEWORD(2,2),&wsa) != 0)
    {
        printf("Failed. Error Code : %d",WSAGetLastError());
        return 1;
    }
     
    printf("Initialised.\n");
    printf("Type in URL (without http:// / https:// to connect.\n");
	const int MAX_LEN = 512; //max characters
	char url[MAX_LEN];

fgets(url, MAX_LEN, stdin);

size_t ln = strlen(url) - 1;
if (*url && url[ln] == '\n') 
    url[ln] = '\0';
//For Debug: char *url2 = "www.superai.online";

	 if ( (he = gethostbyname( url ) ) == NULL) 
    {
        //gethostbyname failed
        printf("gethostbyname failed : %d" , WSAGetLastError());
        return 1;
    }
     
    //Cast the h_addr_list to in_addr , since h_addr_list also has the ip address in long format only
    addr_list = (struct in_addr **) he->h_addr_list;
     
    for(i = 0; addr_list[i] != NULL; i++) 
    {
        //Return the first one;
        strcpy(ip , inet_ntoa(*addr_list[i]) );
    }
     
    
    //Create a socket
    if((s = socket(AF_INET , SOCK_STREAM , 0 )) == INVALID_SOCKET)
    {
        printf("Could not create socket : %d" , WSAGetLastError());
    }
 
    printf("Socket created.\n");
     
     
    server.sin_addr.s_addr = inet_addr(ip);
    server.sin_family = AF_INET;
    server.sin_port = htons( 80 );
 
    //Connect to remote server
    if (connect(s , (struct sockaddr *)&server , sizeof(server)) < 0)
    {
        puts("connect error");
        return 1;
    }
     
    puts("Connected");
     
    //Send some data
    message = "GET / HTTP/1.0\r\n\r\n";
	

    if( send(s , message , strlen(message) , 0) < 0)
    {
        puts("Send failed");
        return 1;
    }
    puts("Data Send\n");
     
    //Receive a reply from the server
    if((recv_size = recv(s , server_reply , 32000 , 0)) == SOCKET_ERROR)
    {
        puts("recv failed");
    }
     
    puts("Reply received\n");
 
    //Add a NULL terminating character to make it a proper string before printing
    server_reply[recv_size] = '\0';
    puts(server_reply);

    return 0;

}
