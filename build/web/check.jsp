<%-- 
    Document   : check
    Created on : 31/08/2022, 10:13:35 PM
    Author     : paola
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    String action=request.getParameter("action");
    if(action.equals("signin")){
        String username=request.getParameter("username");
        String pwd = request.getParameter("password");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdatabase", "root","n0m3l0");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from record where username ='"+username+"' and password='"+pwd+"'");
            if(rs.next()){
            response.sendRedirect("sucess.jsp");
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Username y password incorrectos');");
                out.println("location='index.jsp';");
                out.println("</script>");
            }
        }
        catch(Exception e){
            out.println(e);
        }
    }
    else if (action.equals("signup")){
        response.sendRedirect("signup.jsp");
    }
%>
