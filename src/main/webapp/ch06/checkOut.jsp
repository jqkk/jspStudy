<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkOut</title>
</head>
<body>
	<div align="center">
		선택한 상품 목록
		<hr>
		<%
			ArrayList<String> list = (ArrayList<String>)session.getAttribute("productlist");
			if(list == null){
				out.println("선택한 상품이 없습니다.!!!");
			}
			else{
				for(Object productname:list){
					out.println(productname+"<br>");
				}
			}
		
		%>
	</div>

</body>
</html>