<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	body{
                background-image: url("../All-Images/both.png");
		overflow-y: hidden;
                background-repeat: no-repeat;
                background-size: 1100px;
	}
</style>
<body>
<%@include file="../Same-Code/Header-Main.jsp"%>
<div class="container">
    <form action="Admin-Form-Products-Input-Back.jsp" class="row mt-5 g-3">
    <h2 class="text-center mt-4" style="font-family: cursive">Add Product</h2>
    <div class="col-md-4">
        <label for="inputEmail4" class="form-label">Product File:</label>
        <input type="file" name="file" class="form-control" id="inputEmail4">
    </div>
    <div class="col-md-4">
        <label for="inputEmail4" class="form-label">Product Name:</label>
        <input type="text" name="name" class="form-control" id="inputEmail4" placeholder="Enter a Product Name">
    </div>
    <div class="col-md-4 mb-3">
        <label for="inputPassword4" class="form-label">Product Price:</label>
        <input type="number" name="price" class="form-control" id="inputPassword4" placeholder="Enter a Product Price">
    </div>
    <div class="col-6">
        <label for="inputAddress" class="form-label">Product Description:</label>
        <input type="text" name="info" class="form-control" id="inputAddress" placeholder="Enter a Product Description">
    </div>
    <div class="col-6 mb-3">
        <label for="inputAddress2" class="form-label">Product Id:</label>
        <input type="text" name="id" class="form-control" id="inputAddress2" placeholder="Enter a Product Id">
    </div>
    <div class="col-12 text-center">
        <button type="submit" class="btn btn-primary">Save</button>
        <a href="Admin-ViewProduct.jsp">View All Product</a>
    </div>
</form>
</div>
</body>
</html>