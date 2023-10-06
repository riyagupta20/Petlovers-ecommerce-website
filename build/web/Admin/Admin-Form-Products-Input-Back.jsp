<%@page import="java.sql.*"%>

<%
    String name= request.getParameter("name");
    String id= request.getParameter("id");
    int price= Integer.parseInt(request.getParameter("price"));
    String file= request.getParameter("file");
    String info= request.getParameter("info");
    String query= "insert into product_details values(?,?,?,?,?)";
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
    PreparedStatement ps= conn.prepareStatement(query);
    ps.setString(1, name);
    ps.setString(2, id);
    ps.setInt(3, price);
    ps.setString(4, file);
    ps.setString(5, info);
    int x= ps.executeUpdate();
    if(x>0){
        out.print("<h1>Success</h1>");
    }
    else{
        out.print("<h1>Not Success</h1>");
    }
    }
    catch(Exception e){
        out.print(e);
    }
%>