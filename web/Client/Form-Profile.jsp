<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Pets Lovers</title>
	<link rel="stylesheet" type="text/css" href="../Home/index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</head>
<style>
    .divider{
        display: flex;
    }
</style>
<body>
<%
    HttpSession httpSession= request.getSession();
    String email= (String)httpSession.getAttribute("email");
    String name= (String)httpSession.getAttribute("name");
    String pass= (String)httpSession.getAttribute("pass");
    String contact= (String)httpSession.getAttribute("contact");
    String houseno= (String)httpSession.getAttribute("houseno");
    String street= (String)httpSession.getAttribute("street");
    String state= (String)httpSession.getAttribute("state");
    String city= (String)httpSession.getAttribute("city");
    Integer pincode= (Integer)httpSession.getAttribute("pincode");
%>
<%@include file="../Same-Code/Header-Client-Page.jsp"%>

<div class="home"><a href="Home-Page.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;Register</div>

<form action="../Client/Form-Profile-Back.jsp" method="post">
<h2 class="text-center mt-5" style="font-family: cursive">My Profile</h2>
    <div class="mt-4 container col-lg-10 divider">
    <div class="card border-0 col-4">
        <div class="row">
            <div class="col-10 ms-5 mb-1 mt-3 ps-3">
                <label class="fs-5" style="font-family: cursive">Name:</label>
                <input style="font-size: 1.1rem" type="text" value="<%= name%>" name="name" placeholder="Enter a full name" 
                       class="form-control">
            </div>
            <div class="col-10 ms-5 mb-1 mt-3">
                <label class="fs-5" style="font-family: cursive">Email:</label>
                <input style="font-size: 1.1rem" type="email" value="<%= email%>" name="email" placeholder="Enter a email" 
                       class="form-control">
            </div>
            <div class="col-10 ms-5 mb-1 mt-3 ps-3">
                <label class="fs-5" style="font-family: cursive">Password:</label>
                <input style="font-size: 1.1rem" type="password" value="<%= pass%>" name="pass" placeholder="Enter a password" 
                       class="form-control" disabled>
            </div>
        </div>
    </div>
    <div class="card border-0 col-4">
        <div class="col-10 ms-5 mt-3 mb-1 ps-3">
            <label class="fs-5" style="font-family: cursive">Contact Number:</label>
            <input style="font-size: 1.1rem" type="text" value="<%= contact%>" name="contact" 
                   placeholder="Enter a contact number" class="form-control">
        </div>
        <div class="col-10 ms-5 mt-3 mb-1 ps-3">
            <label class="fs-5" style="font-family: cursive">House No:</label>
            <input style="font-size: 1.1rem" type="text" value="<%= houseno%>" name="houseno"
                   placeholder="Enter a House No" class="form-control">
        </div>
        <div class="col-10 ms-5 mt-3 mb-1 ps-3">
            <label class="fs-5" style="font-family: cursive">Street:</label>
            <input style="font-size: 1.1rem" type="text" value="<%= street%>" name="street" placeholder="Enter a street"
                   class="form-control">
        </div>
    </div>

    <div class="card border-0 col-4">
        <div class="row">
            <div class="col-10 ms-5 mb-1 mt-3">
                <label class="fs-5" style="font-family: cursive">State:</label>
                <input style="font-size: 1.1rem" type="state" value="<%= state%>" name="state" placeholder="Enter a state"
                       class="form-control">
            </div>
            <div class="col-10 ms-5 mt-3 mb-1 ps-3">
                <label class="fs-5" style="font-family: cursive">City:</label>
                <input style="font-size: 1.1rem" type="text" value="<%= city%>" name="city" placeholder="Enter a city"
                       class="form-control">
            </div>
            <div class="col-10 ms-5 mt-3 mb-1 ps-3">
                <label class="fs-5" style="font-family: cursive">Pincode:</label>
                <input style="font-size: 1.1rem" type="number" value="<%= pincode%>" name="pincode" 
                       placeholder="Enter a pincode" class="form-control">
            </div>
        </div>
        <div class="col-5 ms-5 mt-4 ps-3 mb-4">
            <button class="fs-5 form-control btn btn-primary" style="font-family: cursive">Submit</button>
        </div>
    </div>
    </div>
</div>
</form>
</body>
</html>