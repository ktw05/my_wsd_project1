<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 수정 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container my-5 p-4 bg-white shadow-sm rounded" style="max-width: 600px;">
    <h2 class="text-warning border-bottom pb-2 mb-4 text-center">게시글 수정 성공 확인</h2>

    <div class="alert alert-warning text-center" role="alert">
        <h4 class="alert-heading">성공!</h4>
        <p>게시글 번호 <%= request.getParameter("id") %>에 대한 수정 요청 데이터 수신에 성공했습니다.</p>
    </div>

    <div class="p-3 border rounded bg-light my-4">
        <h4 class="text-primary mt-0">수신된 수정 데이터:</h4>
        <p><strong>ID:</strong> <%= request.getParameter("id") %></p>
        <p><strong>제목:</strong> <%= request.getParameter("title") %></p>
        <p><strong>작성자:</strong> <%= request.getParameter("author") %></p>
        <p><strong>카테고리:</strong> <%= request.getParameter("category") %></p>
        <p><strong>내용:</strong> <%= request.getParameter("content") %></p>
    </div>

    <div class="text-center mt-4">
        <a href="list.jsp" class="btn btn-primary">목록으로 돌아가기</a>
    </div>
</div>
</body>
</html>