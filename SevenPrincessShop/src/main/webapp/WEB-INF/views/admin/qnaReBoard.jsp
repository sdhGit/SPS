<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<h2 align="center">1:1 ����</h2>
<%-- 	<c:set var="info" value="${info}"/>
	<c:set var="list" value="${qboardList}"/>
	<c:set var="list2" value="${aboardList}"/>
	<c:set var="answer" value="${answer}"/> --%>


	<table class="table table-hover" style="text-align: center" width="1000" align="center" cellpadding="5" cellspacing="0">
		<tr>
			<th width="80" align="center">��ȣ</th>
			<th width="80" align="center">�з�</th>
			<th width="600" align="center">����</th>
			<th width="150" align="center">��¥</th>
			<th width="80" align="center">�亯����</th>
		</tr>
		
		
		<!-- ���̺� ���� ������ ���ٰ� ����Ѵ�. -->
		<c:if test="${list.size() == 0}">
			<tr>
				<td colspan="5" align="center">����� ���� �����ϴ�.</td>
			</tr>
		</c:if>
		
		<!-- ���̺� ���� ������ ȭ�鿡 ����� ���� ���� ��ŭ �ݺ��ϸ� ���� ����Ѵ�. -->
		<c:if test="${list.size() != 0}">
		
			<!-- ��ǻ�� �ý����� ���� ��¥�� �ð��� ����ϴ� Date Ŭ���� ��ü�� �����. -->
			<jsp:useBean id="date" class="java.util.Date"/>
			<c:forEach var="vo" items="${list}" varStatus="status">
			
					
					<!-- ������ �亯 ����Ʈ-->
					<c:forEach var="vo2" items="${list2}" varStatus="status">
						
						<c:if test="${vo.qboard_idx eq vo2.aboard_qboard_idx}">
							
						<!-- 	
							<input id="t${vo2.aboard_qboard_idx}" type="hidden" value="${vo2.aboard_title}"/>
							<input id="t${vo2.aboard_qboard_idx}" type="hidden" value="${vo2.aboard_}"/>
							<input type="hidden" value="${vo2.aboard_title}"/>
						
						 	<c:set var="${vo2.aboard_qboard_idx}" value=""></c:set>
						 	<input type="hidden" value="${vo2}"/>
						  -->
						
						</c:if>
					
					</c:forEach>
				
				<tr onclick="selectQ(this)" id="${vo.qboard_idx}">		
					<td>${vo.qboard_idx}</td>
					<td>${vo.qboard_type}</td>
					<td >${vo.qboard_title}</td>
					<td>${vo.qboard_date}</td>
					<td>${answer.get(status.index)}</td>
				</tr>
				
				
			</c:forEach>
		</c:if>
	</table>
		
	<!-- �۾��� �������� �̵��ϴ� ��ư -->
	<div align="right"><button type="button" onclick="">�۾���</button></div> 
		
	<!-- ������ �̵� ��ư -->
	<div align="center">
		<c:forEach var="i" begin="${info.startPage}" end="${info.endPage}" step="1">
			
			<c:if test="${i == info.currentPage}">
				<input class="button button2" type="button" value="${i}" disabled="disabled"/>
			</c:if>
				
			<c:if test="${i != info.currentPage}">
				<input class="button button1" type="button" value="${i}" onclick="location.href='?currentPage=${i}'" 
					title="${i}�������� �̵��մϴ�."/>
			</c:if>
			
		</c:forEach>
	</div>
		
		

</body>
</html>