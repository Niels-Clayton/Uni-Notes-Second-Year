/**
 * myeditor.hh
 * 
 * You must define a class that extends the EditingBuffer class in this file.
 * Consult the assignment handout for more information.
 * 
 * Student ID: 300437590
 * Name: Niels Clayton
 */
#pragma once

#include "editor.hh"

/*
 * Extend class EditingBuffer with access mode public, inside of the namespace editor
 */
namespace editor {
    class MyEditingBuffer : public EditingBuffer {
    public:
        // Implements member functions
        bool replace(char c, char replacement, int offset);
        int replace(std::string str, std::string replacement, int offset);
        void justify(char **viewingBuffer, int rows, int cols);


        //Construct the extended class using the base class constructor
        MyEditingBuffer() : EditingBuffer() {}

    };
}
