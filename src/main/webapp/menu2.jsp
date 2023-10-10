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
	width: 750px;
}

li > a {
	text-decoration: none;
}

li {
	border: 1px solid red;
	padding: 10px;
	width: 70px;
	text-align: center;
	
	float: left;
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

body {
	border: 5px solid blue;
}

a:link {
	color: black;
	font-size: 1.2em;
}
a:visited {
	color: black;
}

p::first-letter, li::first-letter {
	font-size: 2em;
	color: blue;
}
p::first-line {
	text-decoration: overline;
	font-size:1.5em;
}

p::selection {
	color: red;
	text-decoration: line-through;
}

li::before {
	content: "^";
}
li::after {
	content: "|";
	color: blue;
}

p::after {
	content: url('/media/small.png');
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
<hr>
<div style="width: 100px; height: 100px; border: 1px solid red;">box1</div>
<div style="width: 100pt; height: 100pt; border: 1px solid red;">box2</div>
<div style="width: 80%; height: 100%; border: 1px solid red;">box3</div>
<div style="width: 0.8em; height: 1em; border: 1px solid red; font-size: 100px;">box4</div>
<hr>

<p>
	Hello Alpha
</p>
<p>
We recommend reading this tutorial, in the sequence listed in the menu.

If you have a large screen, the menu will always be present on the left.

If you have a small screen, open the menu by clicking the top menu sign
</p>


</body>
</html>