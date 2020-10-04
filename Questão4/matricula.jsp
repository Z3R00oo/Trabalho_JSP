<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	String nome = request.getParameter("nome");
	String endereco = request.getParameter("endereco");
	String cpf = request.getParameter("cpf");
	String telefone = request.getParameter("telefone");
	
	session.setAttribute("nome", nome);
	session.setAttribute("endereco", endereco);
	session.setAttribute("cpf", cpf);
	session.setAttribute("telefone", telefone);
%>
<meta charset="UTF-8">
<title>Matricula</title>
</head>
<body>
   <h3>Dados do Aluno</h3>
   <h4>Nome: <%= session.getAttribute("nome") %></h4>
   <h4>Endereço: <%= session.getAttribute("endereco") %></h4>
   <h4>CPF: <%= session.getAttribute("cpf") %></h4>
   <h4>Telefone: <%= session.getAttribute("telefone") %></h4>
   
   <br/>
	   
   <h4>Selecione o(s) Curso(s):</h4>
   <form action="confirmaMatricula.jsp" method="post">
	   <input type="checkbox" name="cursoIngles"/> Curso de Ingles
	   <br/>
	   <br/>
	   <input type="checkbox" name="cursoEspanhol"/> Curso de Espanhol
	   <br/>
	   <br/>
	   <input type="submit"  value="Matricular"/>
   </form>
</body>
</html>