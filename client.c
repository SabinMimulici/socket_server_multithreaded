#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/socket.h>
//structures for address info
#include<netinet/in.h>
//for close function
#include<unistd.h>

int main()
{
    //socket file descriptor containing information about our socket
    int network_socket;
    // creating a network socket
    if((network_socket = socket(AF_INET, SOCK_STREAM, 0))< 0)
    {
        perror("!Could NOT create socket!\n");
        exit(EXIT_FAILURE);
    }
    //creting an address structure
    struct sockaddr_in server_address;
    //populate structure
    server_address.sin_family = AF_INET;
    server_address.sin_port = htons(9002);
    server_address.sin_addr.s_addr = INADDR_ANY;

    //call the connect function
    if(connect(network_socket, (struct sockaddr *) &server_address, sizeof(server_address)) < 0 )
    {
        perror("!Could NOT connect!\n");
        exit(EXIT_FAILURE);
    }
    //receive data from server
    char server_response[256];
    recv(network_socket, &server_response, sizeof(server_response), 0 );
    //printout response
    printf("Data from server: %s\n", server_response);
    //close socket
    close(network_socket);
    
    return 0;
}