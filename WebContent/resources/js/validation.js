
function CheckAddProduct() {
	
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	//��ǰ ���̵� üũ
	if (!check(/^P[0-9]{4,11}$/, productId, 
		"[��ǰ �ڵ�]\nP�� ���ڸ� �����Ͽ� 5~12���� �Է��ϼ���\nù ���ڴ� �ݵ�� P�� �����ϼ���"))
		return false;
	
	//��ǰ�� üũ
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[��ǰ��]\n�ּ� 4�ڿ��� �ִ� 12���� �Է��ϼ���");
		name.select();
		name.focus();
		return false;
	}
	
	//��ǰ ���� üũ
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[����]\n���ڸ� �Է��ϼ���");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if (unitPrice.value < 0) {
		alert("[����]\n������ �Է��� �� �����ϴ�");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice,
			"[����]\n�Ҽ��� ��° �ڸ������� �Է��ϼ���"))
			return false;
	
	//��� �� üũ
	if (isNaN(unitsInStock.value)) {
		alert("[��� ��]\n���ڸ� �Է��ϼ���");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	function check(regExp, e, msg) {
		
		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}	
	
	document.newProduct.submit()
}