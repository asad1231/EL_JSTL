<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="title_img" value="../images/summer_sea.jpg" />

<h2><c:out value="${title_img }"/></h2>
<img src="<c:out value="${title_img }"/>" width="300" height="250" alt="여름바다">