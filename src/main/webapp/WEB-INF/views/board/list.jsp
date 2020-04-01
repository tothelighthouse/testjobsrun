<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="<c:url value='/resources/css/list.css'/>">
  <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
  <script src="<c:url value='/resources/js/list.js'/>"></script>
  <script src="<c:url value='/resources/js/common.js'/>"></script>
  
</head>
<body>
  <div class="container">
    <%@ include file="../main/header.jsp"%>

    <div class="list-dg">
      <div class="listTitle">의뢰자 게시판</div>
      <div class="th">
        <div>글번호</div>
        <div>ID</div>
        <div>제목</div>
        <div>
          <div>시작날짜</div>
          <div>시작시간</div>
          <div>위치</div>
          <div>일종류</div>
          <div>시간</div>
          <div>보수</div>
        </div>
      </div>
      <div class="tbody">
        <c:forEach var="rec" items="${list }">
          <div class="tdata">
            <div>${rec.bnum }</div>
            <div>${rec.bid }</div>
            <a href="<c:url value='${pageContext.request.contextPath }board/view/${rec.bnum} }'/>">
              <div>${rec.btitle }</div>
            </a>
            <div>
              <div>${rec.sdate }</div>
              <div>${rec.stime }</div>
              <div>${rec.blocation }</div>
              <div>${rec.job }</div>
              <div>${rec.duration }</div>
              <div>${rec.payment }</div>
            </div>
            <input type="button" data-bnum=${rec.bnum } value="의뢰맡기">
        </div>
        </c:forEach>
      </div>
      <div class="listMenu">
        <a href="<c:url value='/board/writeForm'/>"><input type="button" value="글쓰기"></a>
      </div>
      <div class="paging">
        <a href="">이전</a>
        <a href="">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">5</a>
        <a href="">6</a>
        <a href="">다음</a>
      </div>
    </div>
     <%@ include file="../main/footer.jsp"%>
  </div>

</body></html>