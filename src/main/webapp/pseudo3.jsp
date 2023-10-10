<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo3.jsp</title>
<style type="text/css">
:last-child {
	border: 2px dotted blue;
}

:first-child {
	border: 1px solid red;
}

li:nth-child(2n) {
	text-decoration: line-through;
}

li:nth-last-child(3n + 1) {
	background: gray;
}

div > :nth-child(2n+1) {
	text-decoration: overline;
}


</style>
<script type="text/javascript">
</script>
</head>
<body>
<h1>구조 선택자 :first-child :last-child :nth-child(n)</h1>
<hr>
<ol>
	<li>java</li>
	<li>python</li>
	<li>c/c++</li>
	<li>html</li>
	<li>css</li>
	<li>javascript</li>
	<li>sql</li>
</ol>
<hr>
<div>
	<p>java</p>
	<h1>pytion</h1>
	<header>c/c++</header>
	<p>html</p>
	<p>css</p>
	<header>javascript</header>
	<h1>sql</h1>
</div>
<hr>







</body>
</html>