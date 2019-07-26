//
// Created by Niels Clayton on 21/05/2019.
//
#include "lldb.hh"
#include <iostream>
#include <cstring>

using namespace dbms2;

int main(int argc, char* argv[]){
    if(argc == 0) return 0;       //If there are no arguments, return

    //Create an instance of a linked list
    LinkedListDbTable* table = new LinkedListDbTable;

    //check if the csv file as loaded
    if(!table->loadCSV("default.csv")){
       std::cout<<"Failed to load CSV file"<<std::endl;
       delete(table);
       return 0;
    }

    //If argument 2 is "showall", show every row in the data structure
    if(strncmp(argv[1], "showall", 7) == 0){
        for (int i = 0; i < table->rows(); i++) {
            table->show(i);
        }
    }

    //If argument 2 is "show", there is more than 2 arguments, and argument 3 is less than @param rows(), show position
    else if(strncmp(argv[1], "show", 4) == 0){
        if(argc > 2){
            int position = atoi(argv[2]);  //convert from string to int
            if(position > table->rows()){
                std::cout<<"Error: Row "<<position<<" does not exist."<<std::endl;
                return 0;
            }
            table->show(position);
        }
        else{
            std::cout<<"No second argument given."<<std::endl;
            return 0;
        }
    }
    delete(table);
    return 0;
}
