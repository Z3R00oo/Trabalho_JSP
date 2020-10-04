<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gravar Mensagem</title>
</head>
<%
   String email = request.getParameter("email");
 
   String mensagem = request.getParameter("mensagem");
   
   ArrayList<String> mensagens = (ArrayList<String>)session.getAttribute("mensagens");
   
   if(mensagens == null){
	
	   mensagens = new ArrayList<String>();
	   mensagens.add(mensagem);
	   session.setAttribute("mensagens", mensagens); 
   }
   else
   {
	   mensagens.add(mensagem);
   }
   
   
   if (email.isEmpty()) {
 	  pageContext.forward("novaMensagem.jsp");
   } 
   else 
   {
 	  pageContext.forward("listarMensagens.jsp");
   }
   
%>
<body>
</body>
</html>