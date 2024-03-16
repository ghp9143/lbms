<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/statics/css/all.css'/>"/>
    <script type="text/javaScript" language="javascript" defer="defer">
        <!--
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateSampleView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/main/register.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/main.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/main.do'/>";
           	document.listForm.submit();
        }
        
        //-->
    </script>

	<title>LBMS_도서 관리 프로그램</title>
</head>
<body>
    <form:form modelAttribute="searchVO" id="listForm" name="listForm" method="post">
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
				<h2 class="title">도서 관리</h2>
				<div class="search-area">
					<form:input path="searchKeyword" type="text" class="input-common" placeholder="검색어를 입력해 주세요"/>
        	        <a href="javascript:fn_egov_selectList();"><button type="button" class="button-common blue">검색</button></a>
				</div>
				<div class="table-wrap">
					<div class="table-description">
						<p>총 <span class="count"><c:out value="${paginationInfo.totalRecordCount}"/></span>건의 검색 결과가 있습니다.</p>
						<a href="<c:url value='/main/register.do'/>" class="button-common blue"><span>등록</span></a>
					</div>
					<table class="table-common">
						<colgroup>
							<col style="width: 5%;">
							<col style="width: 28%;">
							<col style="width: 19%;">
							<col style="width: 16%;">
							<col style="width: 16%;">
							<col style="width: 16%;">
						</colgroup>
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th>출판사</th>
								<th>출판일</th>
								<th>등록일</th>
								<th>대여여부</th>
							</tr>
						</thead>
						<tbody>
        			         <c:forEach var="result" items="${resultList}" varStatus="status">
							    <tr onClick="location.href='<c:url value="/main/detail.do?selectedId="/><c:out value="${result.bookid}"/>'"/>
            						<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            						<!-- ISBN ID 등 출력시 주석을 풀고 사용합니다. <td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')"><c:out value="${result.id}"/></a></td> -->
            						<td align="left" class="listtd"><c:out value="${result.bookname}"/>&nbsp;</td>
            						<td align="center" class="listtd"><c:out value="${result.publishername}"/>&nbsp;</td>
            						<td align="center" class="listtd"><c:out value="${result.publishdate}"/>&nbsp;</td>
            						<td align="center" class="listtd"><c:out value="${result.regdate}"/>&nbsp;</td>
            						<td align="center" class="listtd"><c:out value="${result.rentalstatus}"/>&nbsp;</td>
            					</tr>
        					</c:forEach>
						</tbody>
					</table>
				</div>
        		<!-- /List -->
        		
        		<div id="paging">
        			<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        			<form:hidden path="pageIndex" />
        		</div>
				<div id="sysbtn">
        		  	<ul>
        		      	<li>
        		          	<span class="btn_blue_l">
        		              	<a href="javascript:fn_egov_addView();"><spring:message code="button.create" /></a>
            	              	<img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
            	          	</span>
            	      	</li>
            	  	</ul>
        		</div>

        		<!-- 
				<div id="pagination">
					<ul>
						<li>처음</li>
						<li>이전</li>
						<li class="active">1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
						<li>7</li>
						<li>8</li>
						<li>9</li>
						<li>10</li>
						<li>다음</li>
						<li>마지막</li>
					</ul>
				</div>
				-->
			</div>
		</div>
	</div>
    </form:form>
</body>
</html>