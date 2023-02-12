<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function save(){
		var id = document.getElementsByName("id_f")[0].value;
		var pass = document.getElementsByName("pass_f")[0].value;
		
		if(id ==""){
			alert("아이디 값 없음");
			return false;
		}
		if(pass == ""){
			alert("비밀번호 없음");
			return false;
		}
		return document.getElementById("formBox").submit();
	}
</script>
</head>
<body>
	<center>
		<form action="save.jsp" method="post" id="formBox">
			<table>
				<tr>
					<th>아이디</td>
					<th>비밀번호</td>
				</tr>
				<tr>
					<td><input type="text" name="id_f"></td>
					<td><input type = "password" name="pass_f"></td>
				</tr>
			</table>
			
			<a href="#" Onclick="save();">확인</a>
			
		</form>
	</center>
</body>
</html>