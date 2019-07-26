//
// Created by Niels Clayton on 18/05/2019.
//
#include "vdb.hh"
#include <cstdio>
#include <fstream>
#include <cstring>
#include <sstream>

namespace dbms{
/*
 * return the number of rows currently used
 */
    int VectorDbTable::rows() {
        return rowsUsed;
    }

/*
 * Add @param data to the vector
 */
    bool VectorDbTable::add(movie &data) {
        table.push_back(data);
        rowsUsed++;
        return true;
    }

/*
 * return the movie struct at position @param pos
 */
    movie *VectorDbTable::get(unsigned int pos) {
        if ((unsigned int) pos > rowsUsed) return nullptr;
        return &table[pos];
    }

    bool VectorDbTable::loadCSV(const char *infn) {
        int added = 0;                                               //int to keep track of record's added
        std::string read;                                            //String to place the lines of the file into
        movie data;                                                  //Struct to place the file data into

        std::ifstream input;                                         //create ifstream object and open it with @param infn
        input.open(infn, std::ios::in);
        if (!input.is_open()){                                       //if ifstream is open, while end of file is not reached
            printf("Failed to open %s", infn);
            return false;
        }

        while (!input.eof()) {

            if(!getline(input, read, ',')) break;
            strncpy(data.title, read.c_str(), read.length()+1);
            if(!getline(input, read, ',')) break;
            strncpy(data.director, read.c_str(), read.length()+1);
            if(!getline(input, read, ',')) break;
            data.year = atoi(read.c_str());
            if(!getline(input, read, ',')) break;
            data.oscars_won = atoi(read.c_str());
            if(!getline(input, read)) break;
            strncpy(data.origin_country, read.c_str(), read.length()+1);
            add(data);
            added++;
        }
        input.close();                                                //close ifstream
        if (added) return true;
        else return false;
    }
}