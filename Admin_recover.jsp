<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="model.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <title>Login page</title>

</head>

<body>
<form method="post" action="Admin_upass.jsp">
   <div class="box">
    <div class="container">
	<br>
        <div class="top">
          
            <header>ADMIN LOGIN</header>
        </div>

        <div class="input-field">
            <input type="text" class="input" placeholder="Username" name="n1" required>
            <i class='bx bx-user'style="color:black" ></i>
        </div>

        <div class="input-field">
            <input type="Password" class="input" placeholder="New Password" name="n2" required>
            <i class='bx bx-lock-alt' style="color:black"></i>
        </div>
        
         <div class="input-field">
            <input type="Password" class="input" placeholder="Confirm Password" name="n3" required>
            <i class='bx bx-lock-alt' style="color:black"></i>
        </div>

        <div class="input-field">
            <b><input type="submit" class="submit" value="Update Password" >

        </div>

    </div>
</div>
</form> 
 
</body>
</html>



    