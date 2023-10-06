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
</style>
<body>
<%@include file="../Same-Code/Header-Main.jsp"%>

<sql:setDataSource var="ss" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/petlovers" user="root" password="root"/>
    <sql:query dataSource="${ss}" var ="result">SELECT * FROM product_details;</sql:query>
    <table border="1" width="100%">
        <form action="../Admin/Admin-Edit-Back.jsp">
        <c:forEach var="row" items="${result.rows}">
            <div class="card" style="width: 18rem;">
                <img src="../All-Images/${row.P_Image}" class="card-img-top rounded mx-auto d-block" style="width: 70%;">
                    <div class="card-body">
                        <h4 class="card-title text-center mb-1" style="font-family: cursive; font-weight: bold;">
                            <c:out value="${row.P_Name}"/></h4>
                        <input name="p_id" value="${row.P_Id}">
                        <p class="card-text mb-2"><c:out value="${row.P_Info}"/></p>
                        <p class="" style="font-weight: bold; font-size: 20px;"><c:out value= "Rs.${row.P_Price}"/></p>
                        <input class="btn btn-primary fs-6" type="submit" name="btn" value="Edit">
                        <input class="btn btn-primary fs-6" type="submit" name="btn" value="Delete">
                    </div>
            </div>
        </c:forEach>
        </form>
    </table>
</body>
</html>