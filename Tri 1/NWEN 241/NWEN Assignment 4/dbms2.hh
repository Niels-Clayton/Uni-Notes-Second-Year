//
// Created by Niels Clayton on 18/05/2019.
//

#pragma once

namespace dbms2{
	
    /* struct movie
     * Contains all the information about a movie
     */
    struct movie{
        unsigned long id = 0;
        char title[50] = "";
        unsigned short year = 0;
        char director[50] = "";
    };

    /* AbstractDbTable class
     * Can be implemented to emulate complex data structures within the standard template library
     */
	 
    class AbstractDbTable{
    public:
        virtual ~AbstractDbTable() = default;
        virtual int rows() = 0;
        virtual bool show(unsigned int) const= 0;
        virtual bool add(struct movie&) = 0;
        virtual bool remove(unsigned long) = 0;
        virtual movie* get(unsigned int) = 0;
        bool loadCSV(const char* infn);
        bool saveCSV(const char* outfn);
    };
}
