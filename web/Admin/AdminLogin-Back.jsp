<%@page import="java.sql.*" %>

<%
    String email= request.getParameter("email");
    String pass= request.getParameter("pass");    
    String query= ("select * from admin_details where A_Email='"+email+"' and A_Pwd='"+pass+"'");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
    PreparedStatement ps= conn.prepareStatement(query);
    ResultSet x= ps.executeQuery();
    if(x.next()){
        response.sendRedirect("../Admin/Admin-Form-Products-Input.jsp");
    }
    else{
        out.print("<h1>Login Failed</h1>");
    }
%>