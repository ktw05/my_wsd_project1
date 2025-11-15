<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // 항목 : 5개 (ID, 제목, 작성자, 날짜, 조회수, 카테고리)
    class Post {
        int id;
        String title;
        String author;
        String date;
        int views;
        String category;

        public Post(int id, String title, String author, String date, int views, String category) {
            this.id = id;
            this.title = title;
            this.author = author;
            this.date = date;
            this.views = views;
            this.category = category;
        }
    }

    Post[] posts = {
            new Post(5, "JSP 인라인 스타일 적용 테스트", "김태우", "2025-11-15", 15, "공지"),
            new Post(4, "과제 제출 관련 질문입니다.", "이대연", "2025-11-14", 25, "자유"),
            new Post(3, "Docker 설치 시 문제 발생", "남지원", "2025-11-13", 10, "질문"),
            new Post(2, "Render 배포 가이드 후기", "손민하", "2025-11-12", 50, "정보"),
            new Post(1, "안녕하세요, 게시판 시작합니다.", "관리자", "2025-11-11", 100, "공지")
    };
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자유 게시판 목록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container my-5 p-4 bg-white shadow-sm rounded">
    <h2 class="text-success border-bottom pb-2 mb-4">자유 게시판</h2>

    <table class="table table-hover table-striped">
        <thead>
        <tr class="table-success text-center">
            <th>번호</th>
            <th style="width: 40%;">제목</th>
            <th>작성자</th>
            <th>카테고리</th>
            <th>작성일</th>
            <th>조회수</th>
        </tr>
        </thead>
        <tbody>
        <% for (Post post : posts) { %>
        <tr class="text-center">
            <td><%= post.id %></td>
            <td class="text-start">
                <a href="view.jsp?id=<%= post.id %>" class="text-decoration-none text-dark fw-bold"><%= post.title %></a>
            </td>
            <td><%= post.author %></td>
            <td><span class="badge bg-secondary"><%= post.category %></span></td>
            <td><%= post.date %></td>
            <td><%= post.views %></td>
        </tr>
        <% } %>
        </tbody>
    </table>

    <div class="text-end mt-3">
        <a href="write.html" class="btn btn-primary">새 글 작성</a>
    </div>
</div>
</body>
</html>