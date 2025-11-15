<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String deleteId = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 삭제 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container my-5 p-4 bg-white shadow-sm rounded" style="max-width: 600px;">
    <h2 class="text-danger border-bottom pb-2 mb-4 text-center">게시글 삭제 확인</h2>

    <div class="alert alert-danger text-center" role="alert">
        <h4 class="alert-heading">삭제 요청 접수</h4>
        <p>"<%= deleteId %>번 게시글"이 삭제되었습니다.</p>
    </div>

    <div class="text-center mt-4">
        <a href="list.jsp" class="btn btn-primary">목록으로 돌아가기</a>
    </div>
</div>
</body>
</html>