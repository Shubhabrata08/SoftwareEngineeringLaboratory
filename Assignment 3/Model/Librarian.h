/**
 * Project Untitled
 */


#ifndef _LIBRARIAN_H
#define _LIBRARIAN_H

#include "User.h"


class Librarian: public User {
public: 
    
void getLibrarianDetails();
private: 
    string ContactNumber;
};

#endif //_LIBRARIAN_H