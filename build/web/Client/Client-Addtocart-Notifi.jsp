<%@page import="java.sql.*" %>

<%
    String action= request.getParameter("btn");
    String email= request.getParameter("email");
    String Product_id= request.getParameter("p_id");
    int length= action.length();
    if(length == 4){ // show line sucsess
        String Email= request.getParameter("U_Email");
        String Pid= request.getParameter("P_Id");
        String query= "insert into add_to_cart (U_Email,P_Id) values (?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, Product_id);
            int x= ps.executeUpdate();
            if(x>0){
                response.sendRedirect("../Client/Client-Addtocart.jsp");
            }
            else{
                out.print("<h1>Cart Failed</h1>");
            }
        }
        catch(Exception e){
            out.print(e);
        }
    }
    else{
        out.println("Invaild");
    }
%>