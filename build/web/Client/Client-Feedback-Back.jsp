<%@page import="java.sql.*" %>

<%
    String email= request.getParameter("email");
    String comment= request.getParameter("comment");
    String query= "insert into feedback_details (U_Email, F_Comment) values (?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/petlovers", "root", "root");
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, comment);
            int x= ps.executeUpdate();
            if(x>0){
                out.print("<h1>Feedback Sucessfully</h1>");
            }
            else{
                out.print("<h1>Feedback Failed</h1>");
            }
        }
        catch(Exception e){
            out.print(e);
        }
%>