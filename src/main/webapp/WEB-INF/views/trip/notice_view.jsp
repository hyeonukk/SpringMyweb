<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<div id="container">
		<!-- location_area -->
		<div class="location_area customer">
			<div class="box_inner">
				<h2 class="tit_page">TOURIST <span class="in">in</span> TOUR</h2>
				<p class="location">고객센터 <span class="path">/</span> 공지사항</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->

		<!-- bodytext_area -->
		<!-- 삭제는 post로 동작하는데, hidden을 이용해서 삭제에 필요한 
		키값을 전달해준다. js를 이용해서 form을 전송한다.  -->
		
		<form action="deleteForm" method="post" name="actionForm">
		
		<input type="hidden" name="tno" value="${vo.tno }">
		<div class="bodytext_area box_inner">			
			<ul class="bbsview_list">
				<li class="bbs_title">${vo.title }</li>
				<li class="bbs_hit">작성일 : <span><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/></span></li>
				<li class="bbs_date">작성자 : <span>${vo.writer }</span></li>
				<li class="bbs_content">
					<div class="editer_content">
					    ${vo.content }
                    </div>
				</li>
			</ul>
			<p class="btn_line txt_right">
				<a href="notice_modify?tno=${vo.tno }" class="btn_bbs">글수정</a>
				<a href="javascript:;" class="btn_bbs" onclick="noticeDelete()">글삭제</a>
				<a href="notice_list" class="btn_bbs">목록</a>
			</p>
			<ul class="near_list mt20">
			<!-- 
				1. 글이 2개인경우 - 이전글 < 현재글인경우
				2. 글이 1개인경우
				3. 글이 0개인경우			
			 -->
				<c:forEach var="data" items="${list }">
					
					<c:if test="${fn:length(list) == 1 and data.tno < vo.tno }">
					<li><h4 class="prev">다음글</h4>다음글이 없습니다.</li>		
					</c:if>
				
				
					<c:if test="${data.tno > vo.tno }">
						<li><h4 class="prev">다음글</h4><a href="notice_view?tno=${data.tno }">${data.title }</a></li>
					</c:if>

					<c:if test="${data.tno < vo.tno }">
						<li><h4 class="next">이전글</h4><a href="notice_view?tno=${data.tno }">${data.title }</a></li>
					</c:if>
					
					<c:if test="${fn:length(list) == 1 and data.tno > vo.tno }">
					<li><h4 class="prev">이전글</h4>이전글이 없습니다.</li>		
					</c:if>
				</c:forEach>
							 

			</ul>
			
		</div>
		</form>
		<!-- //bodytext_area -->

	</div>
	<!-- //container -->
	
	<script>
		//a링크
		function noticeDelete() {
			//a링크 고유이벤트 중지
			event.preventDefault();
			
			if(confirm("정말 지우니?")){
				//js로 폼형식으로 삭제
				document.actionForm.submit();
			}
		}
	</script>
