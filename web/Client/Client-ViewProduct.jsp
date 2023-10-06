<%@ page import = "java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
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
    .cart{
        display: flex;
        justify-content: space-evenly;
    }
</style>
<body>
<%@include file="../Same-Code/Header-Client-Page.jsp"%>
<div class="cart p-5">
<sql:setDataSource var="ss" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/petlovers" 
                   user="root" password="root"/>
<%
    HttpSession httpSession= request.getSession();
    String email= (String)httpSession.getAttribute("email");
    pageContext.setAttribute("email", email);
%>
<sql:query dataSource="${ss}" var ="result">select * from product_details;</sql:query>
<table border="0" width="100%">
    <c:forEach var="row" items="${result.rows}">
    <form action="Client-Addtocart-Notifi.jsp" method="post">
        <div   style="margin-left: 2%">
        <div class="card" style="border: none">
            <img src="../All-Images/${row.P_Image}" class="rounded mt-2" alt="..." style="width: 35%;">
        </div>
        <div class="card-body">
            <h4 class="card-title mb-4" style="font-family: cursive; font-weight: bold;"><c:out value="${row.P_Name}"/></h4>
            <input name="p_id" value="${row.P_Id}" hidden>
            <input name="email" value="<%= email%>" hidden>
            <p class="card-text mb-2"><c:out value="${row.P_Info}"/></p>
            <p class="mb-4" style="font-weight: bold; font-size: 20px;"><c:out value= "Rs.${row.P_Price}"/></p>
            <input class="btn btn-primary fs-6" type="submit" name="btn" value="Cart">
        </div>
        </div>
    </form>
    </c:forEach>
    </table>
</div>
</body>
</html>