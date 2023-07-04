<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String[] cityname = {"서울시","부산시","인천시"};

	request.setAttribute("nameList", cityname);//nameList문자열 속성키이름에 Object타입으로 업캐스팅한 cityName 저장
%>
<c:forTokens var="cityName" items="${nameList }" delims=","><%-- , 구분자를 기준으로 문자를 분리 --%>
 <c:out value="${cityName }"/><br>
</c:forTokens>
<c:forEach var="name" items="${nameList }" >
 <c:out value="${name }"/><br>
</c:forEach>