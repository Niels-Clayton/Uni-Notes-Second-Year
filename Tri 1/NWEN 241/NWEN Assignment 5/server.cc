//
// Created by niels on 8/06/2019.
//
#include <arpa/inet.h>
#include <netdb.h>
#include <sys/socket.h>
#include <iostream>
#include <sys/types.h>
#include <unistd.h>
#include <sstream>
#include <cstring>

#include "server.hh"

namespace movie_server {

    /*
     * Construct a server, load the data from a .csv into the server
     * set up the server address, open a socket on the given port, and bind it.
     */
    server::server() {

        data = new dbms::VectorDbTable();
        data->loadCSV("scifi.csv");

        serv_addr.sin_family = AF_INET;
        serv_addr.sin_addr.s_addr = INADDR_ANY;
        serv_addr.sin_port = htons(SERVER_PORT);
        open_socket();
        bind_socket();
    }

    /*
     * Delete the data contained by the server
     * Close the socket and exit
     */
    server::~server() {
        delete(data);
        close(sockfd);
        exit(0);
    }

    /*
     * Open a socket and store its ID in @param sockfd
     */
    void server::open_socket() {
        sockfd = socket(AF_INET, SOCK_STREAM, 0);
        if (sockfd < 0) {
            std::cerr << "Error while creating socket" << std::endl;
            exit(1);
        }
    }

    /*
     * Bind socket identified by @param sockfd to the server port @param SERVER_PORT
     */
    void server::bind_socket() {
        if (bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) {
            std::cerr << "Error while binding socket" << std::endl;
            // if some error occurs, close socket and exit
            close(sockfd);
            exit(1);
        }
    }

    /*
     * Listen for a connection to the socket
     */
    void server::listen_for_connection() {
        // Listen for connections with the listen() system call
        if (listen(sockfd, SOMAXCONN) < 0) {
            std::cerr << "Error while Listening on socket" << std::endl;
            // if some error occurs, close socket and exit
            close(sockfd);
            exit(1);
        }
    }

    /*
     * Accept a connection to the socket, and store the clients ID in @param clientfd
     */
    void server::accept_client() {
        // structure large enough to hold client's address
        socklen_t client_addr_size = sizeof(client_addr);
        /* Accept a connection with the accept() system call */
        clientfd = accept(sockfd, (sockaddr*) &client_addr, &client_addr_size);
        if (clientfd < 0) {
            std::cerr << "Error while Accepting on socket" << std::endl;
            exit(1);
        }
        else if(clientfd > 0){
            send_message("HELLO\n");
        }
    }

    /*
     * Receive a command from the client, and store it in @param buffer
     */
    void server::receive_command() {
        /* reset the buffer */
        memset(buffer, '\0', BUFFER_LENGTH);

        /* Receive message and place it in buffer */
        int receive = recv(clientfd, buffer, BUFFER_LENGTH, 0);

        if (receive < 0) {
            // if some error occurs, close socket and exit
            std::cerr << "Error while reading from socket" << std::endl;
            exit(1);
        }
        std::cout << "Message received: " << buffer << std::endl;
    }

    /*
     * Process the command that is currently stored within @param buffer
     */
    bool server::process_command(){
        if ((strcasecmp(buffer, "GET MY PARENTS") == 0) || (strcasecmp(buffer, "GET MY PARENTS\n") == 0)) {
            send_message("Your parents dont want you");
            std::cout << "parents not found" << std::endl;
            close(clientfd); //close the client connection but keep server socket open
            return false;
        }

        if(strlen(buffer) > 4){ //check to see whether or not the input is longer than 'BYE' or 'GET'

            char substring[4];
            memcpy(substring, &buffer[0], 3);
            substring[3] = '\0';

            if((strcasecmp(substring, "GET\0") == 0 || strcasecmp(substring, "GET") == 0) && buffer[3] == ' '){  //Check for "get", and check that there is a space after get
                char digits[20];
                memset(digits, '\0', 20);
                memcpy(digits, &buffer[4], 20);

                int index = -1;
                if(isdigit(digits[0])) {
                    std::stringstream(digits) >> index; //If there was at least 1 number, set index equal to it
                }
                if (index >= 0 && index < data->rows()){ //Send the record if within bounds
                    send_record(index);
                }
                else{ //throw error as input was invalid or wrongly formatted
                    send_message("ERROR\n");
                }
            }
            else{
                send_message("ERROR\n");
            }
        }
            /* Deals with 'BYE' case */
        else if ((strcasecmp(buffer, "BYE") == 0) || (strcasecmp(buffer, "BYE\n") == 0)) {
            std::cout << "Closing connection with client" << std::endl;
            close(clientfd); //close the client connection but keep server socket open
            return false;
        }
            /* Deals with the 'GET' case that prints all data stored by server */
        else if ((strcasecmp(buffer, "GET") == 0) || (strcasecmp(buffer, "GET\n") == 0)) {
            for (int i = 0; i < data->rows(); i++) {
                send_record(i);
            }
        }
        else send_message("ERROR\n");  /* Unknown input, therefore send error */
        return true;
    }

    /*
     * Send message @param to_print to the client
     */
    bool server::send_message(std::string to_print){
        char* message = &to_print[0]; //convert string to char*
        int sent = send(clientfd, message, strlen(message), 0);

        if (sent < 0) {
            // if some error occurs, close socket and exit
            std::cerr << "Error while writing to socket" << std::endl;
            exit(1);
        }
        return true;
    }

    /*
     * Convert the fields contained in the movie data structure to a string that can be
     * sent to the client.
     */
    bool server::send_record(int i) {
        std::stringstream send_server;
        send_server << data->get(i)->title << ", " << data->get(i)->director << ", " << data->get(i)->year << ", " << data->get(i)->oscars_won << ", " << data->get(i)->origin_country << std::endl;
        std::string out = send_server.str();
        send_message(out);
        return true;
    }
}