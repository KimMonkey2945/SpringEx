<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>

<body>

	<h1>회원 정보 추가</h1>
	<form method="post" action="/lesson06/ex01/add_user" id="joinForm"> <!-- form은 서브밋에 자바스크립트의 아이디가 있던없던 실행함...-->
		<label>이름</label><input type="text" name="name" id="nameInput"> <br>
		<label>생년월일</label><input type="text" name="yyyymmdd" id="yyyymmddInput"> <br>
		<label>자기소개</label> <br>
		<textarea rows="10" cols="50" name="introduce" id="introduceInput""></textarea> <br>
		<label>이메일주소 : </label><input type="text" name="email" id="emailInput"> <br>
		<!--  <button type="submit" id="submitBtn">추가</button> -->
		  <button type="button" id="addBtn">추가</button> 
		  <!-- 클릭이벤트는 form을 전혀 사용하지 않는 것... return false가 필요 없음. -->
		  <!-- submit과 click이벤트의 차이를 이해하기...submit은 enter사용해서 입력가능 보통로그인인풋은 submit을 사용 -->
	</form>
	
	<!-- submit 이벤트를 중간에 가로채야함!! 그래서submit 이벤트가 아니라 form 아래에 잘보기...  -->
	
	<script>
		$(document).ready(function(){
			$("#joinForm").on("click",function(){
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
				
				if(name == ""){
					alert("이름을 입력하세요!");
					return false;
					//그냥 리턴이아니라 false를 넣어야함..., 그래야 서브밋을 진행안함...
				}
				if(yymmdd == ""){
					alert("생일을 입력하세요!")
					return false;
				}
				if(introduce == ""){
					alert("자기소개를 입력하세요!")
					return false;
				}
				if(email == ""){
					alert("이메일을 입력하세요!")
					return false;
				}

				//위에까지는 ajax와 상관없이 submit을 통해서 발리데이션과정임...
				
				
				//밑에부터 서버에 바로요청하는 과정임..
				//다양한 방법이 있으나 가장 기본적인 방법
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					//앞에것은 파라미터이름 뒤에것은 위에 jquery를 통해서 저장해 놓음
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
					success:function(data) { //현재컨트롤러의 responsebody에있는 값을 그대로 사용 할 수 있도록 페이지이동도 없음..
						//ajax는 브라우저가 하는일을 우리가 직접 수행하는 것...
						alert(data)
					},
					
					//if(data =="success"){
						//alert("입력 성공");
					//}else{
						//alert("입력 실패");
					//} 이렇게 표현도 가능...  responssbody는 api를 만들때 사용,  api(요청하고 순수한 데이터형태로 받는것)가 뭔지 찾아볼것. 규격화된 형태로 전달해준다 == ajax
					
<<<<<<< HEAD
=======
						
>>>>>>> ebcfac12f579a551ee5f2b5b777ffe43a5af4a13
					error:function(){
						alert("에러발생")
					}
				});
				return false;
				
				
			});
		});
		
	</script>
</body>

</html>