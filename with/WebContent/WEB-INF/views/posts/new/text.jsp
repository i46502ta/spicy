<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 공통 head 설정 -->
<jsp:include page="/include/head.jsp" />
<style type="text/css">
body {
	background: none repeat scroll 0 0 #FAFAFA;
}
</style>
</head>

<body>

	<!-- 헤더 네비게이션 -->
	<jsp:include page="/include/header_navi.jsp" />
	
	<div class="container">
	    <div class="write-posts-box">
	      <c:forEach items="${postsList}" var="domain">
	      <form:form name="text_write" action="/with/posts/${ domain.id }" method="PUT">
	      	
	        <legend><img src="/with/img/post_text copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Add a Text Post</legend>
	        <label>Title</label>
	        <p><input type="text" name="column1" placeholder="Insert Title" value="${domain.column1}" style="width:640px;" required /></p>
	        <span class="help-block">Post</span>
	        <p><textarea name="column2" rows="10" style="width:640px;" required >${domain.column2}</textarea></p>
	        
	        <input type="hidden" name="type" value="1" />
	        <input type="hidden" name="writer" value="${ domain.writer }" />
	        <input type="hidden" name="writer_picture" value="${ domain.writer_picture }" />
	        <input type="hidden" name="owner" value="${ domain.writer }" />
	        <input type="hidden" name="_method" value="PUT" />
	        
	        <button type="button" class="btn" onclick="location.href='/with'">Cancel</button>&nbsp;
	        <button type="submit" class="btn btn-primary">Save Post</button>
	      </form:form>
	      </c:forEach>
	    </div>
	</div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>




