<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리</title>
</head>

<body>

	<!-- if else --> 
	<h1>조건문 (if else)</h1>
	<%-- 몸무게가 70이하면 치킨 80이하면 샐러드 그게아니면 굶는다 --%>
	<c:set var="weight" value="78"/>
	
	<c:choose>
		<%-- if(weight<=70) --%>
		<c:when test="${weight <= 70 }">
			<div>치킨먹자</div>
		</c:when>
		<%--else if(weight<=80) --%>
		<c:when test="${weight <=80 }">
			<div>샐러드 먹자</div>
		</c:when>
		
		<c:otherwise>
			<div>굶어</div>
		</c:otherwise>
	</c:choose>
	
	<h1> 반복문 </h1>
	<%--0 ~ 4 5번 반복--%>
	<c:forEach var="i" begin="0" end="4" step="1">
		${i }
	</c:forEach>
	
	
	<hr>
	<%--16 ~ 20 --%>
	
	<c:forEach var="i" begin="16" end="20" step="1" varStatus="status">
			${i } ${status.current } ${status.first } ${status.last } ${status.count } ${status.index } <br>
	</c:forEach>
	<%--현재 반복문 상태를 알수 있음... --%>
	
	<%--모델에서 전달 받은 리스트 반복 --%>
	<%--for(String fruit : fruits) --%>
	<c:forEach var="fruit" items="${fruits }" varStatus="status">
		${fruit } :: ${status.count } ${status.index } <br>
	</c:forEach>
	
	
	<%--모델에서 전달 받은 List<Map> 반복 --%>
<!--  -->
	<c:forEach var="user" items="${users }" varStatus="status">
		<h4>${status.count }번째 회원 정보</h4>
		이름: ${user.name } <br>
		나이: ${user.age } <br>
		취미: ${user.hobby } <br>
	</c:forEach>
	
	<table border=1>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>취미</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users }" varStatus="status">
				
				<tr>
					<td>${status.count }</td>
					<td>${user.name }</td>
					<td>${user.age }</td>
					<td>${user.hobby }</td>
				</tr>
				
			</c:forEach>
		</tbody>
	</table>
	
		
	

</body>

</html>