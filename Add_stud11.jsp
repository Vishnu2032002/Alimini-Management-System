
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Alumini Details</title>
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
<center>
    <h1>ALUMINI DETAILS UPDATED</h1>
    <a href="Home.jsp">Home page</a>
    <%
   
        String Name = request.getParameter("Name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String department = request.getParameter("department");
        int phone = Integer.parseInt(request.getParameter("salary"));
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car2", "root", "12345");
            String sql = "INSERT INTO stud (Name, Age, Gender, Current_Position, Phone) VALUES (?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);

            ps.setString(1, Name);
            ps.setInt(2, age);
            ps.setString(3, gender);
            ps.setString(4, department);
            ps.setDouble(5, phone);
            int rowsInserted = ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<p>Error alumini details: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
            }
        }
        %>
    