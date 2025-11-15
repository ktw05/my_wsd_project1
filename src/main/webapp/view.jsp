<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Mock Data 정의 (DB 미사용)
    String postId = request.getParameter("id");
    // Mock 상세 정보
    String title = "JSP 인라인 스타일 적용 테스트";
    String author = "김태우";
    String date = "2025-11-15";
    int views = 15;
    String category = "공지";
    String content = "자유 게시판 상세 페이지입니다.";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 #<%= postId %> 보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container my-5 p-4 bg-white shadow-sm rounded">

    <h2 class="text-dark border-bottom border-success pb-2 mb-3"><%= title %></h2>

    <div class="d-flex justify-content-between text-muted border-bottom pb-2 mb-4 fs-6">
        <div>
            <span class="me-3">작성자: **<%= author %>**</span>
            <span class="me-3">카테고리: <span class="badge bg-secondary"><%= category %></span></span>
        </div>
        <div>
            <span class="me-3">작성일: <%= date %></span>
            <span>조회수: <%= views %></span>
        </div>
    </div>

    <div class="p-3 border rounded bg-light" style="min-height: 200px; white-space: pre-wrap;">
        <%= content %>
    </div>

    <div class="text-center mt-4">
        <a href="list.jsp" class="btn btn-secondary me-2">목록으로</a>
        <a href="edit.html?id=<%= postId %>" class="btn btn-warning me-2">수정</a>
        <a href="delete_ok.jsp?id=<%= postId %>" class="btn btn-danger" onclick="return confirm('정말로 이 글을 삭제하시겠습니까?');">삭제</a>
    </div>
</div>
</body>
</html>