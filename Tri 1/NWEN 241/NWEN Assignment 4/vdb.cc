//
// Created by Niels Clayton on 18/05/2019.
//
#include "vdb.hh"
#include <cstdio>
using namespace dbms2;
/*
 * return the number of rows currently used
 */
int VectorDbTable::rows() {
    return rowsUsed;
}

/*
 * Add @param data to the vector
 */
bool VectorDbTable::add(movie& data) {
    table.push_back(data);
    rowsUsed++;
    return true;
}

/*
 * return the movie struct at position @param pos
 */
movie* VectorDbTable::get(unsigned int pos) {
    if((unsigned int)pos > rowsUsed) return nullptr;
    return &table[pos];
}

/*
 *  remove the movie with an id of @param id
 */
bool VectorDbTable::remove(unsigned long identifier) {
    bool found = false;
    for (unsigned long i = 0; i < rowsUsed; i++) {
        if (table[i].id == identifier) found = true;  // if the id, is the one of the album set boolean found to true
        if(found) {
            table.erase(table.begin()+i);
            break;
        }

    }
    if (found) rowsUsed--;  //  if found increment rows
    return found;
}

/*
 * Print the contents of the movie at position @param pos
 */
bool VectorDbTable::show(unsigned int pos)const {
    if ((unsigned int)pos > rowsUsed) return false;
    printf("id: %lu | Title: %s | Year: %hu | Artist: %s\n", table[pos].id, table[pos].title,
           table[pos].year, table[pos].director);
    return true;
}