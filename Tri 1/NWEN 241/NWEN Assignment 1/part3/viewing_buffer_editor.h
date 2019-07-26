/**
 * viewing_buffer_editor.hh
 *
 * Student ID: 300437590
 * Name: Niels Clayton
 */

#ifndef __VIEWING_BUFFER_HH__
#define __VIEWING_BUFFER_HH__

#include <iostream>
#include <cstring>

#define VIEWING_COLS 25
#define VIEWING_ROWS 80

namespace viewing{
    class ViewingBuffer{
    public:

        void setBuffer(char *load, int length, int row, int col);
        void scroll(int lines, int direction);
        bool enableWrap();
        bool numbering();

        ViewingBuffer(){memset(viewing_buffer, 0, VIEWING_COLS*VIEWING_ROWS); }

        //create a viewing buffer
    protected:
        char viewing_buffer[VIEWING_ROWS][VIEWING_COLS];
        // the value of this booleans will be edited by the enableWrap method
        bool wrap;
        bool number;
    };
}

#endif /* __VIEWING_BUFFER_HH__ */
