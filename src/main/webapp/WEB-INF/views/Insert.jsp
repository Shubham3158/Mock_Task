<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="NavBar.jsp" />
<%
String msg = (String) request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Page</title>
<style type="text/css">
h2 {
	color: green;
}
</style>
</head>
<body>
	<div align="center">
		<fieldset>
			<legend align="center"> <h3>Insert Data</h3></legend>
			<form action="insert" method="post">
				<table>
					<tr>
						<td><input type="text" name="name"
							placeholder="Insert Name Hare"></td>
					</tr>
				</table>
				<input type="submit" value="Insert">
			</form>
		</fieldset>
		<%
		if (msg != null) {
		%>
		<h4><%=msg%></h4>
		<%
		}
		%>
	</div>
</body>
</html>