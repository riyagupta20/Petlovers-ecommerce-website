<%@page import="java.sql.*" %>
<%@ page import="java.sql.*, java.text.SimpleDateFormat, java.util.Date" %>
<%
    String action = request.getParameter("btn");
    String email = request.getParameter("email");
    String pid = request.getParameter("pid");
    boolean payStatus = true; // Set pay_status to true
    String queryCheckEmail = "SELECT U_Email FROM user_details WHERE U_Email = ?";
    String queryInsertOrder = "INSERT INTO payment_details (U_Email, P_Id, Pay_Status) VALUES (?,?,?)";
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
            psInsertOrder.setBoolean(3, payStatus); // Set pay_status to true
            int rowsAffected = psInsertOrder.executeUpdate();
            if (rowsAffected > 0) {
                response.sendRedirect("../Client/Client-Delivered.jsp");
            } else {
                out.println("Failed");
            }
        } else {
            out.println("Invalid email"); // Email does not exist in user_details table
        }
    } catch (Exception e) {
        out.println(e);
    }
%>