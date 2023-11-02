/**
 * Project Untitled
 */


#ifndef _TRANSACTION_H
#define _TRANSACTION_H

class Transaction {
public: 
    
void addTransactionDetails();
    
void getTransactionDetails();
    
void updateTransactionDetails();
    
void issueBook();
    
void returnBook();
private: 
    string TransactionID;
    int BookISBN;
    string UserID;
    string DateBorrowed;
    string DueDate;
    string DateReturned;
};

#endif //_TRANSACTION_H