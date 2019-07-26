//
// Created by Niels Clayton on 18/05/2019.
//
#include "dbms2.hh"
#include <fstream>
#include <cstring>
#include <sstream>

namespace dbms2 {
/*
 * implementation of loadCSV, parses a CSV file and puts data into provided data structure.
 */
    bool AbstractDbTable::loadCSV(const char *infn) {
        int added = 0;                                               //int to keep track of record's added
        std::string read;                                            //String to place the lines of the file into
        movie data;                                                  //Struct to place the file data into

        std::ifstream input;                                         //create ifstream object and open it with @param infn
        input.open(infn, std::ios::in);
        if (!input.is_open()) return false;                           //if ifstream is open, while end of file is not reached
        while (!input.eof()) {
            if (!getline(input, read, ',')) break;                    //read file till ',' is found, and add too data id
            std::stringstream(read) >> data.id;
            if (!getline(input, read, ',')) break;                    //read file till ',' is found, and add too data title
            strncpy(data.title, read.c_str(), read.length()+1);
            if (!getline(input, read, ',')) break;                    //read file till ',' is found, and add too data year
            std::stringstream(read) >> data.year;
            if (!getline(input, read, '\n')) break;                   //read file till ',' is found, and add too data director
            strncpy(data.director, read.c_str(), read.length()+1);
            add(data);
            added++;
        }
        input.close();                                                //close ifstream
        if (added) return true;
        else return false;
    }

    /*
     * Open ofstream, and iterate through data outputting each to the file
     */
    bool AbstractDbTable::saveCSV(const char *outfn) {
        if (rows() == 0) return false;
        std::ofstream output;
        output.open(outfn, std::ios::out);
        if (!output.is_open()) return false;  //check if ofstream is not open
        if(!output.eof()) output.clear();
        for (int i = 0; i < rows(); i++) {
            output << get(i)->id << "," << get(i)->title << "," << get(i)->year << "," << get(i)->director << "\n";
        }
        output.close();
        return true;
    }
}