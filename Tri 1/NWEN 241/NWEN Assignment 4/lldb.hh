//
// Created by Niels Clayton on 18/05/2019.
//

#pragma once
#include "dbms2.hh"

namespace dbms2{
    /*
     * Link structure used to store a movie struct, and point to the next node structure in the memory.
     */
    struct node{
        struct movie item;
        node* next = nullptr;
    };typedef node linkNode;  //typedef node to be called linkNode

    /*
     * LinkedListDbTable class
     * Extends the AbstractDbTable class to implement a linkedlist data type
     */
    class LinkedListDbTable : public AbstractDbTable{
    public:
        LinkedListDbTable();
        ~LinkedListDbTable() override ;
        int rows() override;
        bool show(unsigned int)const override;
        bool add(struct movie&) override;
        bool remove(unsigned long) override;
        movie* get(unsigned int) override;

    protected:
        //array of links, used to store the table
        linkNode* table;
        unsigned int rowsUsed;

    };
}