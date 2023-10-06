<%@page import="java.sql.*" %>

<%
    String email= request.getParameter("email");
    HttpSession httpSession= request.getSession();
    String query= ("select * from add_to_cart where U_Email='"+email+"'");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
    PreparedStatement ps= conn.prepareStatement(query);
    ResultSet x= ps.executeQuery();
    if(x.next()){
        httpSession.setAttribute("User_Email", x.getString("U_Email"));
        response.sendRedirect("../Client/Client-Home-Page.jsp");
    }
%>