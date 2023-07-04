<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="true">
 무조건 참 실행
</c:if>

<c:if test="${param.name == 'hong' }">
 name 피라미터 값이 <strong style="font-size: 36px;">${param.name }</strong>입니다.
</c:if>
<hr>
<%-- *.jsp?name=hong&age=20 웹주소창에 노출되는 get방식(쿼리스트링 방식)으로 &기호로 구분해서 name피라미터 이름에 
'hong'을 담고, age 피라미터 이름에 20을 담아서 각각 전달한다. --%>
<c:if test="${param.age >= 20 }">
 당신의 나이는 20세 이상입니다.
</c:if>