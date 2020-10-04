<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nome = request.getParameter("nome");
	String nota1 = request.getParameter("nota1");
	String nota2 = request.getParameter("nota2");
	
	double nota1Aux = Double.parseDouble(nota1.replaceAll(",", "."));
	double nota2Aux = Double.parseDouble(nota2.replaceAll(",", "."));
	
	double media = (nota1Aux + nota2Aux) / 2;
	
	if(media <= 4)
	{
		out.print("<h1>O aluno " + nome + " está reprovado!" + "(Média: " + media + ")" + "</h1>");
	}
	else if(media > 4 && media < 7)
	{
		out.print("<h1>O aluno " + nome + " está em prova final!" + "(Média: " + media + ")" + "</h1>");
	}
	else
	{
		out.print("<h1>O aluno " + nome + " está aprovado!" + "(Média: " + media + ")" + "</h1>");
	}
%>
</body>
</html>