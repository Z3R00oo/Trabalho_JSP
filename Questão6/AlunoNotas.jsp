<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AlunoNotas</title>
</head>
<body>
	<h1>Digite o nome e as notas do Aluno</h1>
		<form action="CalculaMedia.jsp" method="post">
			Nome: <input type="text" name="nome"/>
			<br/>
			<br/>
			Primeira Nota: <input type="number" name="nota1"/>
			<br/>
			<br/>
			Segunda Nota: <input type="number" name="nota2"/>
			<br/>
			<br/>
			<input type="submit" value="Calcular"/>
		</form>
</body>
</html>