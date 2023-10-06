<html>
<style>
.Client-side-btn{
	margin-left: 5%;
}
.Client-side-btn li{
	width: 100%;
	padding: 0% 5%;
}
.Client-side-btn a{
	text-align: center;
	color: white;
	font-family: cursive;
	font-size: 150%;
}
.Client-side-btn a:hover{
	border-radius: 10%;
	background-color: lightblue;
	color: black;
}
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <div class="container-fluid">
	<div class="navbar-brand">
		<a href="../Home/Home-Page.html"><img src="../Home/logo.png"></a>
	</div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span> 
    </button>
    <div class="collapse navbar-collapse Client-side-btn" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="../Client/Client-ViewProduct.jsp">Purchase</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../Client/Client-Cancal-Product.jsp">Cancel_Product</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../Client/Client-Addtocart.jsp">Add_Cart</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="../Client/Client-Feedback.jsp">Feedback</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../Client/Form-Profile.jsp">Profile</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>