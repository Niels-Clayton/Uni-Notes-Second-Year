/*
 * Student ID: 300437590
 * Name: Niels Clayton
 */
#include "dbms.hh"
#include <stdlib.h>
#include <cstdio>

using namespace dbms;

/*
 * Constructor for DbTable class:
 * Allocates 5 albums of memory to the array
 * sets @param usedRows to 0, @param totalRows to 5
 */
DbTable::DbTable() {
    table = (album *) malloc(5 * sizeof(album));  // allocates memory for 5 album structures
    totalRows = 5;
    rowsUsed = 0;
}

/*
 * Destructor for DbTable class
 * Deallocate's the memory assigned to @param table
 */
DbTable::~DbTable() {
    free(table);
}

/*
 * Show the contents of the table at given position @param pos
 */
bool DbTable::show(unsigned int pos) {
    if (pos > rowsUsed) return false;
    printf("id: %lu | Title: %s | Year: %hu | Artist: %s\n", (table + pos)->id, (table + pos)->title,
           (table + pos)->year, (table + pos)->artist);
    return true;
}

/*
 * Add @param data to the end of the existing @param table array.
 * If @param rowsUsed is equal to @param totalRows, allocate more memory to the array, then add @param data
 * Return true of addition was successful.
 */
bool DbTable::add(album &data) {
    if (rowsUsed < totalRows) { // if there is room in the array, add the album in the next available position
        *(table + rowsUsed++) = data;
        return true;
    }
    else if (rowsUsed == totalRows) {  // is all positions in the array are full, increase the size of the array
        album* tableTemp = (album *) realloc(table, (rowsUsed + 5) * sizeof(album));
        if (tableTemp != nullptr) {
            table = tableTemp;
            (totalRows) += 5;
            add(data); //add data to array once it is resize'd
        }
    }
    return false;
}

/*
 * Remove the album containing @param identifier
 * If album is not found, return false
 * If album is removed and memory goes below threshold of an addition 5 albums, reallocate memory
 * If successful removal, return true
 */
bool DbTable::remove(unsigned long identifier) {
    bool found = false;
    for (unsigned long i = 0; i < rowsUsed; i++) {
        if ((table + i)->id == identifier) found = true;  //if the id, is the one of the album set boolean found to true
        if (found) *(table + i) = *(table + i + 1);  // if the album has been found, move every other album down a place
    }
    if (found) rowsUsed--;  //  if found increment rows
    if (totalRows - rowsUsed >= 5 && rowsUsed > 0) {  // if there are more than 5 empty spaces in the album, decrease the memory size
        album* tableTemp = (album *) realloc(table, (totalRows - 5) * sizeof(album));
        if (tableTemp == nullptr) return false;
        table = tableTemp;
        totalRows -= 5;
    }
    return found;
}