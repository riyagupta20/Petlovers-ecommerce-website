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

</style>
<body>
<%@include file="../Same-Code/Header-Client-Page.jsp"%>
    
<div id="carouselExampleIndicators" class="carousel slide-bar" data-bs-ride="carousel">
	<div class="carousel-inner images">
		<div class="carousel-item active">
			<img src="../Home/Both-Banner5.png" class="d-block w-100" alt="...">
		</div>
		<div class="carousel-item">
			<img src="../Home/Both-Banner4.png" class="d-block w-100" alt="...">
		</div>
		<div class="carousel-item">
			<img src="../Home/Both-Banner6.png" class="d-block w-100" alt="...">
		</div>
	</div>
	<button class="carousel-control-prev arrow" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next arrow" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="visually-hidden">Next</span>
	</button>
</div>

<div class="main-category">
	<p class="category-title">Lets <b>Shop</b> by pet</p>
	<div class="category-Both-Image">
		<a href=""><img src="../Home/Dog.jpg" class="rounded float-start" alt="..."></a>
		<a href=""><img src="../Home/Cat.jpg" class="rounded float-start" alt="..."></a>
	</div>
</div>

<p class="Best-Heading">Best Selling Products</p>

<div class="Main-Best-Sell">
	<div class="Product1">
		<img src="../Home/Product-1.png" class="card-img-top" alt="...">
		<div class="title">
			<h5>Royal Canin Maxi Food 15Kg</h5>
			<p>? 8,272</p>
		</div>
	</div>
	<div class="Product2">
		<img src="../Home/Product-2.png" class="card-img-top" alt="...">
		<div class="title">
			<h5>Automatic Drinkwell 7 litre</h5>
			<p>? 15,299</p>
		</div>
	</div>
	<div class="Product3">
		<img src="../Home/Product-3.png" class="card-img-top" alt="...">
		<div class="title">
			<h5>Virbac Nutrich (60 Tablets)</h5>
			<p>? 629</p>
		</div>
	</div>
	<div class="Product4">
		<img src="../Home/Product-4.png" class="card-img-top" alt="...">
		<div class="title">
			<h5>Winter Wear Maroon Jackets</h5>
			<p>? 892</p>
		</div>
	</div>
</div>

<div class="footer bg-primary">
	<table>
		<tr>
    	<td>
    		<a href=""><img src="logo.png" class="card-img-top rounded" alt="..."></a>
    	</td>
    	<td>
    		<h2><b>Contact Information</b></h2>
    		<p><i class="fa-solid fa-phone"></i> +91 99XXXXX909</p>
    	</td>
		</tr>
	</table>
</div>

</body>
</html> 