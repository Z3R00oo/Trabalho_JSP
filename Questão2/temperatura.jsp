<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversão de Temperaturas</title>
</head>
<%
	float[] fahrenheit = new float[15];
	int celciusAux = -40;
	float[]celcius = new float[15];

%>
<body>
	<table border="1">
		<tr>
			<td><h1>Celcius</h1></td>
			<td><h1>Fahrenheit</h1></td>
		</tr>
		<%
			for(int i = 0; i < fahrenheit.length; i++){
			
				celcius[i] = celciusAux;
				fahrenheit[i] = (celciusAux * 9/5) + 32;
				
				out.print("<tr>" +
							"<td><h1>" + celcius[i] + "</h1></td>" +
							"<td><h1>" + fahrenheit[i] + "</h1></td>" +
						 "</tr>");
				
				celciusAux += 10;
			}
		%>
	</table>
</body>
</html>