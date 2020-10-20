#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<unistd.h>
//multithreaded
#include<pthread.h>

void * service_client(void * p_client_socket);

int main(int argc, char *argv[])
{
    int port_number;
    if(argc == 2)
    {
        port_number = atoi(argv[1]);
        printf("The server port number is: %d\n", port_number);
    }
    else
    {
        perror("!Invalid parameter list!\n");
        exit(EXIT_FAILURE);
    }
    //create the server socket
    int server_socket;
    if((server_socket = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        perror("!Could NOT create socket!\n");
        exit(EXIT_FAILURE);
    }
    //define server address
    struct sockaddr_in server_address;
    server_address.sin_family = AF_INET;
    server_address.sin_port = htons(port_number);
    server_address.sin_addr.s_addr = INADDR_ANY; // to any ip address on local machine
    //bind the socket to our specified IP and port
    if(bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address)))
    {
        perror("!Could NOT bind socket!");
        exit(EXIT_FAILURE);
    }
    //listen for connections
    //second argument represents how many conections can be waiting on a point in time
    if(listen(server_socket, 1) < 0)
    {
        perror("!Could NOT listen!\n");
        exit(EXIT_FAILURE);
    }
    while(1)
    {
        int client_socket;
        if((client_socket = accept(server_socket, NULL, NULL)) < 0)
        {
            perror("!Could NOT create client socket!\n");
            exit(EXIT_FAILURE);
        }
        pthread_t t;
        int * p_client_socket = malloc(sizeof(int));
        * p_client_socket = client_socket;

        pthread_create(&t, NULL, service_client, p_client_socket);
    }
    //close socket
    close(server_socket);

    return 0;
}

void * service_client(void * p_client_socket)
{
    char server_message[256] = "You have reached the server!\n";

    int client_socket = *(int *)p_client_socket;
    free(p_client_socket);
    //send data to client
    send(client_socket, server_message, sizeof(server_message), 0);
    //close socket
    close(client_socket);
}