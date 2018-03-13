<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User confirmation</title>
</head>
<body>
	The user confirmed: ${param.first_name} ${param.last_name} <br>
	from ${param.country} <br>
	Gender: ${param.gender} <br>
	Languages: <br>
	<ul>
		<%
			String[] langs = request.getParameterValues("language");
			for(String temp : langs)
			{
				out.println("<li>" + temp + "</>");
			}
		%>
	</ul>
</body>
</html>