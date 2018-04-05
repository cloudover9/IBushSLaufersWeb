<%@ page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>createtable</title>

  
</head><body style="background-color: black;" cellpadding="2" cellspacing="2">
<p style="color: white;">Hello <%out.println(request.getParameter("name")); %>. Here is your table</p>

<table style="text-align: center; width: 100%;" border="1" cellpadding="2" cellspacing="2">

  <tbody style= "color: white;">
  <%
			int numRows = Integer.parseInt(request.getParameter("rows"));
			int numCols = Integer.parseInt(request.getParameter("columns"));
			if(numRows<=0){
				response.sendRedirect("classexercise.jsp?Error=1&Name="+request.getParameter("name"));}
			else if(numCols<=0){
				response.sendRedirect("classexercise.jsp?Error=2&Name="+request.getParameter("name"));}
			
			for(int i=1; i <= numRows; i++){
				out.println("<tr>");
				for(int j=1; j <= numCols; j++){
					out.println("<td>" + i + "," + j + "</td>");
			}
			out.println("</tr>");
		}
	%>
  </tbody>
</table>

<br>


</head>
</body>
</html>

