<%@page import="java.sql.*" %>
<%
    String email= request.getParameter("email");
    String contact= request.getParameter("contact");
    String houseno= request.getParameter("houseno");
    String street= request.getParameter("street");
    String state= request.getParameter("state");
    String city= request.getParameter("city");
    int pincode= Integer.parseInt(request.getParameter("pincode"));
    String query= "Update user_details set U_Contact=?, U_HouseNo=?, U_Street=?, U_State=?, U_City=?, U_Pincode=? where U_Email=?";
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
    PreparedStatement ps= conn.prepareStatement(query);
    ps.setString(1, contact);
    ps.setString(2, houseno);
    ps.setString(3, street);
    ps.setString(4, state);
    ps.setString(5, city);
    ps.setInt(6, pincode);
    ps.setString(7, email);
    int x= ps.executeUpdate();
    if(x>0){
        out.print("<h1>Success</h1>");
    }
    else{
        out.print("<h1>Email id cannot be change</h1>");
    }
    }
    catch(Exception e){
        out.println(e);
    }
%>