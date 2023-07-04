<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul><%-- jstl 다중 조건문 형태 --%>
 <c:choose>
  <c:when test="${param.name eq 'Lee' }"> <%-- 표현언어 EL에서 같다 연산은 eq 또는 == 를 사용한다. --%>
   <li>당신의 이름은 <strong style="font-size: 34px;">${param.name }</strong>입니다.</li>
  </c:when>
  <c:otherwise>해당사항 이름이 없습니다.</c:otherwise>
 </c:choose>
</ul>