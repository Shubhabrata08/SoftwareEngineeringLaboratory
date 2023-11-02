/**
 * Project Untitled
 */


#ifndef _BOOK_H
#define _BOOK_H

class Book {
public: 
    
void addBook();
    
void getBookDetails();
    
void updateQuantity();
private: 
    int ISBN;
    string Title;
    string Author;
    string Genre;
    int Quantity;
};

#endif //_BOOK_H