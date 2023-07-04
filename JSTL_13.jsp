<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>

<h2>1부터 100까지의 자연수 중에 홀수들의 누적합</h2>

<c:set var="sum" value="0"/>

<c:forEach var="a" begin="1" end="100" step="2">
 <c:set var="sum" value="${sum+a }"/>
</c:forEach>
홀수들의 누적합 = <strong style="color: red; font-size: 38px; font-family: 궁서체;"><c:out value="${sum}"/></strong>
