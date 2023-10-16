<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Validating Details</title>
</head>
<body>

   
        <%
       String Username = request.getParameter("n1");
        String Password = request.getParameter("n2");
        
            Connection con1 = null;
           
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/car", "root", "12345");
               // stmt = con1.createStatement();
                String sql = "SELECT * FROM login where Username=?";
                PreparedStatement stmt=con1.prepareStatement(sql);
                stmt.setString(1,Username);
                rs=stmt.executeQuery();
                
                if(rs.next()) {
                    
                    String pass=rs.getString("Password");
                    String user=rs.getString("Username");
                    if(user.equals(Username)&&pass.equals(Password))
                    {
                  			response.sendRedirect("finalsql.jsp");
                    }
                    else
                    {
                    	out.println("Login failed");
                    	response.sendRedirect("Admin_log.jsp");
                    }
                    
                }
            } catch (ClassNotFoundException | SQLException e) {
                out.println("<p>Error retrieving employee details: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                  
                  
                } catch (SQLException e) {
                    out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
                }
            }
        %>
    
</body>
</html>



