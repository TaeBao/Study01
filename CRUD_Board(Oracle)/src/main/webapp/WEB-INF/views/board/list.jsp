<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
  a{
  	text-decoration : none;
  }
  table{
 	border-collapse: collapse;
 	width: 1000px;    
 	margin-top : 20px;
 	text-align: center;
  }
  td, th{
  	border : 1px solid black;
  	height: 50px;
  }
  th{
  	font-size : 17px;
  }
  thead{
  	font-weight: 700;
  }
  .table_wrap{
  	margin : 50px 0 0 50px;
  }
  .bno_width{
  	width: 12%;
  }
  .writer_width{
  	width: 20%;
  }
  .regdate_width{
  	width: 15%;
  }
  .updatedate_width{
  	width: 15%;
  }
  .top_btn{
  	font-size: 20px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
  }
  </style>
</head>
<body>
<h1>목록페이지입니다.</h1>

<div class="table_wrap">
	<a href="/board/enroll" class="top_btn">게시판 등록</a>
	<a href="/" class="top_btn">index 페이지 이동</a>
	<table>
		<thead>
			<tr>
				<th clas==checkbox_width><input type="checkbox" name="checkbox"/></th>
				<th class="bno_width">번호</th>
				<th class="title_width">제목</th>
				<th class="writer_width">작성자</th>
				<th class="regdate_width">작성일</th>
				<th class="updatedate_width">수정일</th>
			</tr>
		</thead>
			<c:forEach var="list" items="${list}">
				<tr>
					<td><input type="checkbox" name=""/></td>
					<td><c:out value="${list.bno}"></c:out></td>
					<td><a href='/board/viewPage?bno=<c:out value="${list.bno}"/>'>
							<c:out value="${list.title}"></c:out>
						</a>
					</td>
					<td><c:out value="${list.writer}"></c:out></td>
					<td><c:out value="${list.regdate}"></c:out></td>
					<td><c:out value="${list.updatedate}"></c:out></td>
					<input type="hidden" value='<c:out value="${list.bno }"></c:out>'/>
				</tr>
			</c:forEach>
	</table>
</div>

<script>
$(document).ready(function(){
	
	let result = '<c:out value="${result}"/>';
	console.log("result : " + result);
	checkAlert(result);
	
	function checkAlert(result){
		
		if(result === ''){
			return;
		}
		
		if(result === "success"){
			alert("등록이 완료되었습니다.");
		}
		
		if(result === "del_success"){
			alert("삭제가 완료 되었습니다.");
		}
		
		if(result === "update") {
			alert("수정이 완료 되었습니다.");
		}
		
	}	
	
});


</script>

</body>
</html>