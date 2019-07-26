//
// Created by niels on 9/06/2019.
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

int main() {

    auto *DbServer = new movie_server::server();        // Create a server
    fork_successful:
    DbServer->listen_for_connection();                  // Listen for a client
    DbServer->accept_client();                          // Accept a client
    pid_t id = fork();                                  // Fork process
    if (id > 0) {                                       // If process if parent, close connection to client and begin listening for more clients
        close(DbServer->clientfd);
        goto fork_successful;
    }

    while(true){
        DbServer->receive_command();                    // Receive message and place it in @param buffer
        if(!DbServer->process_command()) break;         // Process the command received
    }
    delete(DbServer);
    return 0;
}
