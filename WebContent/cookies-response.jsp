<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cookies</title>
</head>
	<%
		//read form
		String favLang = request.getParameter("language");
		
		//create cookie
		Cookie cookie = new Cookie("myApp.language", favLang);
		
		//set life span
		cookie.setMaxAge(60*60*24);  //for a day
		
		//send cookie to browser
		response.addCookie(cookie);
	%>
<body>
	Thanks! We set your favorite language : ${param.language}
	<br>
	<a href="cookies-home.jsp">Homepage</a>
</body>
</html>