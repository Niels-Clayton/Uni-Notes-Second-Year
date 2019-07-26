/* editor2.c
 * Student ID: 300437590
 * Name: Niels Clayton
 */

#include "editor2.h"

/* Task 7
 * Count the number of lines within the buffer
 * @param buffer:   Editing buffer to count lines in
 * @param size:     size of editing buffer
 */
int editor_count_lines(const char* buffer, int size){
    int count = 0;  // count of number of lines
    for (int i = 0; i < size; i++) { //if the character is the new line character, increase count
        if(*(buffer+i) == '\n') count++;
    }
    return count;
}

/* Task 8
 * Search for multiple occurrences of a C string within the buffer
 * @param buffer:       Editing buffer to count lines in
 * @param size:         size of editing buffer
 * @param string:       String to search for in buffer
 * @param positions:    Array of positions
 * @param pos_size:     size of positions array
 */

int editor_search_multiple(const char* buffer, int size, const char* string, int* positions, int pos_size){
    int count = 0; //number of occurrences of @string
    int string_pos = 0; //position within the string
    for (int i = 0; i < size; i++) {
        while(*(buffer+i) == *string){  //If the first character of the string and current character are the same

            if(*(string+string_pos) == '\0'){  //if end of string is reached, increase count, reset position, and break from while loop
                *(positions+count) = i;
                count++;
                string_pos = 0;
                break;
            }
            if(*(buffer+string_pos+i) != *(string+string_pos)){ // if characters aren't the same, break from while loop
                string_pos = 0;
                break;
            }
            string_pos++;
        }
        if(count >= pos_size) return count; // if maximum amount of occurrences is reached, return
    }
    return count;
}
