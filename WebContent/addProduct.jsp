<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<meta charset="EUC-KR">
<title>��ǰ ���</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">��ǰ ���</h1>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">��ǰ �ڵ�</label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">��ǰ��</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">�� ����</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
						class="form-control" ></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">������</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">�з�</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">��� ��</label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New " > �ű� ��ǰ
					<input type="radio" name="condition" value="Old" > �߰� ��ǰ
					<input type="radio" name="condition" value="Refurbished" > ��� ��ǰ
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">�̹���</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="���" onclick="CheckAddProduct()" >
				</div>
			</div>
		</form>
	</div>
</body>
</html>