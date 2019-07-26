/* editor2.cc
 * Student ID: 300437590
 * Name: Niels Clayton
 */
#include "editor2.hh"

/*
 * Check if a character is a whitespace character, return true if it is.
 */
bool compare(char c){
    if(c == ' ') return true;
    else if(c == '\n') return true;
    else if(c == '\t') return true;
    else if(c == '\v') return true;
    else if(c == '\f') return true;
    else if(c == '\r') return true;
    else if(c == '\0') return true;
    else return false;
}

/*
 * Check if two characters are the same ignoring case.
 */
bool same_character(char a, char b){
    char check;
    if(a < 97) check = (a+32); //if a is lower case, convert to uppercase
    else check = (a-32); //if a is upper case, convert to lowercase

    if(a == b || check == b) return true;
    else return false;
}

/* Task 10
 * Count the number of words within the buffer
 * @param buffer:   Editing buffer to count lines in
 * @param size:     size of editing buffer
 */
int editor2::EditorUtilities::countWords(const char* buffer, int size){
    int wordCount = 0; //total number of words
    for(int i = 0; i < size; i++){ //if current character is not a whitespace character, but next character is, increase word count
        if(!(compare(*(buffer+i))) && (compare(*(buffer+i+1)))) wordCount++;
    }
    return wordCount;
}

/* Task 11
 * Search for multiple occurrences of a C string within the buffer, non case-sensitive
 * @param buffer:       Editing buffer to count lines in
 * @param size:         size of editing buffer
 * @param search:       String to search for in buffer
 * @param positions:    Array of positions
 * @param pos_size:     size of positions array
 */

int editor2::EditorUtilities::searchMultipleNoCase(const char* buffer, int size, const std::string search, int* positions, int pos_size){
    const char* string = search.c_str(); //convert std::string to a c_string
    int count = 0; //number of occurrences of @string
    int string_pos = 0; //position within the string
    for (int i = 0; i < size; i++) {
        while(same_character(*(buffer+i),*string)){ //If the first character of the string and current character are the same

            if(*(string+string_pos) == '\0'){//if end of string is reached, increase count, reset position, and break from while loop
                *(positions+count) = i;
                count++;
                string_pos = 0;
                break;
            }
            if(!same_character(*(buffer+string_pos+i),*(string+string_pos))){ // if characters aren't the same, break from while loop
                string_pos = 0;
                break;
            }
            string_pos++;
        }
        if(count >= pos_size) return count;  // if maximum amount of occurrences is reached, return
    }
    return count;
}
