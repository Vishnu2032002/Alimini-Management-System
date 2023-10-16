<%@ page language="java" %>
<%@ page import="java.sql.*" %>

<%
// Step 1: Retrieve the new password and confirm password from the JSP form
String Username = request.getParameter("n1");
String newp = request.getParameter("n2");
String conp = request.getParameter("n3");

// Step 2: Validate the new password and confirm password
boolean validp = newp != null && newp.length() >= 6;
boolean matchp= newp.equals(conp);

if (validp && matchp) {
    // Step 3: Connect to the MySQL database
    String url = "jdbc:mysql://localhost:3306/car";
    String username = "root";
    String password = "12345";
    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, username, password);

        // Step 4: Execute an SQL UPDATE statement to update the password in the database
        String updateQuery = "UPDATE login SET Password = ? WHERE Username = ?";
        stmt = conn.prepareStatement(updateQuery);
        stmt.setString(2, Username);
        stmt.setString(1, newp);

        int rowsAffected = stmt.executeUpdate();

        // Step 5: Use if conditions to handle success or failure scenarios
        if (rowsAffected > 0) {
            out.println("Password updated successfully.");
            response.sendRedirect("Admin_log.jsp");
        } else {
            out.println("Failed to update password.");
            response.sendRedirect("Admin_recover.jsp");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the database connections
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
} else {
    if (!validp) {
        out.println("Invalid password. Password should be at least 6 characters long.");
    } else {
        out.println("Passwords do not match.");
    }
}
%>

