<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title>Omikuji Form App</title>
</head>
<body>
    <h1 class="text-center">Acá está tu Omikuji!</h1>
    <span class="badge badge-primary">In <c:out value="${number}" /> years, you will live in <c:out value="${city}" /> with <c:out value="${person}" /> as your roommate, <c:out value="${hobby}" /> for a living. The next time you see a <c:out value="${livingThing}" />, you will have good luck. Also, <c:out value="${message}" />.</span>
    <br />
    <a class="btn btn-info" href="/omikuji" role="button">Go back</a>
</body>
</html>