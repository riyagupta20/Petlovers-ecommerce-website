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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <style>
    </style>
    <body>
    <%@include file="../Same-Code/Header-Client-Page.jsp"%>
    <div class="cart">
    <sql:setDataSource var="ss" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/petlovers" user="root" password="root"/>
    <%
    HttpSession httpSession = request.getSession();
    String email = (String) httpSession.getAttribute("email");
    pageContext.setAttribute("email", email);
    %>
    <sql:query dataSource="${ss}" var ="result">
        select * from add_to_cart a inner join product_details p on a.P_Id = p.P_Id where U_Email= ?;
    <sql:param value="${email}" />
    </sql:query>
    <div class="mt-5">
        <c:forEach var="row" items="${result.rows}"> 
        <form action="../Client/Client-Addtocart-Delete.jsp" method="post">
            <div class="card mb-3" style="max-width: 800px; margin-right: 10%;  margin-left: 20%">
            <div class="row g-0">
                <div class="col-md-2">
                    <img src="../All-Images/${row.P_Image}" class="card-img-top rounded mt-2 mx-auto d-block" 
                         style="width: 140px; height: 150px;">
                </div>
                <div class="col-md-7" style="padding: 0% 5%">
                <div class="card-body">
                    <h4 class="card-title" style="font-family: cursive; font-weight: bold;"><c:out value="${row.P_Name}"/></h4>
                    <input name="p_id" value="${row.P_Id}" hidden>
                    <input name="c_id" value="${row.C_Id}" hidden>
                    <input name="email" value=<%= email%> hidden>
                    <p class="card-text"><c:out value="${row.P_Info}"/></p>
                    <p class="" style="font-weight: bold; font-size: 20px;"><c:out value= "Rs.${row.P_Price}"/></p>
                </div>
                </div>
                <div class="col-3">
                <div class="card-body">
                    <input class="btn btn-primary fs-6" type="submit" name="btn" value="Delete">
                    <input class="btn btn-primary fs-6" type="submit" name="btn" value="Buy Now">
                </div>
                </div>
            </div>
            </div>
    </div>
        </form>
        </c:forEach>
    </div>
</body>
</html>