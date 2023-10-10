<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo2.jsp</title>
<style type="text/css">

/* input:checked + div { */
input:checked ~ * {
	width: 100px;
	height: 100px;
	border: 10px solid red;
	background: blue;
}
</style>
<script type="text/javascript">
</script>
</head>
<body>
<h1>상태 선택자 :checked</h1>
<hr>
<input type="checkbox">
<hr>
<div>box</div>
<div>box</div>

</body>
</html>