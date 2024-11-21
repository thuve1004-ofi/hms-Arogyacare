<%@page import="com.Nurse.dao.patientDAOTHUVE"%>  
<jsp:useBean id="patient" class="com.Nurse.bean.patientTHUVE"></jsp:useBean>  
<jsp:setProperty property="*" name="patient"/>  

<%  
int result = patientDAOTHUVE.addPatient(patient);  
if (result > 0) {  
	out.println("<script type='text/javascript'>");
	out.println("alert('Patient Added Sucessfully');"); 
	out.println("window.location = 'NurseDashboardTHUVE.jsp';"); 
	out.println("</script>");
} else {
	out.println("<script type='text/javascript'>");
	out.println("alert('Patient details update failed!');");  
	out.println("window.location = 'NurseDashboardTHUVE.jsp';");  
	out.println("</script>");
    
} 
%>
