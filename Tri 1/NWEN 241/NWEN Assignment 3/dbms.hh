/*
 * Student ID: 300437590
 * Name: Niels Clayton
 */
#pragma once

namespace dbms {

    struct album {
        unsigned long id;
        char title[100];
        unsigned short year;
        char artist[100];
    };

    class DbTable {
    public:
        DbTable();

        ~DbTable();

        inline unsigned int rows() { return rowsUsed; }

        inline unsigned int allocated() { return totalRows; }

        bool show(unsigned int);

        bool add(album &);

        bool remove(unsigned long);

    private:
        album *table;
        unsigned int totalRows, rowsUsed;
    };
}

