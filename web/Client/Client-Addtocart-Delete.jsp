<%@page import="java.sql.*" %>
<%
    String action = request.getParameter("btn");
    int length = action.length();
    if (length == 6) {
        int cid = Integer.parseInt(request.getParameter("c_id"));
        String query = "delete from add_to_cart where C_Id= ?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            int x = ps.executeUpdate();
            out.println("Delete Successfully");
        } catch (Exception e) {
            out.print(e);
        }
    }
    else if (length == 7) {
        String email= request.getParameter("email");
        String product_id = request.getParameter("p_id");
        HttpSession httpSession = request.getSession();
        String query = "select * from product_details where P_Id='" + product_id + "'";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet x = ps.executeQuery();
            if (x.next()) {
                httpSession.setAttribute("name", x.getString("P_Name"));
                httpSession.setAttribute("p_id", x.getString("P_Id"));
                httpSession.setAttribute("info", x.getString("P_Info"));
                httpSession.setAttribute("file", x.getString("P_Image"));
                httpSession.setAttribute("price", x.getInt("P_Price"));
                httpSession.setAttribute("email", email);
                response.sendRedirect("../Client/Client-Buy-Now.jsp");
            }
        } catch (Exception e) {
            out.print(e);
        }
    } else {
        out.println("Invaild");
    }
%>