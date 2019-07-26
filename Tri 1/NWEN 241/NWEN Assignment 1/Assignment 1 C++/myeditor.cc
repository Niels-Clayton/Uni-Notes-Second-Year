/**
 * myeditor.cc
 * 
 * You must implement the member functions, including constructors, of your class defined in myeditor.hh.
 * Consult the assignment handout for the detailed specifications of each of the member functions.
 * 
 * Student ID: 300437590
 * Name: Niels Clayton
 */
//#include "editor.hh"
#include "myeditor.hh"


using namespace editor;

/* Core 6
 * replace first instance character
 * @param c:                Character to replace
 * @param replacement:      Character to replace with
 * @param offset:           Position from which to begin searching
 */
bool MyEditingBuffer::replace(char c, char replacement, int offset){
    if (offset < 0 || offset > BUFFER_LEN - 1) return false; //If offset is larger or smaller than BUFFER_LEN, return false

    for (int i = offset; i < BUFFER_LEN; i++) {
        if (buffer[i] == c) {  //If char at position i within the buffer == char c, replace char at position i and return true
            buffer[i] = replacement;
            return true;
        }
    }
    return false;
}

/* Completion 7
 * replace first instance character
 * @param c:                Character to replace
 * @param replacement:      Character to replace with
 * @param offset:           Position from which to begin searching
 */

int MyEditingBuffer::replace(std::string str, std::string replacement, int offset) {
    // get string sizes, and their difference in size
    int replaceLength = replacement.length();
    int findLength = str.length();
    int difference = replaceLength - findLength;

    for (int i = offset; i < BUFFER_LEN; i++) {
        for (int j = 0; j < findLength; j++) {
            if(buffer[i+j] != str[j]) break;  // If characters are not equal, stings are different, so break
            if(j == (findLength-1)){   // If strings are of equal length and equal characters, they are a match

                /* If the replacement string is smaller than the string to be replaced */
                if(replaceLength < findLength){
                    for (int k = 0; k < replaceLength; k++) {
                        buffer[i+k] = replacement[k];  //copy replacement into the array, overwriting previous string
                    }
                    for (int l = i + replaceLength ; l < BUFFER_LEN + difference ; l++) {
                        buffer[l] = buffer[l - difference];     // Move characters after the string down by the difference between the two
                    }
                    for (int m = BUFFER_LEN-1; m >= BUFFER_LEN + difference ; m--) {
                        buffer[m] = '\0';   // Fill the end of the buffer with null characters '\0'
                    }
                    return i+(replaceLength-1);
                }

                /* If the replacement string is larger than the string to be replaced */
                else if(replaceLength > findLength){
                    for (int k = BUFFER_LEN - 1; k > i + (findLength-1); k--) {
                        buffer[k] = buffer[k-difference];  // Move all characters in the buffer up by the difference in string length
                    }
                    for (int l = 0; l < replaceLength; l++) {
                        buffer[i + l] = replacement[l];   // Copy over character from replacement string
                    }
                    return i+(replaceLength-1);
                }
                /* If the replacement string is the same size as the string to be replaced */
                else if(replaceLength == findLength){
                    for (int k = 0; k < replaceLength; k++) {
                        buffer[i+k] = replacement[k];   // Copy characters from replacement into the buffer
                    }
                    return i+(replaceLength-1);
                }
                return 0;
            }
        }
    }
    return 0;
}

void MyEditingBuffer::justify(char **viewingBuffer, int rows, int cols) {
}