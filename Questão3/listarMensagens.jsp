<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar Mensagens</title>
</head>
<body>
	<ul>
		<%
			ArrayList<String> mensagens = (ArrayList<String>) session.getAttribute("mensagens");
		
			for(String mensagem: mensagens){
				
				out.print("<li>" + mensagem + "</li>");
			}
		%>
	</ul>
</body>
</html>