<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
	
<body>
		<% 
			String nome = (String)request.getAttribute("nome");
			String idade = (String)request.getAttribute("idade");
			
			out.print("<h1>" + nome + " tem " + idade + " anos." + "</h1>");
		%>
</body>
</html>