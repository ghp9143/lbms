<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/statics/css/all.css'/>"/>

	<title>LBMS_도서 관리 프로그램</title>
	
    <validator:javascript formName="bookVO" staticJavascript="false" xhtml="true" cdata="false"/>
    
    <script type="text/javaScript" language="javascript" defer="defer">
		<!--
		
		/* 글 목록 화면 function */
		function fn_egov_selectList() {
			document.detailForm.action = "<c:url value='/main.do'/>";
			document.detailForm.submit();
		}
		
		/* 글 삭제 function */
		function fn_egov_delete() {
			document.detailForm.action = "<c:url value='/main/deleteBook.do'/>";
			document.detailForm.submit();
		}
		
		/* 글 등록 function */
		function fn_egov_save() {
			frm = document.detailForm;
			frm.action = "<c:url value='/main/register.do'/>";
			frm.submit();
		}
		
    	-->
    </script>
</head>
<body>
<form:form modelAttribute="bookVO" id="detailForm" name="detailForm">
	<div id="wrap">
		<header id="header">
			<div class="logo-wrap">
				<h1 class="logo">LBMS<span>Library Books Management System</span></h1>	
			</div>
			<div class="util-wrap">
				<ul>
					<li>2024년 2월 10일</li>
					<li>박건희</li>
				</ul>
			</div>
		</header>
		<div id="contentWrap">
			<div id="sideMenu">
				<ul>
					<li class="active"><a href="javascript:void(0);">도서 관리</a></li>
					<li><a href="javascript:void(0);">사용자 관리</a></li>
				</ul>
			</div>
			<div id="content">
				<h2 class="title">도서 등록</h2>
				<div class="form-common">
					<table>
						<colgroup>
							<col style="width: 11%">
							<col style="width: 89%">
						</colgroup>
						<thead>
							<tr>
								<th colspan="2">신규 반입된 도서를 등록해 주세요</th>
							</tr>
						</thead>
						<tbody>
							<tr>	
								<th>도서명</th>
								<td>
       								<form:input path="BookName" class="input-common expand"/>
								</td>
							</tr>
							<tr>	
								<th>도서ID</th>
								<td>
       								<form:input path="BookID" class="input-common expand"/>
								</td>
							</tr>
							<tr>	
								<th>저자명</th>
								<td>
       								<form:input path="Writer" class="input-common expand"/>								
								</td>
							</tr>
							<tr>	
								<th>출판사명</th>
								<td>
       								<form:input path="PublisherName" class="input-common expand"/>									
								</td>
							</tr>
							<tr>	
								<th>출판일</th>
								<td>
       								<form:input path="PublishDate" class="input-common expand"/>
								</td>
							</tr>
							<tr>	
								<th>가격</th>
								<td>
       								<form:input path="Amt" class="input-common expand"/>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="button-wrap">
                        <a href="javascript:fn_egov_save();">
							<button type="button" class="button-common blue">등록</button>
                        </a>
						<button type="button" class="button-common">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 현재날짜 -->
	<c:set var="today" value="<%=new java.util.Date()%>" />
	<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyyMMdd" /></c:set>
    <input type="hidden" name="RegDate" value="<c:out value='${date}'/>"/>
</form:form>
</body>
</html>