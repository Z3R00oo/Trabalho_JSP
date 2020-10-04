<%@page import="java.time.ZonedDateTime"%>
<%@page import="java.time.ZoneId"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Imprimindo Data</title>
</head>
<%
	
	LocalDateTime dataAtualBrasileira = LocalDateTime.now(ZoneId.of("America/Sao_Paulo"));
	LocalDateTime dataAtualAmericana = LocalDateTime.now(ZoneId.of("America/New_York"));

	//ZonedDateTime dataAtualAux = dataAtual.atZone(ZoneId.of("America/New_York"));
%>
<body>
	<h1>Data Brasileira: <%= dataAtualBrasileira %></h1>
	<h1>Data Americana: <%= dataAtualAmericana %></h1>
	
</body>
</html>