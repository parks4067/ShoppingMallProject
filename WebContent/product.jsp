<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>��ǰ �� ����</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">��ǰ ����</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename()%>" style="width:100%">
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><b>��ǰ �ڵ� : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
				<p><b>������</b> : <%=product.getManufacturer()%>
				<p><b>�з�</b> : <%=product.getCategory()%>
				<p><b>��� ��</b> : <%=product.getUnitsInStock()%>
				<h4><%=product.getUnitPrice()%>��</h4>
				<p><a href="#" class="btn btn-info">��ǰ �ֹ� &raquo;</a> <a href="./products.jsp" class="btn btn-secondary"> ��ǰ ��� </a>
			</div>
		</div>	
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>