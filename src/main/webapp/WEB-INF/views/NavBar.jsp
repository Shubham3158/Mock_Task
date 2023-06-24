<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
margin: 0px;
}
.navbar {
	background-color: #333;
	overflow: hidden;
}

.navbar a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.navbar a:hover {
	background-color: #ddd;
	color: black;
}

.navbar a.active {
	background-color: #04AA6D;
	color: white;
}
#title{
color: white;
margin-left: 1000px;
}
</style>
</head>
<body>
	<div class="navbar">
		<a href="./home">Home</a> 
		<a href="./add">Insert</a> 
		<a href="./search">Search</a>
		<h2 id="title">My Paget</h2>
	</div>
</body>
</html>