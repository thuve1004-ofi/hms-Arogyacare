
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
    <title>Out-Patient Details</title>
    
    <link rel="icon" type="image/x-icon" href="favicon.png">
    
<link rel="stylesheet" type="text/css" href=".\css_files\NurseDashboardcssTHUVE.css">
<script src="./js_files/NurseDashboardjsTHUVE.js"></script><link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">



</head>
<body id="bodysegOPD">
    <h1>Out-Patient Details</h1>

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

    <div id="patientGrid" class="patient-grid">
        <%
            patientDAOTHUVE dao = new patientDAOTHUVE();
            List<patientTHUVE> patientsTHUVE = dao.getAlloutPatients(); 
            request.setAttribute("patientList", patientsTHUVE);  
        %>  
        
        <c:forEach items="${patientList}" var="patient">
            <div class="patient-card">
                <div class="rowdies-regular" class="patient-name">${patient.username}</div>
                <div class="patient-info">
                    <p>ID: ${patient.id}</p>
                    <p>First Name: ${patient.FName}</p>
                    <p>Last Name: ${patient.LName}</p>
                    <p>Email: ${patient.outEmail}</p><br>
                    <p class="AppoDet"><b>Appointment Details</b></p>
                    <p>Appointment Status: </p>
                    <p>Appointment Date: </p>
                </div>
            </div>
        </c:forEach>
    </div>
    

</body>
    
</html>