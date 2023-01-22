<!-- https://data-flair.training/blogs/jsp-scripting-elements/ -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Following is JSP Scripting Element -->
	<% out.print("Welcome I am Scripting Element"); %> 
	
	
	<!-- Following is JSP Directive -->
	<%@ include file="Program32.jsp" %>
	
	<!--
	There are many implicit object
	1. out ---	JspWriter
	2. request ---	HttpServletRequest -- in Program29
	3. response ---	HttpServletResponse
	4. config ---	ServletConfig
	5. application ---	ServletContext
	6. session ---	HttpSession -- Program26
	7. pageContext ---	PageContext
	8. page ---	Object
	9. exception ---	Throwable
	 -->
	 </br></br>
	<% String servletName = config.getServletName();
	out.println("Servlet Name is " +servletName);%>
	
	
	<%response.setContentType("text/html"); %>
	
	</br>
	<% application.getContextPath(); %>
	
	</br>
	<% pageContext.setAttribute("student","NIET Student",pageContext.PAGE_SCOPE);
	String name = (String)pageContext.getAttribute("student");
	out.println("student name is " +name);
	%>
	
	</br></br>
	<% String pageName = page.toString();
out.println("Page Name is " +pageName);%>

</br>
</br> 
<%= request.getParameter("name") %>  

</body>


	 
</body>
</html>