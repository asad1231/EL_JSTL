<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL SQL 사용</title>
</head>
<body>
 <sql:setDataSource var="con" driver="oracle.jdbc.driver.OracleDriver"
  url="jdbc:oracle:thin:@127.0.0.1:1521:xe" user="day" password="day"/> <%-- 오라클 연결 con --%>
  
  <sql:update dataSource="${con }">
   insert into test values(1,'홍길동')
  </sql:update><%-- sql:update JSTL은 insert,delete,update문 수행할 때 사용 --%>
  <sql:update dataSource="${con }">
   insert into test values(2,'이순신')
  </sql:update>
  
  <sql:query var="rs" dataSource="${con }">
   select * from test
  </sql:query><%-- squl:query JSTL은 select검색문 수행할 때 사용, 검색 결과 레코드는 rs에 저장 --%>
  
  <c:forEach var="data" items="${rs.rows }">
   ${data['num']} <%-- EL의 브라켓 연산자인 []를 사용해서 해당 컬럼으로 부터 레코드를 가져온다. --%>
   ${data['name']}<hr>
  </c:forEach>
</body>
</html>