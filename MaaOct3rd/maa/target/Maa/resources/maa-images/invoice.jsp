<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

	<title>Welcome Mail</title>
	<style>
		body {
			font-family: 'Roboto', sans-serif;
			font-size: 13px;
		}

		.head-section h3 small {
			font-size: 14px;
		}

		.common-property i {
			font-size: 50px;
		}

		.common-property p {
			font-size: 14px;
			font-weight: 600;
		}

		p {
			margin-bottom: 3px !important;
		}
	</style>

</head>

<body width="100%" style="margin: 0; padding: 0 !important; mso-line-height-rule: exactly">
	<div class="mx-5"style="margin: 0 auto;border-radius: 4px;" class="email-container">
		<div class="row mt-3">
			<div class="col ml-3">
				<h1>INVOICE</h1>
				<p><b>Invoice Number:</b>#invno</p>
				<p><b>Invoice Date: </b>invdate</p>
				<!-- <p><b>Due Date:20jul 2019</b></p> -->
			</div>
			<div class="col">
				<h6><b>To Bill</b></h6>
				<p>generatedto,<br>
					Mail id:mail<br>
					Phone : phnno
				</p>
			</div>

		</div>

		<div class="row mt-2">
			<div class="col">
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th>Particulars</th>
							<th>Units</th>
							<th>Cost/Unit</th>
							<th>GST%</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Water</td>
							<td>wunit</td>
							<td>wcost</td>
							<td>wgst</td>
							<td>wtotal</td>
						</tr>
						<tr>
							<td>Electricity</td>
							<td>punit</td>
							<td>pcost</td>
							<td>pgst</td>
							<td>ptotal</td>
						</tr>
						<tr>
							<td>Gas</td>
							<td>gunit</td>
							<td>gcost</td>
							<td>ggst</td>
							<td>gtotal</td>
						</tr>
						<tr>
							<td>AC</td>
							<td>aunit</td>
							<td>acost</td>
							<td>agst</td>
							<td>atotal</td>
						</tr>
						<tr>
							<td>Dissel</td>
							<td>duit</td>
							<td>dcost</td>
							<td>dgst</td>
							<td>dtotal</td>
						</tr>
						<tr>
							<td>Other Reading*</td>
							<td>ounit</td>
							<td>ocost</td>
							<td>ogst</td>
							<td>ototal</td>
						</tr>
						<tr>
							<td>Rent</td>
							<td>rent</td>
							<td>rgst</td>
							<td>rtotal</td>
						</tr>
						<tr>
							<td>Maintaince</td>
							<td>maintenance</td>
							<td>mgst</td>
							<td>mtotal</td>
						</tr>
						<!-- <tr>
							<td>Other Bills**</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr> -->
						<tr>
							<th scope="row"></th>
							<td></td>
							<td></td>
							<td><span class="totalData"><b>Total</b></span></td>
							<td><span class="totalData"><b>grndtotal</b></span></td>
						</tr>
					</tbody>
				</table>




			</div>
		</div>
		<div class="row">
			<div class="col">
				<h5>Tearms and Conditons</h5>
				<ol class="ml-2">
				
			
				<li>
					Payment shall be made with in seven days from date of invoice
				</li>
				<li>Taxes if any additional shall be charged at applicable rates</li>
				<li>Taxes if any additional shall be charged at applicable rates</li>
				<li>Taxes if any additional shall be charged at applicable rates</li>
				<li>Taxes if any additional shall be charged at applicable rates</li>
				<li>Taxes if any additional shall be charged at applicable rates</li>
				<li>
					Payment shall be made with in seven days from date of invoice
				</li>
				<li>
					Payment shall be made with in seven days from date of invoice
				</li>
						</ol>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<P><b>Note</b>:Payment shall be made with in seven days from date of invoicePayment shall be made with in seven days from date of invoicePayment shall be made with in seven days from date of invoicePayment shall be made with in seven days from date of invoice</P>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col">
				<h6>Authorized Signatory</h6>
				<p>prtyname</p>
			</div>
			<div class="col text-right">
			<h6>Genarated By</h6>
				<img src="cid:image1" style="height: 70px;">
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="quote text-center">
					<img src="images/logo/save.png">
				</div>
			</div>
		</div>
		
		<div class="row " >
			<div class="col" >
				<p class="text-center" style="border-top:1px solid #ccc;">This is Computer Generated Invoice</p>
			</div>
			<div class="col" >
				<p style="border-top:1px solid #ccc;">E.&O.E</p>
			</div>
		</div>
		
		


	</div>




	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>