<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
	session.setAttribute("client",null);
	session.setAttribute("products",null);
	session.setAttribute("product",null);
	response.sendRedirect("index.jsp");
%>
<body>

</body>
</html>