<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
	margin-top: 50px;
}

.row {
	margin: 0px auto;
	width: 960px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table">
				<tr>
					<td colspan="2" class="text-center">
						<img src="${vo.goods_poster }" style="width:750px;height:300px"
						onerror="this.src='no.jpg'">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<h3>${vo.goods_name}</h3>
					</td>
				</tr>
				<tr>
					<td width=10%>설명</td>
					<td width=90%>${vo.goods_sub}</td>
				</tr>
				<tr>
					<td width=10%>원가</td>
					<td width=90%>${vo.goods_price}</td>
				</tr>
				<tr>
					<td width=10%>할인</td>
					<td width=90%>${vo.goods_discount}</td>
				</tr>
				<tr>
					<td width=10%>최종가격</td>
					<td width=90%>${vo.goods_first_price}</td>
				</tr>
				<tr>
					<td colspan="2" class="text-right">
						<a href="list.do?tno=${tno }" class="btn btn-primary">목록</a>
					</td>
				</tr>
			</table>
		</div>	
	</div>
</body>
</html>