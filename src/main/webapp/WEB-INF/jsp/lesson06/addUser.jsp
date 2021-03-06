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

	<h1>회원 정보 추가 </h1>
	<form method="post" action="/lesson06/ex01/add_user" id="joinForm"> <!-- form은 서브밋에 자바스크립트의 아이디가 있던없던 실행함...-->
		<label>이름</label> <input type="text" name="name" id="nameInput"> <button type="button" id="duplicateBtn">중복확인 </button> <br>
		<label>생년월일</label> <input type="text" name="yyyymmdd" id="yyyymmddInput"> <br>
		<label>자기소개</label> <br>
		<textarea rows="10" cols="50" name="introduce" id="introduceInput"></textarea> <br>
		<label>이메일 주소:</label> <input type="text" name="email" id="emailInput"> <br>
		<!-- <button type="submit" id="submitBtn">추가</button> --> 
		<button type="button" id="addBtn">추가</button>
		<!-- 클릭이벤트는 form을 전혀 사용하지 않는 것... return false가 필요 없음. -->
		<!-- submit과 click이벤트의 차이를 이해하기...submit은 enter사용해서 입력가능 보통로그인인풋은 submit을 사용 -->
			
	</form>
	
	<!-- submit 이벤트를 중간에 가로채야함!! 그래서submit 이벤트가 아니라 form 아래에 잘보기...  -->
	<script>
		$(document).ready(function() {
			
			var isDuplicateName = true; //기본은 true로 잡아야 마구잡이로 등록이 안됨.
			
			$("#joinForm").on("submit", function() {
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요");
					return false;
					//그냥 리턴이아니라 false를 넣어야함..., 그래야 서브밋을 진행안함...
				}
				if(yyyymmdd == "") {
					alert("생일을 입력하세요");
					return false;
				}
				if(introduce == "") {
					alert("자기소개를 입력하세요");
					return false;
				}
				
				if(email == "") {
					alert("이메일을 입력하세요");
					return false;
				} 
				//위에까지는 ajax와 상관없이 submit을 통해서 발리데이션과정임...			
				//밑에부터 서버에 바로요청하는 과정임..
				//다양한 방법이 있으나 가장 기본적인 방법
				
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
					success:function(data) {
						if(data == "success") {
							alert("입력성공");
						} else {
							alert("입력 실패");
						}
					},
					error:function() {
						alert("에러발생");
					}
					
				});
				
				return false;
				
				
			});
			
			
			
			$("#addBtn").on("click", function() {
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let email = $("#emailInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요");
					return ;
				}
				
				//중복체크 유효성 검사 (두개의 이벤트에서 둘다 사용한 변수 하나 만들면 둘다 사용가능)
				if(isDuplicateName) {
					alert("중복된 이름 입니다.");
					return; //중복된 가입을 막기위해 사용한다. 중복 확인만 하고 가입을 승인 하면 X
				}
				
				
				if(yyyymmdd == "") {
					alert("생일을 입력하세요");
					return ;
				}
				if(introduce == "") {
					alert("자기소개를 입력하세요");
					return ;
				}
				
				if(email == "") {
					alert("이메일을 입력하세요");
					return ;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					data:{"name":name, "yyyymmdd":yyyymmdd, "introduce":introduce, "email":email},
					success:function(data) {
						if(data == "success") {
							alert("입력성공");
						} else {
							alert("입력 실패");
						}
					},
					error:function() {
						alert("에러발생");
					}
					
				});
				
			});
			
			
			// 위의 클릭 이벤트와 완전 다른 것임.
			$("#duplicateBtn").on("click", function() {
				let name = $("#nameInput").val();
				
				if(name == "") {
					alert("이름을 입력해 주세요");
					return;
				}
				
				$.ajax({
					type:"get",
					url:"/lesson06/ex02/duplicate_name",
					data:{"name":name}, //여기까지가 request를 보내기 위한 기본속성임
					success:function(data) {
						//map 처럼 키 밸류형태여도 ajax는 그대로 사용이 가능하다
						//{isDuplicate: "false"}
						if(data.isDuplicate == "true") {
							alert("중복되었습니다.");
							isDuplicateName = true;
						} else {
							alert("사용 가능합니다.");
							isDuplicateName = false;
						}
					},
					error:function() {
						alert("에러발생");
					}
				});
				
			});
			
			
			
			
		});
	
	</script>
</body>
</html>