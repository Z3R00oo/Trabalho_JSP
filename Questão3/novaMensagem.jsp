<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nova Mensagem</title>

</head>
<body>
	<h1>Enviar nova Mensagem</h1>
	<form action="gravarMensagem.jsp" method="post">
		Email: <input type="text" name="email"/>
		<br/>
		<br/>
		<textarea name="mensagem" rows="5" cols="80">Digite a mensagem</textarea>
		<br/>
		<br/>
		<input type="submit" value="Enviar"/>
	</form>
</body>

</html>