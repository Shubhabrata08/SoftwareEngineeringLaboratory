/**
 * Project Untitled
 */


#ifndef _PATIENTDETAILS_H
#define _PATIENTDETAILS_H

class PatientDetails {
public: 
    
void getPatientDetails();
    
void updatePatientDetails();
    
void registerNewPatient();
    
void getMedicalAdvisorDetails();
    
void updateMedicalAdvisor();
private: 
    string PatientUID;
    string PatientName;
    string Address;
    string Phone;
    string MedicalAdvisorID;
};

#endif //_PATIENTDETAILS_H