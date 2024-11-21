package Nurse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/NurseLoginServletTHUVE")
public class NurseLoginServletTHUVE extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve username and password from the request
        String nurse_id = request.getParameter("nurse_id");
        String npassword = request.getParameter("npassword");

        // Obtain a database connection
        Connection connection = DBConnectionTHUVE.getConnection();
        if (connection != null) {
            try {
                // Prepare SQL query to check for user credentials
                String sql = "SELECT * FROM nursedet WHERE nurse_id=?";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, nurse_id);
                ResultSet resultSet = statement.executeQuery();
                
                // Check if user exists
                if (resultSet.next()) {
                    String dbPassword = resultSet.getString("password");
                    
                    // Verify password
                    if (npassword.equals(dbPassword)) {
                        // Create a session and set session attributes
                        HttpSession session = request.getSession();
                        String fname = resultSet.getString("first_name");
                        String lname = resultSet.getString("last_name");
                        String mobile = resultSet.getString("phone_number");
                        
                        session.setAttribute("nid", nurse_id);
                        session.setAttribute("fname", fname);
                        session.setAttribute("lname", lname);
                        session.setAttribute("mobile", mobile);
                        
                        // Redirect to profile page
                        response.sendRedirect("SelectPatientstoViewTHUVE.jsp");
                    } else {
                    	out.println("<script type='text/javascript'>");
                    	out.println("alert('Error! Incorrect Password');");  // Fixed the quote issue here
                    	out.println("window.location = 'NurseLoginTHUVE.jsp';");  // Redirect to NurseLogin.jsp after the alert
                    	out.println("</script>");
                        // Incorrect password, show SweetAlert
                        
                    }
                } else {
                    // User not found, show SweetAlert
                	out.println("<script type='text/javascript'>");
                	out.println("alert('Error! Patient Not found');");  // Fixed the quote issue here
                	out.println("window.location = 'NurseLoginTHUVE.jsp';");  // Redirect to NurseLogin.jsp after the alert
                	out.println("</script>");
// Redirect after the alert is closed
                 
                }
            } catch (Exception e) {
                // Handle SQL or other exceptions
                out.println("Error: " + e.getMessage());
            } finally {
                // Ensure connection is closed after use
                DBConnectionTHUVE.closeConnection(connection);
            }
        } else {
            // Handle database connection failure
            out.println("Failed to connect to the database.");
        }
        out.close();
    }
}
