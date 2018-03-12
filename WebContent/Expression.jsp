<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expressions</title>
</head>
<body>
	Converting string to uppercase: <%= new String ("Hikmet Kütük").toUpperCase() %>
	<br>
	Converting string to lowercase: <%= new String ("Hikmet Kütük").toLowerCase() %>
	<br>
	19 + 19 = <%= 19 + 19 %>
	<br>
	Is 1 less than 0 ?: <%= 1 < 0 %>
</body>
</html>