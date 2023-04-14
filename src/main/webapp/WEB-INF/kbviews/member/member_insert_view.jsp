<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>국민은행 회원 가입</title>
</head>
<body>
<c:choose>
	<c:when test="${sessionScope.id == 'admin'}">
		<script type="text/javascript">
			alert("회원 (${memberDTO.id}) 아이디의 회원가입이 완료되었습니다.")
			location.href="./MemberSelect"
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("${memberDTO.id}님 회원가입이 완료되었습니다.")
			location.href="./MemberSelect";
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>