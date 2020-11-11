<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SURAJ_login_reg</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userName=request.getParameter("userName"); 
session.setAttribute("userName",userName); 
String password=request.getParameter("password"); 
Class.forName("oracle.jdbc.driver.OracleDriver");
java.sql.Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","illusio9"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into login_info values ('"+userName+"','"+password+"')"); 
 
response.sendRedirect("login.jsp"); 


%>
</body>
</html>