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
        justify-content: center;
    }
</style>
<body>
<%@include file="../Same-Code/Header-Client-Page.jsp"%>
<%
    HttpSession httpSession= request.getSession();
    String email= (String)httpSession.getAttribute("email");
    pageContext.setAttribute("email", email);
%>
<div class="home"><a href="Home-Page.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;Register</div>

<form action="../Client/Client-Feedback-Back.jsp" method="post">
<h2 class="text-center mt-5" style="font-family: cursive">My Feedback</h2>
    <div class="mt-4 container col-lg-10 divider">
    <div class="card border-0 col-4">
        <div class="row">
            <div class="col-10 ms-5 mb-1 mt-3">
                <label class="fs-5" style="font-family: cursive">Email:</label>
                <input style="font-size: 1.1rem" type="email" value="<%= email%>" name="email" placeholder="Enter a email" 
                       class="form-control">
            </div>
            <div class="col-10 ms-5 mb-1 mt-3 ps-3">
                <label class="fs-5" style="font-family: cursive">Comments:</label>
                <input style="font-size: 1.1rem" type="text" name="comment" placeholder="Enter a comment" 
                       class="form-control" required>
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