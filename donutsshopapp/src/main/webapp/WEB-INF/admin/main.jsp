<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*"%>
<%
	List<Donut> list=(List<Donut>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/donutsshopapp/Main">公開ページを見る</a>
<form action="/donutsshopapp/Admin" method="post" enctype="multipart/form-data">
商品名:<input type="text" name="name" required><br>
価格:<input type="number" name="price" step="10" required><br>
商品画像:<input type="file" name="imgname"><br>
<button type="submit">登録</button>
</form>

<% if(list != null && list.size()>0){ %>
<table border="1">
<%for(Donut d:list){ %>
<tr>
<td><img src="C:\pleiades\2022-09\workspace\donutsshopapp\src\main\webapp\META-INF\upload<%=d.getImgname() %>"></td>
<td><%=d.getId() %></td>
<td><%=d.getName() %></td>
<td><%=d.getPrice() %></td>
<td>
<a href="/donutsshopapp/Admin/Update?id=<%=d.getId() %>">更新</a>
</td>
<td>
<a href="/donutashopapp/Admin/Delete?id=<%=d.getId() %>" onclick="return confirm('削除してよろしいですか？')">削除</a>
</td>
</tr>
<%} %>
</table>
<%} %>
</body>
</html>