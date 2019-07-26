
/* editor2.h
 * Student ID: 300437590
 * Name: Niels Clayton
 */

#ifndef EDITOR2_H
#define EDITOR2_H

// prototype of editor_count_lines
int editor_count_lines(const char* buffer, int size);
// prototype of editor_search_multiple
inline int editor_search_multiple(const char* buffer, int size, const char* string, int* positions, int pos_size);

#endif
