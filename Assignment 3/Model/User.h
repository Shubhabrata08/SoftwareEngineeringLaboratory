/**
 * Project Untitled
 */


#ifndef _USER_H
#define _USER_H

class User {
public: 
    
void addUser();
    
void removeUser();
    
void getUserProfile();
protected: 
    string ID;
    string Name;
    string Email;
    string Address;
};

#endif //_USER_H