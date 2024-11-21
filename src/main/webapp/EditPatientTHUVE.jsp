<%@ page import="com.Nurse.dao.patientDAOTHUVE, com.Nurse.bean.patientTHUVE" %>
<% 
    String patientID = request.getParameter("patientID");
    patientTHUVE p = null;

    if (request.getMethod().equalsIgnoreCase("POST")) {
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String contactNumber = request.getParameter("contactNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String emergencyContactName = request.getParameter("emergencyContactName");
        String emergencyContactNumber = request.getParameter("emergencyContactNumber");
        String pastMedicalHistory = request.getParameter("pastMedicalHistory");
        String reasonOfAdd = request.getParameter("reasonOfAdd");
        String allergies = request.getParameter("allergies");

        
        p = new patientTHUVE();
        p.setPatientID(patientID);
        p.setFirstName(firstName);
        p.setLastName(lastName);
        p.setDateOfBirth(dateOfBirth);
        p.setAge(age);
        p.setGender(gender);
        p.setContactNumber(contactNumber);
        p.setEmail(email);
        p.setAddress(address);
        p.setCity(city);
        p.setEmergencyContactName(emergencyContactName);
        p.setEmergencyContactNumber(emergencyContactNumber);
        p.setPastMedicalHistory(pastMedicalHistory);
        p.setReasonOfAdd(reasonOfAdd);
        p.setAllergies(allergies);

        
        int status = patientDAOTHUVE.updatePatient(p);
        
        
        if (status > 0) {
            request.setAttribute("message", "Patient updated successfully!");
        } else {
            request.setAttribute("message", "Failed to update patient. Please try again.");
        }

       
        out.print("<script type='text/javascript'>window.close();</script>");
        return; 
    } else {
        
        p = patientDAOTHUVE.getRecordById(patientID);
    }
%>

<h1>Edit Patient Form</h1>
<% if (request.getAttribute("message") != null) { %>
    <div><%= request.getAttribute("message") %></div>
<% } %>
<html>
<head>
<link rel="stylesheet" type="text/css" href=".\css_files\EditPatientpopupcssTHUVE.css">
</head>
<body><form action="" method="post" onsubmit="closeWindow();">
    <table>
    <!--  
        <tr>
            <td>Patient ID:<br> *Non-editable</td>
            <td><input type="text" name="patientID" value="<%= p.getPatientID() %>" disabled/></td>
        </tr>
        -->
        <tr>
            <td>First Name:</td>
            <td><input type="text" name="firstName" value="<%= p.getFirstName() %>" required/></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><input type="text" name="lastName" value="<%= p.getLastName() %>" required/></td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td><input type="date" name="dateOfBirth" value="<%= p.getDateOfBirth() %>" required/></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="number" name="age" value="<%= p.getAge() %>" min="0" max="120" required/></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <input type="radio" name="gender" value="Male" <%= p.getGender().equals("Male") ? "checked" : "" %>>Male
                <input type="radio" name="gender" value="Female" <%= p.getGender().equals("Female") ? "checked" : "" %>>Female
            </td>
        </tr>
        <tr>
            <td>Contact Number:</td>
            <td><input type="tel" name="contactNumber" value="<%= p.getContactNumber() %>" required pattern="0[0-9]{9}" title="Contact number must start with 0 and be 10 digits long"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="email" name="email" value="<%= p.getEmail() %>" required/></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><input type="text" name="address" value="<%= p.getAddress() %>" required/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input type="text" name="city" value="<%= p.getCity() %>" required/></td>
        </tr>
        <tr>
            <td>Emergency Contact Name:</td>
            <td><input type="text" name="emergencyContactName" value="<%= p.getEmergencyContactName() %>" required/></td>
        </tr>
        <tr>
            <td>Emergency Contact Number:</td>
            <td><input type="tel" name="emergencyContactNumber" value="<%= p.getEmergencyContactNumber() %>" required pattern="0[0-9]{9}" title="Contact number must start with 0 and be 10 digits long"/></td>
        </tr>
        <tr>
            <td>Past Medical History:</td>
            <td><textarea name="pastMedicalHistory" required><%= p.getPastMedicalHistory() %></textarea></td>
        </tr>
        <tr>
        <!-- 
            <td>Reason of Add:</td>
            <td><input type="text" name="reasonOfAdd" value="<%= p.getReasonOfAdd() %>" required/></td>
        </tr>
        <tr>
            <td>Date Of Registration:<br> *Non-editable</td>
            <td><input type="date" name="dateOfReg" value="<%= p.getDateOfRegistration() %>" disabled/></td>
        </tr>
         -->
        <tr>
            <td>Allergies:</td>
            <td><input type="text" name="allergies" value="<%= p.getAllergies() %>"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update Patient" /></td>
        </tr>
    </table>
</form>
</body>
</html>
