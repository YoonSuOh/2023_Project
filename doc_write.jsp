<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.center{
margin: 5px 25px; padding: 20px
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>새문서 작성</title>
</head>
<body>
    <form class="center" method="post">
        <h2>새 문서 작성</h2>
        <div class="form-group">
              <label>ID</label>
            <input type="text" class="form-control" name="d_title" placeholder="문서명을 작성해주세요.">
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text" class="form-control" name="d_content" placeholder="문서 내용을 작성해주세요.">
        </div>     
    <button type="submit" class="btn btn-outline-info">등록</button>
    <button type="button" class="btn btn-outline-info"><a href="/doc/doc_history">메인화면</a></button>
    </form>
</body>
</html>