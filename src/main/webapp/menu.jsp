<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
<style type="text/css">

</style>
<script type="text/javascript">
</script>
<style type="text/css">
ul {
	list-style: none;
}

li > a {
	text-decoration: none;
}

li {
	border: 1px solid red;
	padding: 10px;
	width: 100px;
}

li:first-child {
	border-radius: 10px 50px 0px 0px;
}

li:last-child {
	border-radius: 0px 0px 50px 10px;
}

li:nth-child(2n) {
	background: #D00000;
}

li:nth-child(2n+1) {
	background: #FF0000;
}

</style>
</head>
<body>
<ul>
	<li><a href="/alpha/generator">alpha</a></li>
	<li><a href="/alpha/rect">rect</a></li>
	<li><a href="/dept/list">dept</a></li>
	<li><a href="/emp/list">emp</a></li>
	<li><a href="/salgrade/list">salgrade</a></li>
	<li><a href="/city/list">city</a></li>
	<li><a href="/country/list">country</a></li>
	<li><a href="/language/list">language</a></li>
</ul>

</body>
</html>