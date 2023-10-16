<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>


</head>
<body>

    <table border="1" id="customers">
        <tr>
            <th>Alumini ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Current Position</th>
            <th>Phone no</th>
        </tr>
        <%
            Connection con1 = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/car2", "root", "12345");
                stmt = con1.createStatement();
                String sql = "SELECT * FROM stud";
                rs = stmt.executeQuery(sql);
                
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("ID") + "</td>");
                    out.println("<td>" + rs.getString("Name") + "</td>");
                    out.println("<td>" + rs.getInt("Age") + "</td>");
                    out.println("<td>" + rs.getString("Gender") + "</td>");
                    out.println("<td>" + rs.getString("Current_Position") + "</td>");
                    out.println("<td>" + rs.getInt("Phone") + "</td>");
                    out.println("</tr>");
                }
            } catch (ClassNotFoundException | SQLException e) {
                out.println("<p>Error retrieving employee details: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stmt != null) {
                        stmt.close();
                    }
                    if (con1 != null) {
                        con1.close();
                    }
                } catch (SQLException e) {
                    out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
                }
            }
        %>
    </table>
    </center>
</body>

</html>



