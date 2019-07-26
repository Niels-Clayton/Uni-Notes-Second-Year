//
// Created by Niels Clayton on 18/05/2019.
//
#include "lldb.hh"
#include <stdlib.h>
#include <cstdio>

namespace dbms2{
    /* Allocates memory for one Node of the linked list within @param table
     * Initialized @param rowsUsed to 0
     */
    LinkedListDbTable::LinkedListDbTable(){
        table = (linkNode*)malloc(sizeof(linkNode));
        rowsUsed = 0;
    }

    /*
     *  Free memory allocated to table by iterating through each element and removing it.
     */
    LinkedListDbTable::~LinkedListDbTable(){
        linkNode* current = table;
        linkNode* previous = nullptr;

        for (unsigned int i = 0; i < rowsUsed; i++) {
            if(previous != nullptr) free(previous);
            if(current->next == nullptr){
                free(current);
                break;
            }
            previous = current;
            current = current->next;
        }
    }

    /*
     *  Return the value of @param rowsUsed
     */
    int LinkedListDbTable::rows(){
        return rowsUsed;
    }

    /*
     * Iterate through the data structure @param pos times,
     * Display the content within the node at @param pos
     */
    bool LinkedListDbTable::show(unsigned int pos)const{
        if (pos > rowsUsed) return false;
        linkNode* currentNode = table;
        for (unsigned int i = 0; i < pos; i++) {  // Iterate through data will the @param pos position is reached
            currentNode = currentNode->next;
        }

        printf("id: %lu | Title: %s | Year: %hu | Director: %s\n", (currentNode)->item.id, (currentNode)->item.title,
               (currentNode)->item.year, (currentNode)->item.director);
        return true;
    }

    /*
     *  Place @param data in the next position within the LinkedList.
     *  Allocate a new block of memory for the data, then iterate through the nodes till the end
     *  of the list it reached. Place the new linkNode at the end of the list, pointing to it with
     *  the previous node.
     */
    bool LinkedListDbTable::add(struct movie& data){
        if(rowsUsed == 0 && table!= nullptr) {  //If @param data is the first item in the list
            table->item = data;
            rowsUsed++;
            return true;
        }
        auto nextNode = (linkNode*)malloc(sizeof(linkNode)); // Allocate memory for the next node
        if(nextNode != nullptr) {
            *nextNode = {data, nullptr};  // Insert @param data into the new node
            linkNode *currentNode = table;
            for (unsigned int i = 0; i < rowsUsed - 1; i++) {
                currentNode = currentNode->next;
            }
            currentNode->next = nextNode;  // Add next node to the end of the list
            rowsUsed++;
            return true;
        }
        return false;
    }

    /*
     *  Locate the linkNode containing the movie with id @param id
     *  Set the previous linkNode's @param next field to currentNode's next
     *  Free memory location of current node.
     */
    bool LinkedListDbTable::remove(unsigned long id){

        bool found = false;
        linkNode* currentNode = table;
        linkNode* previousNode = nullptr;

        for (unsigned int i = 0; i < rowsUsed; i++) {
            if(currentNode->item.id == id){
                found = true;
                break;
            }
            previousNode = currentNode;
            currentNode = currentNode->next;
        }
        if(found){
            if(previousNode == nullptr){
                table = currentNode->next;
                free(currentNode);
                rowsUsed--;
                return true;
            }
            else{
                previousNode->next = currentNode->next;
                free(currentNode);
                rowsUsed--;
                return true;
            }
        }
        return found;
    }

    /*
     *  Iterate through the list till position @param Pos
     *  Return a reference to the data stored within that node
     */
    movie* LinkedListDbTable::get(unsigned int pos){
        if(pos> rowsUsed) return nullptr;
        linkNode* currentNode = table;
        for (unsigned int i = 0; i < pos; i++) {//iterate through linked list
            currentNode = currentNode->next;
        }
        return &currentNode->item;
    }
}

