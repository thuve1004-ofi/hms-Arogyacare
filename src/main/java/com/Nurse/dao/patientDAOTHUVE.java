package com.Nurse.dao;


import com.Nurse.bean.patientTHUVE;

import Nurse.DBConnectionTHUVE;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class patientDAOTHUVE {
    private static Connection connection;

    // Constructor to initialize DB connection
    public patientDAOTHUVE() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            patientDAOTHUVE.connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/arogyacarehms", "root", "1234");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Method to add a patient
    public static int addPatient(patientTHUVE patient) {
        int status = 0;
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO inPatients (PatientID, FirstName, LastName, DateOfBirth, Age, Gender, ContactNumber, Email, Address, City, EmergencyContactName, EmergencyContactNumber, PastMedicalHistory,ReasonOFAdd,Allergies) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, patient.getPatientID());
            ps.setString(2, patient.getFirstName());
            ps.setString(3, patient.getLastName());
            ps.setString(4, patient.getDateOfBirth());
            ps.setInt(5, patient.getAge());
            ps.setString(6, patient.getGender());
            ps.setString(7, patient.getContactNumber());
            ps.setString(8, patient.getEmail());
            ps.setString(9, patient.getAddress());
            ps.setString(10, patient.getCity());
            ps.setString(11, patient.getEmergencyContactName());
            ps.setString(12, patient.getEmergencyContactNumber());
            ps.setString(13, patient.getPastMedicalHistory());

            ps.setString(14, patient.getReasonOfAdd());
            ps.setString(15, patient.getAllergies());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    // Method to update a patient
    public static int updatePatient(patientTHUVE patient) {
        int status = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(
                "UPDATE inPatients SET FirstName=?, LastName=?, DateOfBirth=?, Age=?, Gender=?, " +
                "ContactNumber=?, Email=?, Address=?, City=?, EmergencyContactName=?, " +
                "EmergencyContactNumber=?, PastMedicalHistory=?, ReasonOFAdd=?, Allergies=? WHERE PatientID=?"
            );

            ps.setString(1, patient.getFirstName());
            ps.setString(2, patient.getLastName());
            ps.setString(3, patient.getDateOfBirth());
            ps.setInt(4, patient.getAge());
            ps.setString(5, patient.getGender());
            ps.setString(6, patient.getContactNumber());
            ps.setString(7, patient.getEmail());
            ps.setString(8, patient.getAddress());
            ps.setString(9, patient.getCity());
            ps.setString(10, patient.getEmergencyContactName());
            ps.setString(11, patient.getEmergencyContactNumber());
            ps.setString(12, patient.getPastMedicalHistory());
            ps.setString(13, patient.getReasonOfAdd());
            ps.setString(14, patient.getAllergies());
            ps.setString(15, patient.getPatientID());

            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    // Method to delete a patient
    public static int deletePatient(patientTHUVE patient) {
        int status = 0;
        try {
            PreparedStatement ps = connection.prepareStatement("DELETE FROM inPatients WHERE PatientID=?");
            ps.setString(1, patient.getPatientID());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    // Method to get a patient by ID
    public static patientTHUVE getRecordById(String PatientID) {
        patientTHUVE p = null;
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM inPatients WHERE PatientID=?");
            ps.setString(1, PatientID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                p = new patientTHUVE();
                p.setFirstName(rs.getString("FirstName"));
                p.setLastName(rs.getString("LastName"));
                p.setDateOfBirth(rs.getString("DateOfBirth"));
                p.setAge(rs.getInt("Age"));
                p.setGender(rs.getString("Gender"));
                p.setContactNumber(rs.getString("ContactNumber"));
                p.setEmail(rs.getString("Email"));
                p.setAddress(rs.getString("Address"));
                p.setCity(rs.getString("City"));
                p.setEmergencyContactName(rs.getString("EmergencyContactName"));
                p.setEmergencyContactNumber(rs.getString("EmergencyContactNumber"));
                p.setPastMedicalHistory(rs.getString("PastMedicalHistory"));
                p.setAllergies(rs.getString("ReasonOFAdd"));
                p.setAllergies(rs.getString("DateOfRegistration"));
                p.setAllergies(rs.getString("Allergies"));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    // Method to get all patients
    public static List<patientTHUVE> getAllPatients() {
        List<patientTHUVE> patients = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM inPatients ORDER BY RecordNumber ASC;");
            while (rs.next()) {
                patientTHUVE p = new patientTHUVE();
                p.setRecordNumber(rs.getInt("RecordNumber"));
                p.setPatientID(rs.getString("PatientID"));
                p.setFirstName(rs.getString("FirstName"));
                p.setLastName(rs.getString("LastName"));
                p.setDateOfBirth(rs.getString("DateOfBirth"));
                p.setAge(rs.getInt("Age"));
                p.setGender(rs.getString("Gender"));
                p.setContactNumber(rs.getString("ContactNumber"));
                p.setEmail(rs.getString("Email"));
                p.setAddress(rs.getString("Address"));
                p.setCity(rs.getString("City"));
                p.setEmergencyContactName(rs.getString("EmergencyContactName"));
                p.setEmergencyContactNumber(rs.getString("EmergencyContactNumber"));
                p.setPastMedicalHistory(rs.getString("PastMedicalHistory"));
                p.setReasonOfAdd(rs.getString("ReasonOFAdd"));
                p.setDateOfRegistration(rs.getString("DateOfRegistration"));
                p.setAllergies(rs.getString("Allergies"));
                patients.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return patients;
    }

// Method to get all out patients
public static List<patientTHUVE> getAlloutPatients() {
    List<patientTHUVE> patients = new ArrayList<>();
    try {
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT id,FName,LName,email,username FROM outPatients ORDER BY id ASC;");
       
        
        while (rs.next()) {
        	 
            patientTHUVE p = new patientTHUVE();
            p.setId(rs.getInt("id"));
            p.setFName(rs.getString("FName"));
            p.setLName(rs.getString("LName"));
            p.setOutEmail(rs.getString("email"));
            p.setUsername(rs.getString("username"));
            
            patients.add(p);
            System.out.println("Exe");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return patients;
}



}