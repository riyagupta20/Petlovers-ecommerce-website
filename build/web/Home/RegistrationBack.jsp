<%@page import="java.sql.*" %>
<%
    String name= request.getParameter("name");
    String email= request.getParameter("email");
    String pass= request.getParameter("pass");
    String contact= request.getParameter("contact");
    String houseno= request.getParameter("HouseNo");
    String street= request.getParameter("street");
    String state= request.getParameter("state");
    String city= request.getParameter("city");
    int pincode= Integer.parseInt(request.getParameter("pincode"));
    String query= "insert into user_details values(?,?,?,?,?,?,?,?,?)";
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=  DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/petlovers", "root", "root");
    PreparedStatement ps= conn.prepareStatement(query);
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, pass);
    ps.setString(4, contact);
    ps.setString(5, houseno);
    ps.setString(6, street);
    ps.setString(7, state);
    ps.setString(8, city);
    ps.setInt(9, pincode);
    int x= ps.executeUpdate();
    if(x>0){
        out.print("<h1>Registration Done Sucessfully</h1>");
    }
    else{
        out.print("<h1>Registration Failed</h1>");
    }
    }
    catch(Exception e){
        out.print(e);
    }
%>