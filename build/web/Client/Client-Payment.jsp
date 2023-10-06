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
        <%
            HttpSession httpSession = request.getSession();
            String email = (String) httpSession.getAttribute("email");
            String pid = (String) httpSession.getAttribute("p_id");
            String name = (String) httpSession.getAttribute("name");
            String info = (String) httpSession.getAttribute("info");
            String file = (String) httpSession.getAttribute("file");
            Integer price = (Integer) httpSession.getAttribute("price");
            String dob= (String) httpSession.getAttribute("dob");
            String dod= (String) httpSession.getAttribute("dod");
            String pay_s= (String) httpSession.getAttribute("pay_s");
        %>
        <%@include file="../Same-Code/Header-Client-Page.jsp"%>
        <form action="../Client/Client-Payment-Back.jsp" method="post" class="text-center mt-3">
            <img src="../All-Images/<%= file%>" class="card-img-top rounded mx-auto d-block" style="width: 8rem;" alt="..." 
                 style="width: 70%;">
            <h4 class="card-title mb-1" style="font-family: cursive; font-weight: bold;"><c:out value="<%=name%>"/></h4>
            <p class="card-text mb-2" style="font-size: 20px"><c:out value="<%=info%>"/></p>
            <p style="font-weight: bold; font-size: 25px;">Rs. <c:out value= "<%= price%>"/></p>
            <label style="font-size: 20px">Date of Booking: </label>
            <input id="dob" name="dob" value="29.05.23" disabled><br><br>
            <label style="font-size: 20px">Date of Booking: </label>
            <input name="dod" value="31.05.23" disabled>
            <input name="pay_s" value="<%=pay_s%>" hidden/>
            <h2 class="mt-3 mb-4"> Only cash on delivery</h2>
            <input class="btn btn-primary fs-6" type="submit" name="btn" value="Make Payment">
            <input name="email" value="<%=email%>" hidden>
            <input name="pid" value="<%=pid%>" hidden/>
        </form>
    </body>
</html>