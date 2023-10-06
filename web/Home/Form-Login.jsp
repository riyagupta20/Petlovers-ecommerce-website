<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Pets Lovers</title>
	<link rel="stylesheet" type="text/css" href="index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</head>
<style>
	body{
                background-image: url("../All-Images/both.png");
		overflow-y: hidden;
                background-repeat: no-repeat;
                background-size: 1100px;
	}
</style>
<body>
<%@include file="../Same-Code/Header-Main.jsp"%>
<div class="home"><a href="Home-Page.html">Home</a>&nbsp;>&nbsp;Login</div>
<form action="LoginBack.jsp">
<div class="container col-lg-5 mt-4">
    <div class="card border-0">
        <div class="row">
            <h2 class="text-center mt-4" style="font-family: cursive">Login Here</h2>
            <div class="col-10 ms-5 mt-3">
                <label>Email:</label>
                <input type="email" name="email" placeholder="Enter a email" class="form-control">
            </div>
            <div class="col-10 ms-5 mt-3 ps-3">
                <label>Password:</label>
                <input type="password" name="pass" placeholder="Enter a password" class="form-control">
            </div>
            <div class="col-5 ms-5 mt-4 ps-3 mb-4">
                <button class="form-control btn btn-primary">Submit</button>
            </div>
            <div style="opacity: 0%"><a href="../Admin/AdminLogin.jsp">Admin Login</a></div>
        </div>
    </div>
</div>
</form>
</body>
</html>