<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>  
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CS WIKI</title>
    <link href="${path}/resources/css/doc.css" rel="stylesheet"/>
    <!-- viewport : 스마트폰 화면에서 실제 내용이 표시되는 영역
        width : 뷰포트 넓이
        initial-scale : 초기 확대/ 축소 값(1~10)
        user-scalable : 확대 축소 가능 여부
    -->
    <title>Document</title>
    
    <!-- 미디어가 print이고 별도 css로 작성한 경우 연결 방법 -->
</head>
<body class="pc">
    <h1>문서명<h4>(문서역사)</h4></h1>
    <p>선택 버전 비교</p>
    <c:forEach items="${doc_history}" var="doc_history">
    <ul>
        <li><fmt:formatDate value="${doc_history.d_date}" pattern="yyyy/MM/dd" />&nbsp;<fmt:formatDate value="${doc_history.d_time}" pattern="HH:mm:ss" />(보기|비교|이 버전으로 되돌리기)r${doc_history.d_version} dbstndh12</li>
    </ul>
    </c:forEach>
    <a href="<c:url value='/doc/doc_wirte'/>" role="button" class="btn btn-outline-info">글쓰기</a>
</body>
</html>