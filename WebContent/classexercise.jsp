<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title></title>

  
</head>
<body>

<form action="createtable.jsp">
<%		String anyErrors = request.getParameter("Error");
		String name = request.getParameter("Name");
		
	    if(anyErrors!=null && anyErrors.equals("1")){
	    	out.println("HELLO: "+name+", Please provide a row value >=1<br>");
	    }
	    if(anyErrors!=null && anyErrors.equals("2")){
	    	out.println("HELLO: "+name+", Please provide a column value >=1<br>");
	    }
%>

<table style="text-align: left; width: 464px; height: 127px;" border="1">
  <tbody>
    <tr>
      <td style="vertical-align: top;">Enter your name<br>
      </td>
      <td style="vertical-align: top;"><input name="name"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">Enter number of rows<br>
      </td>
      <td style="vertical-align: top;"><input id="r" name="rows" value="1"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">Enter number of columns<br>
      </td>
      <td style="vertical-align: top;"><input name="columns" value="1"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><input name="Submit" value="Submit" type="submit" onclick="myFunction()"><br>
      </td>
      <td style="vertical-align: top;"><input name="Reset" value="Reset" type="reset"><br>
      </td>
    </tr>
  </tbody>
</table>

</form>

<br>

</body></html>



