<%@page import="java.sql.*" %>
<%
    String action= request.getParameter("btn");
    int length= action.length();
    String Product_id= request.getParameter("p_id");
    HttpSession httpSession= request.getSession();
//    Edit Admin
    if (length == 4){
        String query= "select * from product_details where P_Id='"+Product_id+"'";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps= conn.prepareStatement(query);
            ResultSet x= ps.executeQuery();
            if(x.next()){
                httpSession.setAttribute("name", x.getString("P_Name"));
            httpSession.setAttribute("p_id", x.getString("P_Id"));
            httpSession.setAttribute("info", x.getString("P_Info"));
//            httpSession.setAttribute("file", x.getString("P_File"));
            httpSession.setAttribute("price", x.getInt("P_Price"));
            response.sendRedirect("../Admin/Admin-ViewProduct-Edit.jsp");
            }
        }
        catch(Exception e){
            out.print(e);
        }
//            out.println("Edit Successfully");
    }   
//    Delete
    else if(length == 6){
        String pid= request.getParameter("p_id");
        String query= "delete from product_details where P_Id=?";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setString(1, pid);
            out.println(pid);
            int x= ps.executeUpdate();
//            out.println("Delete Successfully");
        }
        catch(Exception e){
            out.print(e);
        }
//        out.println("Delete Sucessfully");
    }
    else{
        out.println("Invaild");
    }
%>