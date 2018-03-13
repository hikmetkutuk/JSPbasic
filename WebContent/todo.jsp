<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="todo.jsp">
		Add new plan: <input type="text" name="plan">
		<input type="submit" value="Submit">
	</form>
	
	<!-- Add new plan -->
	<%
		//get plan from session
		ArrayList<String> list = (ArrayList<String>) session.getAttribute("myList");
		
	//to do plan doesn't exist create new 
		if(list == null)
		{
			list = new ArrayList<String>();
			session.setAttribute("myList", list);
		}
	
	String plan = request.getParameter("plan");
	if(plan != null)
	{
		list.add(plan);
	}
	%>
	
	<!-- Display all todo list item -->
	 <hr>
	 <b>List items:</b>
	 <ol>
	 	<%
	 		for(String temp : list)
	 		{
	 			out.println("<li>" + temp + "</li>"); 
	 		}
	 	%>
	 </ol>
</body>
</html>