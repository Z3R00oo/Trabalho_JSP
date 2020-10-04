<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmar Matricula</title>
<% 
	String nome = request.getParameter("nome");
	String cursoIngles = request.getParameter("cursoIngles");
	String cursoEspanhol = request.getParameter("cursoEspanhol");

%>
</head>
<body>
	   <h4>Dados do Aluno</h4>
	   <h5>Nome: <%= session.getAttribute("nome") %></h5>
	   <h5>Endereço: <%= session.getAttribute("endereco") %></h5>
	   <h5>CPF: <%= session.getAttribute("cpf") %></h5>
	   <h5>Telefone: <%= session.getAttribute("telefone") %></h5>
	   
	   <br/>
	   <br/>
	   
	   <h3>Cursos Selecionados: </h3>
	   <%
	   		ArrayList<String> cursos = new ArrayList<String>();

			if(cursoIngles != null || cursoEspanhol != null){
				
				if(cursoIngles != null){
					if(cursoIngles.equals("on")){
						
						cursos.add("Curso de Ingles");
					}
				}
				
				if(cursoEspanhol != null){
					if(cursoEspanhol.equals("on")){
						
						cursos.add("Curso de Espanhol");
					}
				}
				
			}else{
			
				out.print("<h4>Nenhum Curso Selecionado!</h4>");
			}
	   
	   
	   		if(cursos != null)
	   		{
			   	for(String curso: cursos)
			   	{
					out.print("<h4>" + curso + "</h4>");
			   	}
	   		}
       %>
	  
</body>
</html>