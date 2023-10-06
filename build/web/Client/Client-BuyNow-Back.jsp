<%@page import="java.sql.*" %>
<%@ page import="java.sql.*, java.text.SimpleDateFormat, java.util.Date" %>

<%
    HttpSession httpSession = request.getSession();
    String action = request.getParameter("btn");
    String email = request.getParameter("email");
    String pid = request.getParameter("pid");
    String dob = "2023-05-28";
    String dod = "2023-05-30";
    String queryCheckEmail = "SELECT U_Email FROM user_details WHERE U_Email = ?";
    String queryInsertOrder = "INSERT INTO order_details (U_Email, P_Id, Date_Of_Booking, Date_Of_Delivery) "
            + "VALUES (?,?,?,?)";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
        PreparedStatement psCheckEmail = conn.prepareStatement(queryCheckEmail);
        psCheckEmail.setString(1, email);
        ResultSet rs = psCheckEmail.executeQuery();
        if (rs.next()) {
            PreparedStatement psInsertOrder = conn.prepareStatement(queryInsertOrder);
            psInsertOrder.setString(1, email);
            psInsertOrder.setString(2, pid);
            psInsertOrder.setString(3, dob);
            psInsertOrder.setString(4, dod);
            int rowsAffected = psInsertOrder.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("../Client/Client-Payment.jsp");
            } else {
                out.println("Failed");
            }
        } else {
            out.println("Invalid email");
        }
    } catch (Exception e) {
        out.println(e);
    }
%>