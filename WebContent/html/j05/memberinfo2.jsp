<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/cafe/css/w3.css">
<link rel="stylesheet" type="text/css" href="/cafe/css/user.css">
<script type="text/javascript" src="/cafe/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/cafe/js/w3color.js"></script>
<style type="text/css">
	label {
		font-size: 14pt;
	}
	
	#avtimg {
		display: inline-block;
		width: 100px;
		height: auto;
	}
	#fr1, #fr2{
		display : none;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#bbtn').click(function(){
			// addMember.jsp 페이지로 돌려보낸다.
			$(location).attr('href', 'addMember.jsp');
		});
		
		var sname = '${param.name}';
		var sid= '${param.id}';
		var sgen = '${param.gen}';
		var savt = '${param.avt}';
		
		if(!(sname && sid && sgen && savt)){
			$('#fr2').css('display' ,'none');
			$('#fr1').css('display' ,'block');
		}else {
			$('#fr1').css('display' ,'block');
			//데이터가 모두 넘겨져온 경우
			//할일
			//태그에 데이터 채워주고
			$('#id').html(sid);
			$('#grade').html(sid=="euns"? '농장주':(sid == 'han' ? '투자자' : '종업원'));
			$('#name').html(sname);
			$('#gen').html(sgen=='M' ? '남자' : '여자');
			$('#avtimg').attr('src','/cafe/img/avatar/img_avatar'+savt + '.png');
			$('#fr2').css('display' ,'none');
			
		}
		
	});
</script>
</head>
<body>
<%--
	회원아이디가 
		euns 이면 농장주
		han, chae 이면 종업원
		나머지는 방문객으로 표현되도록 한다.
		
	회원의 성별은
		남자, 여자로 표현한다.
 --%>
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-green w3-padding w3-card-4 w3-round-large">회원 정보</h1>
		
		<div id="frm">
			<div class="w3-col w3-margin-top w3-card-4 w3-padding w3-round-large">
			<!-- 전달된 데이터가 없는 경우 -->
				<div id="fr1">
					<h3 class="w3-text-deep-orange">이력된 내용이 없습니다!</h3>
					<h3 class="w3-text-deep-orange">다시 시도하세요!</h3>
				</div>

			<!-- 데이터가 정상적으로 전달된 경우 -->
				<div id="fr2">
				<div class="w3-col pdt10 w3-margin-top">
	
					<label class="w3-col m3 w3-right-align w3-text-grey">회원이름 : </label>
					<span id="name" class="w3-col m8 mgl20 pdl20"></span>
				</div>
				<div class="w3-col w3-margin-top">
					<label class="w3-col m3 w3-right-align w3-text-grey">아이디 : </label>
					<span id="id" class="w3-col m8 mgl20 pdl20"></span>
				</div>
				<div class="w3-col w3-margin-top">
					<label class="w3-col m3 w3-right-align w3-text-grey">회원등급 : </label>
					<span id="grade" class="w3-col m8 mgl20 pdl20">
			<c:choose>
				<c:when test="${param.id eq 'euns'}">
					농장주
				</c:when>
				<c:when test="${param.id eq 'han'}">
					투자자
				</c:when>
				<c:when test="${param.id eq 'chae'}">
					종업원
				</c:when>
				<c:otherwise>
					방문객
				</c:otherwise>
			</c:choose>
					</span>
				</div>
				<div class="w3-col w3-margin-top">
					<label class="w3-col m3 w3-right-align w3-text-grey">회원성별 : </label>
					<span id="gen" class="w3-col m8 mgl20 pdl20"></span>
				</div>
					
				<div class="w3-col w3-margin-top w3-margin-bottom">
					<label class="w3-col m3 w3-right-align w3-text-grey">아바타 : </label>
					<div class="w3-col m8 mgl20 pdl20">
						<img src="/cafe/img/avatar/noimage.jpg" 
								class="w3-border w3-border-grey w3-card-2" id="avtimg">
					</div>
				</div>
	

				</div>
			</div>
		</div>
		<div class="w3-col w3-margin-top w3-card-4 showFr">
			<div class="w3-col w3-padding w3-green w3-hover-lime" id="bbtn">back</div>
		</div>
	</div>
</body>
</html>