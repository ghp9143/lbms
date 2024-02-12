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

<title>LBMS_도서 관리 프로그램</title>
</head>
<body>
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
					<input type="text" class="input-common" placeholder="검색어를 입력해 주세요">
					<button type="button" class="button-common blue">검색</button>
				</div>
				<div class="table-wrap">
					<div class="table-description">
						<p>총 <span class="count">142</span>건의 검색 결과가 있습니다.</p>
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
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>1</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>2</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>3</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>4</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>5</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>6</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>7</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>8</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>9</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
							<tr onClick="location.href='<c:url value='/main/detail.do'/>'">
								<td>10</td>
								<td>책1입니다.</td>
								<td>대명</td>
								<td>2020.01.04</td>
								<td>2020.02.05</td>
								<td>대여중</td>
							</tr>
						</tbody>
					</table>
				</div>
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
			</div>
		</div>
	</div>
</body>
</html>