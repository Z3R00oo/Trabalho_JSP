<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculo de Idade</title>
</head>
<body>
	<h1>Digite o nome e Data de Nascimento</h1>
			<form action="calculaIdade.jsp" method="post">
				Nome: <input type="text" name="nome" required/>
				<br/>
				<br/>
				<font color="red">*FormatoData: dd/mm/yyyy</font>
				<br/>
				<br/>
				Data de Nascimento: <input type="text" name="dataNasc" required/>
				<br/>
				<br/>
				<input type="submit" value="Calcular Idade"/>
			</form>
</body>
</html>