<%@page import="java.sql.*" %>
<%@ page import="java.sql.*, java.text.SimpleDateFormat, java.util.Date" %>
<%
    String action = request.getParameter("btn");
    String email = request.getParameter("email");
    String pid = request.getParameter("pid");
    String reason= request.getParameter("reason");
    String dod = "2023-05-31";
    boolean deliStatus = true; // Set pay_status to true
    String queryCheckEmail = "SELECT U_Email FROM user_details WHERE U_Email = ?";
    String queryInsertOrder = "INSERT INTO delivery_details (U_Email, P_Id, Date_Of_Delivery, D_Status) VALUES (?,?,?,?)";
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
            psInsertOrder.setString(3, dod);
            psInsertOrder.setBoolean(4, deliStatus); // Set pay_status to true
            int rowsAffected = psInsertOrder.executeUpdate();
            if (rowsAffected > 0) {
                out.println("<h1>Delivery is confirm, Thanks!</h1>");
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