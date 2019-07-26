//
// Created by Niels Clayton on 16/05/2019.
//

#pragma once
#include "dbms2.hh"
#include <vector>

namespace dbms2{
    /*
    * VectorDbTable class
    * Extends the AbstractDbTable class to implement Vectors
    */
    class VectorDbTable : public AbstractDbTable{
    public:
        int rows() override;
        bool show(unsigned int)const override;
        bool add(struct movie&) override;
        bool remove(unsigned long) override;
        movie* get(unsigned int) override;

    protected:
        std::vector<movie> table;  //Vector of movies to hold the data
        unsigned int rowsUsed;    // Int to keep track of the rows used
    };
}
