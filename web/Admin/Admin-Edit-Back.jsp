<%@page import="java.sql.*" %>
<%
    String p_id= request.getParameter("p_id");
    String name= request.getParameter("name");
    String info= request.getParameter("info");
    int price= Integer.parseInt(request.getParameter("price"));
    String query= "Update product_details set P_Name = ? , P_Price = ?, P_Info = ? Where P_Id = ?";
    out.println(name);
    out.println(p_id);
    out.println(info);
    out.println(price);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, price);
            ps.setString(3, info);
            ps.setString(4, p_id);
            int a= ps.executeUpdate();
            if(a>0){
                response.sendRedirect("../Admin/Admin-ViewProduct.jsp");
            }
            else{
                out.println("False");
            }
        }
        catch(Exception e){
            out.println(e);
        }
%>