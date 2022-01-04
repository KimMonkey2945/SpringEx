<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    <!--jstl코어 라이브러리 검색해서 사용.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리</title>
</head>
<body>

	<h2>변수 정의 하기(c:set)</h2>
	<!-- int number1 = 100 과 동일 -->
	<c:set var="number1" value="100"/>
	
	<h4>${number1 }</h4>
	
	<!-- int number2 = 200 -->
	<c:set var="number2">200</c:set>
	<h4>${number2 }</h4>
	
	<h4>${number1+number2 }</h4>
	
	
		<!-- 잘 사용x  -->
		<h1>변수 출력 하기(c:set)</h1>
		<h4><c:out value="900"/></h4>
		<h4><c:out value="${number1 }"/></h4>
	
		
		<c:out value="<script>alert('출력')</script>"/>
		<c:out value="<script>alert('출력')</script>" escapeXml="true"/> <!-- true로 고정 -->
		<c:out value="<script>alert('출력')</script>" escapeXml="false"/> 
		
		
		<h2>조건문</h2>
		
		<c:if test="">
			<h4>조건이 참이다</h4> <!-- false면 사라짐.. -->
		</c:if>
		
		<!-- if(number1 > 50)동일 -->
		<c:if test="${number1>50 }">
			<h4>number1은 50보다 크다</h4>
		</c:if>
		
		<!-- if(number1 == 100) -->
		<c:if test="${number1 eq 100 }">
		</c:if>
		
		<!-- if(number1 != 200) -->
		<c:if test="${number1 ne 200 }">
		</c:if>
		
		<c:if test="${empty number5 }">
			<h4>비어있다</h4>
		</c:if>
		
		<c:if test="${!empty number5 }">
			<h4>비어있지않다</h4>
		</c:if>
		
		
		
		

</body>
</html>