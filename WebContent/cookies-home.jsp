<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cookies Home</title>
</head>
<body>
	<%
		//Read the language cookie
		
		//Default language
		String favLang = "Java";
		
		//get cookies from browser
		Cookie[] cookie = request.getCookies();
		
		//favorite lang cookie
		if(cookie != null)
		{
			for(Cookie temp : cookie)
			{
				if("myApp.language".equals(temp.getName()))
				{
					favLang = temp.getValue();
					break;
				}
			}
		}
	%>
	
	<!-- Show our language news -->
	<h4>New Books for <%= favLang %></h4>
	<ul>
		<li>....</li>
		<li>....</li>
	</ul>
	
	<h4>Hot Jobs for <%= favLang %></h4>
	<ul>
		<li>....</li>
		<li>....</li>
	</ul>
	
	<h4>Latest update for <%= favLang %></h4>
	<ul>
		<li>....</li>
		<li>....</li>
	</ul>
	
	<hr>
	
	<a href="cookies-form.html">Change favorite language</a>
	
	
</body>
</html>