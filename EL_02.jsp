<%@ page contentType="text/html; charset=UTF-8"%>

<h3>유즈빈 액션 태그</h3>
<jsp:useBean id="user" class="com.naver.vo.UserVO" scope="page">
 <jsp:setProperty name="user" property="firstName" value="홍" />
 <%-- 값 저장 액션태그이다. UserVO빈클래스의 firstName변수에 홍을 저장한다. 자바코드로 표현하면 user.setFirstName()과 같은 기능이다 --%>
 <jsp:setProperty name="user" property="lastName" value="길동"/>
</jsp:useBean>

<jsp:getProperty property="firstName" name="user"/><%-- 값 반환 액션태그이다. 자바코드로 표현하면 user.getFirstName();과 같은 기능이다. --%>
<%=user.getLastName() %>
<hr>

<h3>표현언어 즉 EL로 출력</h3>
${user.firstName } 
${user.lastName }<%-- 자바코드로 표현하면 user.getLastName(); 과 같은 기능을 한다. --%>
<hr> 