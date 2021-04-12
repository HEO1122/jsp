<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/coffee/css/w3.css">
<link rel="stylesheet" type="text/css" href="/coffee/css/user.css">
<script type="text/javascript" src="/coffee/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
	#fr {
		display: none;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		// btn1 click event
		$('#btn1').click(function(){
			/*
			var sid = $('#id').val(); // ìë ¥íê·¸ì ê²½ì°ë ìë ¥ë ë´ì©ì ì½ì´ì¤ë ë°©ë²ì $(íê·¸ì í).val();
			// ìë ¥íê·¸ì ê°ì ë¡ ë°ì´í° ì°ë ë°©ë²ì 
			//		$(íê·¸ì í).val(ë°ì´í°);
			var spw = $('#pw').val();
			alert(sid + ' : ' + spw);
			*/
			
			var result = $('#fr').css('display');
			if( result == 'block'){
				$('#fr').stop().slideToggle(1000);
			}
			/*
			var result = $('#fr').hasClass('w3-hide');
			
			if(result != true){
			} else {
//				$('#fr').toggleClass('w3-hide');
				$('#fr').stop().slideToggle(1000);
			}
			*/
		});
		
		// login ë²í¼ ì´ë²¤í¸ ì²ë¦¬
		$('#btn2').click(function(){
			var sid = $(document.frm.id).val();
			var spw = $(document.frm.pw).val();
			
			if(!(sid && spw)){
				alert('ìë ¥ì¬í­ì íì¸íì¸ì!');
				return;
			}
			/*
			//ìë²ìê² ìì²­í´ì¼ íë¤.
				
				ì¼ë°ì ì¼ë¡ ë¡ê·¸ì¸ì²ë¦¬ë ë¹ëê¸° íµì ì¼ë¡ ì²ë¦¬íë ê²ì ìëë¤.
				ì´ ìì ì ê²½ì°ë ë¹ëê¸° íµì  ì°ìµì©ì¼ë¡ 
				ì´ ìì ì íí´ìë§ ë¹ëê¸° íµì ì¼ë¡ ë¡ê·¸ì¸ ì²ë¦¬ë¥¼ í´ë³´ê¸°ë¡ íë¤.
				
				Ajax(Asynchronous JavaScript and XML, ìì´ì­ì¤)ë 
				ë¹ëê¸°ì ì¸ ì¹ ì íë¦¬ì¼ì´ìì ì ìì ìí´ ìëì ê°ì ì¡°í©ì ì´ì©íë ì¹ ê°ë° ê¸°ë²ì´ë¤.
				
				jQueryììë ë¹ëê¸°íµì ì ì½ê² í  ì ìëë¡ í¨ìë¥¼ ì ê³µí´ì£¼ê³  ìë¤.
				
					íì ]
			
					$.ajax({
						url: 'XXXXX', 			//=>ìì²­ì£¼ì (íë¼ë¯¸í°ë ì ì¸..)
						type :'GET ëë POST'.	// ìì²­ë°©ì
						dataType : 'XXXXXXXXX',	// ìëµë¬¸ìì íì
						data:{					//ì ë¬í  ë°ì´í°(íë¼ë¯¸í°)
							id : 'XXXX',
							pw : 'XXXX'
						},
						success:function(data){
							//íµì ì ì±ê³µí ê²½ì°
							//ì´ ê²½ì° ìë²ìì ìëµí´ì£¼ë ë´ì©ì´ dataë¼ë ë§¤ê°ë³ìì ê¸°ìµì´ëë¤.
							
							//ì°ë¦¬ì ê²½ì° ìë²ê° ìëµí´ì¤ ë´ì©ì´ ê·¸ëë¡ dataë¼ë ë³ìì ê¸°ìµëë¤.
								==>ìë²ê° ìëµí´ì£¼ë ë´ì©ì yes ì¸ ê²½ì°
								{"result" :"YES" }ì¼ ê²ì´ê³ 
								ê²°ê³¼ì ì¼ë¡ var data = {"result" :"YES" };ì ê°ì ê²°ê³¼ê° ëë¤.
							
						},
						error: function(){
							//íµì ì ì¤í¨íì ê²½ì° ì¤íëë ë¶ë¶ì´ë¤.
						}
					});
			*/
			$.ajax({
				url :'http://localhost:8090/member/login.cls2',
				type : 'POST', 
				dataType :'json',
				data : {
					id: sid,
					pw: spw
				},
				success: function(obj){
					if(obj.result =='YES'){
						// íê·¸ì ë°ì´í° ì±ì°ê³ 
						$('#sid').html(sid);
						$('#spw').html(spw);
						// ì°½ ë³´ì´ê² í´ì£¼ê³ 
						$('.showFr').addClass('w3-hide');
						//ë©ìì§ ì°½ ë³´ì´ê² í´ì£¼ê³ 
						$('#fr').stop().slideDown(1000);
			//			$('#fr').removeClass('w3-hide');
				} else {
					//ì´ê²½ì°ë ë¡ê·¸ì¸ì ì¤í¨í ê²½ì°
					//ë°ë¼ì ìë ¥ë´ì©ì ëª¨ë ì§ì°ê³  í¬ì»¤ì¤ë¥¼ ìì´ëë¡ ì´ëìí¨ë¤.
					alert('result :'+obj.result);
					$('#frm').reset();
					$('#id').focus();
				}
					
				},
				error : function(){
					alert('##########íµì ìë¬');
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="w3-content mxw650 w3-center">
		<h1 class="w3-blue w3-padding w3-card-4 w3-round-large">Login</h1>
		
		<form method="post" action="http://localhost/member/login.cls2" name="frm" id="frm" class="showFr">
			<div class="w3-col w3-margin-top w3-card-4 w3-padding w3-round-large">
				<div class="w3-col w3-margin-top">
					<label for="id" class="w3-col m3 w3-right-align w3-text-grey">ìì´ë : </label>
					<input type="text" name="id" id="id" class="w3-col m8 mgl20">
				</div>
				<div class="w3-col pdt10 w3-margin-bottom">
					<label for="pw" class="w3-col m3 w3-right-align w3-text-grey">ë¹ë°ë²í¸ : </label>
					<input type="password" name="pw" id="pw" class="w3-col m8 mgl20">
				</div>
			</div>
		</form>
		
		<div class="w3-col w3-margin-top w3-card-4 w3-round-xlarge pdAll20" id="fr">
			<div class="w3-col w3-border w3-round-large w3-padding">
				<h3 class="w3-center w3-text-green">ìì´ë : <span id="sid"></span></h3>
				<h3 class="w3-center w3-text-green">ë¹ë°ë²í¸ : <span id="spw"></span></h3>
			</div>
		</div>
		
		<div class="w3-col w3-margin-top w3-card-4 showFr">
			<div class="w3-half w3-padding w3-red w3-hover-orange" id="btn1">reset</div>
			<div class="w3-half w3-padding w3-green w3-hover-lime" id="btn2">login</div>
		</div>
	</div>
</body>
</html>
