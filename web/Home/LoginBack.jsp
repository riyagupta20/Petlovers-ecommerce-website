<%@page import="java.sql.*" %>

<%
    String email= request.getParameter("email");
    String pass= request.getParameter("pass");
    HttpSession httpSession= request.getSession();
    String query= ("select * from user_details where U_Email='"+email+"' and U_Pwd='"+pass+"'");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
    PreparedStatement ps= conn.prepareStatement(query);
    ResultSet x= ps.executeQuery();
    if(x.next()){
//            out.println(x.getString("U_Email"));
        httpSession.setAttribute("email", x.getString("U_Email"));
        httpSession.setAttribute("name", x.getString("U_Name"));
        httpSession.setAttribute("pass", x.getString("U_Pwd"));
        httpSession.setAttribute("contact", x.getString("U_Contact"));
        httpSession.setAttribute("houseno", x.getString("U_HouseNo"));
        httpSession.setAttribute("street", x.getString("U_Street"));
        httpSession.setAttribute("state", x.getString("U_State"));
        httpSession.setAttribute("city", x.getString("U_City"));
        httpSession.setAttribute("pincode", x.getInt("U_Pincode"));
//        out.println(x.getInt("U_Pincode"));

        response.sendRedirect("../Client/Client-Home-Page.jsp");
//        out.print("<h1>Login Sucess</h1>");
    }
    else{
        out.print("<h1>Login Failed</h1>");
    }
%>