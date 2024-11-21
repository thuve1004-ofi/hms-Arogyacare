<%@page import="com.Nurse.dao.patientDAOTHUVE"%>  
<jsp:useBean id="patient" class="com.Nurse.bean.patientTHUVE"></jsp:useBean>  
<jsp:setProperty property="*" name="patient"/>  

<%
    // Create an instance of patientDAO
    int i = patientDAOTHUVE.deletePatient(patient); // Ensure that patient contains a valid patientID

    // Check if the deletion was successful and redirect accordingly
    if (i > 0) {
        response.sendRedirect("NurseDashboardTHUVE.jsp");
    } else {
        out.println("<h2>Error: Unable to delete patient.</h2>");
    }
%>
