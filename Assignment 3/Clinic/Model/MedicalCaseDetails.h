/**
 * Project Untitled
 */


#ifndef _MEDICALCASEDETAILS_H
#define _MEDICALCASEDETAILS_H

class MedicalCaseDetails {
public: 
    
void createNewCase();
    
void getCaseDetails();
    
void closePendingCase();
    
void getPatientHistory();
    
void getOutPatientDetails();
private: 
    string CaseID;
    string PatientUID;
    string DoctorUID;
    string CaseOpeningDate;
    string CaseClosingDate;
    bool isOutPatientVisit;
};

#endif //_MEDICALCASEDETAILS_H