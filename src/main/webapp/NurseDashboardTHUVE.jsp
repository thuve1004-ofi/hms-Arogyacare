<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.Nurse.dao.patientDAOTHUVE"%>
<%@ page import="com.Nurse.bean.patientTHUVE"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>In-Patient Details</title>
<link rel="stylesheet" type="text/css" href=".\css_files\NurseDashboardcssTHUVE.css">


    <link rel="icon" type="image/x-icon" href="favicon.png">
    
<script src="./js_files/NurseDashboardjsTHUVE.js"></script>

<script>
    const today = new Date().toISOString().split('T')[0];
    document.getElementById('dateOfBirth').setAttribute('max', today);
</script>

</head>
<body id="bodysegND">
    <h1>In-Patient Details</h1>

    <!-- Display Profile Information -->
    <div class="profile">
        <div class="profile-grid">
        <img src="./ImageSourceFile/User_Icon.png" alt="User Icon" width="100" height="100"><br>
        <h2 class="loggeduser">Logged in user</h2>
            <div class="profile-item">
                <div class="profile-label">Nurse ID:</div>
                <div><c:out value="${nid}" /></div>
            </div>
            <div class="profile-item">
                <div class="profile-label">First Name:</div>
                <div><c:out value="${fname}" /></div>
            </div>
            <div class="profile-item">
                <div class="profile-label">Last Name:</div>
                <div><c:out value="${lname}" /></div>
            </div>
            <div class="profile-item">
                <div class="profile-label">Phone Number:</div>
                <div><c:out value="${mobile}" /></div>
            </div>
        </div>
        <div class="buttons">
            <a class="out" href="signoutTHUVE.jsp">Sign Out</a>
        </div>
    </div>

    <div class="search-container">
        <input type="text" id="searchInput" placeholder="Enter patient name to search..." onkeyup="searchPatients()">
    </div>
    <button onclick="openAddPatientModal()" class="add-patient-button">Add Patient</button><br><br>

    <!-- Add Patient Modal -->
    <div id="addPatientModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeAddPatientModal()">&times;</span>
            <h2>Add Patient</h2>
            <form action="AddPatientTHUVE.jsp" method="post">
                <input type="text" name="patientID" placeholder="Patient ID" required>
                <input type="text" name="firstName" placeholder="First Name" required>
                <input type="text" name="lastName" placeholder="Last Name" required>
                <input type="date" name="dateOfBirth" required>
                <input type="number" name="age" placeholder="Age" min="0" max="120" required>
                <select name="gender" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
                <input type="tel" name="contactNumber" placeholder="Contact Number" required pattern="0[0-9]{9}" title="Contact number must start with 0 and be 10 digits long">
                <input type="email" name="email" placeholder="Email" required>
                <input type="text" name="address" placeholder="Address" required>
                <input type="text" name="city" placeholder="City" required>
                <input type="text" name="emergencyContactName" placeholder="Emergency Contact Name" required>
                <input type="tel" name="emergencyContactNumber" placeholder="Emergency Contact Number" required pattern="0[0-9]{9}" title="Contact number must start with 0 and be 10 digits long">
                <textarea name="pastMedicalHistory" placeholder="Past Medical History"></textarea>
                <input type="text" name="reasonOfAdd" placeholder="Reason of Add" required>
                <input type="text" name="allergies" placeholder="Allergies">
                <button type="submit">Add Patient</button>
            </form>
        </div>
    </div>

    <div id="patientGrid" class="patient-grid">
        <%
            patientDAOTHUVE dao = new patientDAOTHUVE();
            List<patientTHUVE> patients = dao.getAllPatients(); 
            request.setAttribute("patientList", patients);  
        %>  
        <c:forEach items="${patientList}" var="patient">
            <div class="patient-card">
                <div class="patient-name">${patient.firstName} ${patient.lastName}</div>
                <div class="patient-info">
                    <p>Patient ID: ${patient.patientID}</p>
                    <p>Date of Birth: ${patient.dateOfBirth}</p>
                    <p>Age: ${patient.age}</p>
                    <p>Gender: ${patient.gender}</p>
                    <p>Contact: ${patient.contactNumber}</p>
                    <p>Email: ${patient.email}</p>
                    <p>Address: ${patient.address}</p>
                    
                    <p>City: ${patient.city}</p>
                    <p>Emergency Contact Name: ${patient.emergencyContactName}</p>
                    <p>Emergency Contact Number: ${patient.emergencyContactNumber}</p>
                    <p>Past Medical History: ${patient.pastMedicalHistory}</p>
					<p>Reason Of Admit: ${patient.reasonOfAdd}</p>
					<p>Date Of Registration: ${patient.dateOfRegistration}</p>
					<p>Allergies: ${patient.allergies}</p>
					
                </div>
                <div class="action-buttons">
                    <button onclick="openPagePopup('${patient.patientID}')">Edit</button>
                    <button onclick="deletePatient('${patient.patientID}')">Delete</button>
                </div>
            </div>
        </c:forEach>
    </div>


</body>
</html>