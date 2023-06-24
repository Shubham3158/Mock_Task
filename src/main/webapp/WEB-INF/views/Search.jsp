<%@page import="java.util.List"%>
<%@page import="com.jspider.springmvc.pojo.UserPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	List<UserPOJO> pojo = (List<UserPOJO>) request.getAttribute("user");
String msg= (String) request.getAttribute("msg");

%>
	
<jsp:include page="NavBar.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
h3{
color: green;
}
</style>
<title>Search Page</title>
</head>
<body>
	<div align="center">
		<fieldset>
			<legend align="center">
				<h3>Search Data</h3>
			</legend>
			<form action="search" method="post">
				<table>
					<tr>
						<td><input type="text" name="name"
							placeholder="Enter Last 3 Digits"></td>
					</tr>
				</table>
				<input type="submit" value="Search">
			</form>
		</fieldset>
	</div>
	
	<%
		if (msg != null) {
		%>
		<h4><%=msg%>
		</h4>
		<%
		}
		%>
		
		<%
		if (msg == null) {
		%>
		<h4><%=msg%>
		</h4>
		<%
		}
		%>
	
	
		
		
		<%
		if (pojo != null) {
		%>
		<table id="data">
			<tr>
				<th>ID</th>
				<th>Name</th>
			</tr>
			<tr>
				<%
			for (UserPOJO user : pojo) {
			%>
			<tr>
				<td><h3><%=user.getId()%></h3></td>
				<td><h3><%=user.getName()%><h3></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
	
</body>
</html>