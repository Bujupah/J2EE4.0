<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<% com.beans.Client client = (com.beans.Client)session.getAttribute("client");%>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp"); %>
<% if (client != null) {
	session.setAttribute("client",null);
	client = null;
	dispatcher.forward(request, response);
	}%>
}
<body>

</body>
</html>