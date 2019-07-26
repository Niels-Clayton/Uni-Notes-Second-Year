/**
 * editor.c
 * 
 * You must implement the functions in editor.h in this file.
 * Consult the assignment handout for the detailed specifications of each of the functions.
 * 
 * Student ID: 300437590
 * Name: Niels Clayton
 */
#include "editor.h"
#include <stdio.h>
#include <string.h>

/* Core 1
 * Inster character into the editing buffer at given position
 * @param editing_buffer:   Array to inster character
 * @param to_insert:        Character to insert
 * @param pos:              Position to insert
 */

int editor_insert_char(char *editing_buffer, char to_insert, int pos){
    if(pos < 0 || pos > EDITING_BUFLEN) return 0;  // Check if @param pos is within the editing buffer
    for (int i = EDITING_BUFLEN-1; i >= pos; i--) {
        editing_buffer[i+1] = editing_buffer[i];  // Move each character up a position till @param pos is reached
    }
    editing_buffer[pos] = to_insert; // Insert the character into the buffer
    return 1;
}

/* Core 2
 * Delete the first instance of a character from editing buffer, after a given position
 * @param editing_buffer:   Array to delete character
 * @param to_delete:        Character to delete
 * @param offset:           Offset from which to begin searching
 */

int editor_delete_char(char *editing_buffer, char to_delete, int offset){
    if(offset < 0 || offset > EDITING_BUFLEN) return 0; // Check if @param offset is within the editing buffer
    for (int i = offset; i < EDITING_BUFLEN; i++) {
        if(editing_buffer[i] == to_delete){  // If current character is the one to delete, remove it from buffer
            for (int j = i; j < EDITING_BUFLEN-1 ; j++) {
                editing_buffer[j] = editing_buffer[j+1]; // Shift every character past deletion point down
            }
            editing_buffer[EDITING_BUFLEN] = '\0';
            return 1;
        }
    }
    return 0;
}

/* Completion 1
* Replace a string in the buffer with a provided string
* @param editing_buffer:    Array to replace string in
* @param str:               String to be replaced
* @param replacment:        Replacment Sring
* @param offset:            Offset from which to begin searching
*/

int editor_replace_str(char *editing_buffer, const char *str, const char *replacement, int offset){
    // get string sizes, and their difference in size
    int replaceLength = strlen(replacement);
    int findLength = strlen(str);
    int difference = replaceLength - findLength;

    if(offset < 0 || offset > EDITING_BUFLEN) return 0; // Check if @param offset is within the editing buffer
    for (int i = offset; i < EDITING_BUFLEN; i++) {
        for (int j = 0; j < findLength; j++) {
            if(editing_buffer[i+j] != str[j]) break; // If characters are not equal, stings are different, so break
            if(j == (findLength-1)){  // If strings are of equal length and equal characters, they are a match
                /* If the replacement string is smaller than the string to be replaced */
                if(replaceLength < findLength){
                    for (int k = 0; k < replaceLength; k++) {
                        editing_buffer[i+k] = replacement[k];  //copy replacment into the array, overwriting previous string
                    }
                    for (int l = i + replaceLength ; l < EDITING_BUFLEN + difference ; l++) {
                        editing_buffer[l] = editing_buffer[l - difference];  // Move characters after the string down by the difference between the two
                    }
                    for (int m = EDITING_BUFLEN-1; m >= EDITING_BUFLEN + difference ; m--) {
                        editing_buffer[m] = '\0'; // Fill the end of the buffer with null characters '\0'
                    }
                    return i+(replaceLength-1);
                }
                /* If the replacment string is larger than the string to be replaced */
                else if(replaceLength > findLength){
                    for (int k = EDITING_BUFLEN - 1; k > i + (findLength-1); k--) {
                        editing_buffer[k] = editing_buffer[k-difference];  // Move all characters in the buffer up by the difference in string length
                    }
                    for (int l = 0; l < replaceLength; l++) {
                        editing_buffer[i + l] = replacement[l]; // Coppy over character from replacment string
                    }
                    if(editing_buffer[EDITING_BUFLEN-1] != '\0'){
                        editing_buffer[EDITING_BUFLEN-1] = '\0';
                        return EDITING_BUFLEN-1;
                    }
                    return i+(replaceLength-1);
                }
                /* If the replacment string is the same size as the string to be replaced */
                else if(replaceLength == findLength){
                    for (int k = 0; k < replaceLength; k++) {
                        editing_buffer[i+k] = replacement[k];  // Copy characters from replacment into the buffer
                    }
                    return i+(replaceLength-1);
                }
                return 0;
            }
        }
    }
}

/* Challenge 1
* Replace a string in the buffer with a provided string
* @param viewing_buffer:    2D array for displaying
* @param editing_buffer:    Array to move into the viewing buffer
* @param wrap:              Controls if stings will wrap to the next line or be cut
*/

void editor_view(char **viewing_buffer, const char *editing_buffer, int wrap){
    // Reform the 2D array from the char**
    char *buffer[VIEWING_ROWS];
    for (int i = 0; i < VIEWING_ROWS; i++) {
        buffer[i] = (char*)viewing_buffer + VIEWING_COLS*i;
    }
    int copy = 0;  // Keep track of the character in @param editing_buffer being copied
    for (int i = 0; i < VIEWING_ROWS ; i++) {
        for (int j = 0; j < VIEWING_COLS; j++) {
            char toCopy = editing_buffer[copy];  // Char to be coppied into the viewing buffer
            if(toCopy == '\n' || '\0'){  // If the character is \n or \0, fill the rest of the row columns with \0
                for (int k = j; k < VIEWING_COLS; k++) {
                    buffer[i][k] = '\0';
                }
                copy++;  // Increas the charater
                break;
            }
            if(toCopy == '\0'){
                for (int k = j; k < VIEWING_COLS; k++) {
                    buffer[i][k] = '\0';
                }
                break;
            }
            else if(j == VIEWING_COLS-1){  // If end of the columns, fill last character with \0
                buffer[i][j] = '\0';
            }
            else if(wrap !=0){  //  If wraping text, copy characters as normal
                buffer[i][j] = toCopy;
                copy++;   // Increas the charater
            }
            else{  // If not wrapping characters, when characters go beyond the end of the colunms, remove characters till \n is reached
                if(j == VIEWING_COLS-2){
                    buffer[i][j] = editing_buffer[copy];
                    buffer[i][j+1] = '\0';
                    while(editing_buffer[copy] != '\n' || editing_buffer[copy] != '\0'){
                        copy++;
                    }
                    copy++;   // Increas the charater
                    break;
                }
                else{
                    buffer[i][j] = toCopy;
                    copy++;   // Increas the charater
                }
            }
        }
    }
}


