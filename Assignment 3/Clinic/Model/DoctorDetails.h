/**
 * Project Untitled
 */


#ifndef _DOCTORDETAILS_H
#define _DOCTORDETAILS_H

class DoctorDetails {
public: 
    
void addDoctor();
    
void getDoctorDetails();
    
void updateSpeciality();
private: 
    string DoctorUID;
    string DoctorName;
    string DeptID;
    string Speciality;
};

#endif //_DOCTORDETAILS_H