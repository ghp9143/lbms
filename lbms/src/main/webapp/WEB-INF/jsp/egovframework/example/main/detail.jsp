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
				<h2 class="title">도서 상세</h2>
				<div class="form-common">
					<form method="post">
						<table>
							<colgroup>
								<col style="width: 11%">
								<col style="width: 89%">
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">도서 상세 정보</th>
								</tr>
							</thead>
							<tbody>
								<tr>	
									<th>도서명</th>
									<td>
										<span>${result.bookName}</span>										
									</td>
								</tr>
								<tr>	
									<th>저자명</th>
									<td>
										${result.writer}										
									</td>
								</tr>
								<tr>	
									<th>출판사명</th>
									<td>
										${result.publisherName}								
									</td>
								</tr>
								<tr>	
									<th>출판일</th>
									<td>
										${result.publishDate}							
									</td>
								</tr>
								<tr>	
									<th>가격</th>
									<td>
										${result.amt}										
									</td>
								</tr>
								<tr>	
									<th>등록일</th>
									<td>
										${result.regDate}							
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					
					<div class="button-wrap">
						<button type="button" class="button-common blue">수정</button>
						<button type="button" class="button-common">목록</button>
					</div>
				</div>
					
					<div class="table-wrap">	
						<h3 class="sub-title">대여 이력</h3>
						<div class="search-area">
							<input type="text" class="input-common" placeholder="검색어를 입력해 주세요">
							<button type="button" class="button-common blue">검색</button>
						</div>
						<div class="table-description">
							<p>총 <span class="count">142</span>건의 검색 결과가 있습니다.</p>
							<a href="" class="button-common blue"><span>등록</span></a>
						</div>
						<table class="table-common">
							<colgroup>
								<col style="width: 5%;">
								<col style="width: 12%;">
								<col style="width: 19%;">
								<col style="width: 16%;">
								<col style="width: 16%;">
								<col style="width: 16%;">
								<col style="width: 16%;">
							</colgroup>
							<thead>
								<tr>
									<th>No.</th>
									<th>대여자명</th>
									<th>학번</th>
									<th>대여일시</th>
									<th>반납일시</th>
									<th>대여여부</th>
									<th>연체일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>141</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>140</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>139</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>138</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>137</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>136</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>135</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>134</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
								</tr>
								<tr>
									<td>132</td>
									<td>박건희</td>
									<td>202212345</td>
									<td>2024년 1월 4일</td>
									<td>2024년 1월 10일</td>
									<td>대여중</td>
									<td>미연체</td>
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
	</div>
</body>
</html>