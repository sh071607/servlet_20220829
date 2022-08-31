<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<!-- bootstrap -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<!-- bootstrap CDN link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- jquery slim 제거-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<form method="post" action="/lesson02/quiz05_1.jsp">
		<h1>길이 변환</h1>
		<div class="d-flex align-items-end">
			<input type="text" class="form-control col-2" name="cm">
			<span>cm</span>
		</div>
		<div>
			<label for="inch">인치</label>
			<input type="checkbox" id="inch" name="length" value="inch">
			<label for="yard">야드</label>
			<input type="checkbox" id="yard" name="length" value="yard">
			<label for="ft">피트</label>
			<input type="checkbox" id="ft" name="length" value="feet">
			<label for="m">미터</label>
			<input type="checkbox" id="m" name="length" value="meter">
		</div>
		<input type="submit" class="btn btn-success" value="변환하기">
	</div>

</body>
</html>