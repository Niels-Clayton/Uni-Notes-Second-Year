/* editor2.hh
 * Student ID: 300437590
 * Name: Niels Clayton
 */

#ifndef ASSIGNMENT_2_C_EDITOR2_HH
#define ASSIGNMENT_2_C_EDITOR2_HH

#include <string>

namespace editor2 {
    class EditorUtilities {
    public:

        // prototype of countWords
        static int countWords(const char* buffer, int size);
        // prototype of searchMultipleNoCase
        static int searchMultipleNoCase(const char* buffer, int size, const std::string string, int* positions, int pos_size);
    };
}

#endif
