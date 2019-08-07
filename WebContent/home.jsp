<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate Checkerboard</title>
	<style>
		.size {
			width: 50px;
			height: 50px;
		}
		.color1 {
			background-color: green;
		}
		.color2 {
			background-color: red;
		}
	</style>
</head>
<body>
<p>To generate your own checkerboard, fill in http://localhost:8080/Checkerboard/?width= &height= 
	<table>
		<% for(int x = 0; x < (int) request.getAttribute("width"); x++) { %>
		<tr>
			<% for(int y = 0; y < (int) request.getAttribute("height"); y++) { %>
				<% if((x % 2 != 0) && (y % 2 != 0)) { %>
					<td class="color1 size" ></td>
				<% } %>
				<% if((x % 2 != 0) && (y % 2 == 0)) { %>
					<td class="color2 size"></td>
				<% } %>
				<% if((x % 2 == 0) && (y % 2 != 0)) { %>
					<td class="color2 size"></td>
				<% } %>
				<% if((x % 2 == 0) && (y % 2 == 0)){ %>
					<td class="color1 size"></td>
				<% } %>
			<% } %>
		<% } %>
		</tr>
	</table>
	
	<p><% out.print("Width of this board is " + request.getAttribute("width")); %></p>
	<p><% out.print("Height of this board is " + request.getAttribute("height")); %></p>


<%-- 	<h1>Hello World</h1>
	<%! 
	public int add(int a, int b) {
		return a + b;
	}
	%>
	
	<%
	int i = 2;
	int j = 4;
	%>
	
	<h3><%= add(i, j) %></h3>
	
	<% for(int index = 0; index < 5; index++) { %>
		<h1><%= index %></h1>
	<% } %>
	
	<p>The time is: <%= new Date() %></p> --%>
</body>
</html>