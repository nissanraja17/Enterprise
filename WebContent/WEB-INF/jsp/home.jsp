<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<!-- 
<link rel="stylesheet" type="text/css" href="" />
<script type="text/javascript" src=""></script>
-->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.css" />  
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.2/css/select.dataTables.min.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.1.2/css/fixedHeader.dataTables.min.css" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/select/1.2.2/js/dataTables.select.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/fixedheader/3.1.2/js/dataTables.fixedHeader.min.js"></script>
<script>
	$(document).ready(function(){
		//alert("jquery 1.12.4 is working.");
		var dataSet = [["c1ccccc1N", "Structure", "ClagP"], ["ccc", "Structure", "ClagP"], ["c1ccccc1N", "Structure", "Caco2x"], ["ccc", "Structure", "Caco2x"]];
		var table = $("#dataTable").DataTable({
			data: dataSet,
			scrollY: 500,
			paging: true,
			select: true
		});
		$("#hideStructure").click(function(e){
			e.preventDefault();
			var column = table.column(1); // hide structure column with index 1
        	column.visible(false);
		});
		$("#showStructure").click(function(e){
			e.preventDefault();
			var column = table.column(1); // show structure column with index 1
        	column.visible(true);
		});
	});	
</script>

</head>
<body>
	<!-- ${message} back -->
	<button id="hideStructure" type="button">Hide Structure</button>
	<button id="showStructure" type="button">Show Structure</button>
	<br/><br/>
	<table id="dataTable" class="display" style="border: 1px">
		<thead>
			<tr>
				<td>Compound</td>
				<td>Structure</td>
				<td>Model</td>
			</tr>
	</table>	
</body>
</html>