//
// Created by niels on 8/06/2019.
//
#pragma once

#include "vdb.hh"
#include <sys/socket.h>

using namespace dbms;

namespace movie_server {
#define SERVER_PORT 12345
#define BUFFER_LENGTH 100

    class server {
    public:
        /* Constructor and Destructor */
        server();
        ~server();

        /* ID of port and client */
        int sockfd, clientfd;

        /* Methods to create socket and connect to a client */
        void open_socket();
        void bind_socket();
        void listen_for_connection();
        void accept_client();

        /* Methods to send and receive from client */
        void receive_command();
        bool process_command();
        bool send_record(int);
        bool send_message(std::string);

    private:
        /* Vector table data structure for holding data */
        VectorDbTable* data;
        /* Buffer for holding response from the client */
        char buffer[BUFFER_LENGTH];
        /* Server and Client address information */
        sockaddr_in serv_addr, client_addr;
    };
}