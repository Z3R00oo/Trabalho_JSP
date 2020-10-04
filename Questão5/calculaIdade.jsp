<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	String nome = request.getParameter("nome");
	String dataNasc = request.getParameter("dataNasc");
	
	String dataNascAux = dataNasc.substring(6);
	
	String idade = Integer.toString(LocalDateTime.now().getYear() - Integer.parseInt(dataNascAux));
	
	request.setAttribute("nome", nome);
	request.setAttribute("idade", idade);
	
	if(dataNasc.contains("/"))
	{
		pageContext.forward("resultado.jsp");
	}else
	{
		pageContext.forward("inicio.jsp");
	}

%>
<body>
</body>
</html>