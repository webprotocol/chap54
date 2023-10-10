<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script type="text/javascript">
window.onload = function() {

	// JSON(JavaScript Object Notation)
	function sync() {
		btn.disabled = true;
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false); // 동기
		xhr.send();
		console.log(xhr.responseText);
		let alpha = JSON.parse(xhr.responseText);
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		btn.disabled = false;
	}
	
	function async() {
		btn.disabled = true;
		let xhr = new XMLHttpRequest();
		xhr.onload = function(e) {
			console.log(xhr.responseText);
			let alpha = JSON.parse(xhr.responseText);
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
			btn.disabled = false;
		}
		xhr.open('GET', '/alpha');
		xhr.send();
	}
	
// 	btn.onclick = sync;
	btn.onclick = async;
	
	setInterval(function() {
		let cnt = no.innerText;
		no.innerText = ++cnt;
	}, 100);
}
</script>
</head>
<body>
<h1>Alpha Generator</h1>
<hr>
<button id="btn">ajax</button>
<span id="no">0</span>
<table id="surface">
	<c:forEach var="row" items="${surface}">
		<tr>
		<c:forEach var="a" items="${row}">
			<td style="color: black; background: black;">${a.ch}</td>
		</c:forEach>
		</tr>
	</c:forEach>
</table>
</body>
</html>