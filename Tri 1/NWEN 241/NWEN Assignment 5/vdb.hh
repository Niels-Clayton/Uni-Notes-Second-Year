//
// Created by Niels Clayton on 16/05/2019.
//

#pragma once
#include <vector>

#define DEFAULT_STRLEN 100

namespace dbms{

    /* struct movie
    * Contains all the information about a movie
    */
    struct movie {
        char title[DEFAULT_STRLEN];
        char director[DEFAULT_STRLEN];
        short year;
        short oscars_won;
        char origin_country[DEFAULT_STRLEN];
    };

    /*
    * VectorDbTable class, Data structure for storing the Movie data type
    */
    class VectorDbTable{
    public:
        int rows();
        bool add(struct movie&);
        movie* get(unsigned int);
        bool loadCSV(const char* infn);

    protected:
        std::vector<movie> table;  //Vector of movies to hold the data
        unsigned int rowsUsed;    // Int to keep track of the rows used
    };
}
