<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
 <!-- include libraries(jQuery, bootstrap) -->
        <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<meta charset="utf-8">
<title> 상품 등록 페이지</title>
</head>
<body>
<h2>중고거래글 작성 페이지</h2>

<form action="itemwrite.do" method="post" enctype="multipart/form-data" name="frm">
	<input type="hidden" name="uidx" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->

	제목: <input type="text" name="title">
	카테고리:<select name="cate_idx">
			<option value="1">가전제품</option>
			
	</select>
	<textarea id="summernote" name="content" ></textarea>
	<br>
	<input type="hidden" name="addr1" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
	<input type="hidden" name="addr2" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
	<input type="hidden" name="addrCode" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
	<!-- <input type="hidden" name="image1" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image2" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image3" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image4" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image5" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image6" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image7" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image8" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image9" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것.
	<input type="hidden" name="image10" value="1">임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
	<input type="hidden" name="offer" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
		<br>
	키워드:<input type="text" name="keyword" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
		<br>
	가격:<input type="text" name="price" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
		<br>
	거래상태:<input type="text" name="state" value="1"><!-- 임시로 uidx 1로 지정해놨으니 uservo 쪽 완성되면 바꿀것. -->
		<br>
	
	
		<div id="fileDiv">
			<p>
				<input type="file" id="file" name="image">
				<a href="#this" class="btn" id="delete" name="delete">삭제</a>
			</p>
		</div>
		
		<br/><br/>
		<a href="#this" class="btn" id="addFile">파일 추가</a>
		<a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	
	<button id="saveBtn">작성하기</button>
	<button>취소하기</button>
	
</form>

<script>
    $(document).ready(function () {

	 
	    //위와 같이 값을 먼저 넣어준 후 초기화를 시킨다. 그럼 아래와 같이 입력이 된다.
	    //초기화
		$('#summernote').summernote({
			height : 400, // set editor height
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			focus : true,
			lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
		});
	
	    //저장버튼 클릭
	    $(document).on('click', '#saveBtn', function () {
	        saveContent();
	        });
	        
	        
	    });
	 function saveContent() {
    	
        //값 가져오기
        var Content = $('#summernote').summernote('code');        //썸머노트(설명)
        alert("content : " + content);
		
    }

</script>
	<script type="text/javascript">
		var gfv_count = 1;
	
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_insertBoard();
			});
			
			$("#addFile").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});
			
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});
		});
		
		function fn_openBoardList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/boarditem/itemlist.do' />");
			comSubmit.submit();
		}
		
		function fn_insertBoard(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/boarditem/itemwrtie.do' />");
			comSubmit.submit();
		}
		
		function fn_addFile(){
			var str = "<p><input type='file' name='image"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
			$("#fileDiv").append(str);
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});
		}
		
		function fn_deleteFile(obj){
			obj.parent().remove();
		}
	</script>
</body>
</html>