<%@page import="java.time.Month"%>
<%@page import="java.time.LocalDate"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Attendance</title>
<link rel="icon" href="../images/Krios-icon-header.png"
	type="image/icon type">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Bootstrap Styles-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FontAwesome Styles-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- Morris Chart Styles-->
<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="assets/css/custom-styles.css" rel="stylesheet" />
<!-- Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<style>
body {
	background-color: #E8E8E8;
}

table:hover {
	background-color: #E8E8E8;
}

#mydiv {
	width: 1200px;
	padding: 10px;
	border: 0.5px;
	-webkit-box-shadow: 0 30px 60px 0;
	margin: 20px;
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 4px 4px 4px 4px;
	background: #fff;
	padding: 30px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
}
</style>

<body>
<%
	String date = ""; 
	String maxDate = "";
	LocalDate currentdate = LocalDate.now();
	int currentMonth = currentdate.getMonthValue();
	int currentYear = currentdate.getYear();
	if(String.valueOf(currentMonth).length() == 1){		
		date = currentYear+"-0"+currentMonth;
		maxDate = date;
	}else{
		date = currentYear+"-"+currentMonth;
		maxDate = date;
	}
%>

	<div>
		<jsp:include page="./components/userNavbar.jsp" />
	</div>
	<div style="position: absolute; left: 96px; top: 60px;">
		<font color="green">${message}</font>
	</div>

	<div class=" container"
		style="position: absolute; left: 70px; top: 60px; padding-top: 12px; padding-bottom: 10px;"
		id="mydiv">
		<table>
			<tr>
				<td align="left">
					<div>
						<font color="black"
							style="font-family: sans-serif; font-size: 15px;">&nbsp&nbsp&nbspUPLOAD
							ATTENDANCE SHEET</font>
					</div>
				</td>
				<td></td>
				<td align="right">
					<!-- Button trigger modal -->

					<div class=" container"
						style="position: absolute; left: 88%; top: 0px; width: 6%;">
						<button data-toggle="modal"
							style="background-color: white; border: 0px;"
							data-target="#exampleModal">
							<img src="../images/folder.png" style="width: 138%;"></img>
						</button>
					</div> <!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content" style="margin-top: 21%;">
								<div class="modal-header" align="left">
									<h4 class="modal-title" id="exampleModalLabel">ATTENDANCE
										SHEET</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
									<div>
										<table class="table table-hover">
											<thead>
												<tr class="table-active"
													style="border-top: 1px solid white; background-color: #36C5F0;">
													<th>Id</th>
													<th>Name</th>
													<th>Sheet-Of</th>
													<th>Upload Date</th>
													<th>Download Link</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${sheets}" var="sheet">
													<tr class="table-danger">
														<td><c:set var="count" value="${count + 1}"
																scope="page" /> <c:out value="${count}" /></td>
														<td>${sheet.getSheetName()}</td>
														<td>${sheet.getSheetOf()}</td>
														<td>${sheet.getUploadDate()}</td>
														<td><a href="/downloadSheet/${sheet.getSheetId()}">Download</a></td>
														<td><a href="/deleteSheet/${sheet.getSheetId()}"><span
																class="glyphicon glyphicon-trash" style="color: red"></span></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>

								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										style="background-color: red;" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div style="position: absolute; left: 70px; top: 108px;">
	<form id="uploadFiles" name="uploadFiles"
							method="post" action="/uploadSheet" encType="multipart/form-data">
		<table class="table table-hover" id="mydiv">
			<tbody>
				<tr>
					<th colspan="2" align="center" style="padding-top:16px">
						<p> Date <input type="month" name="sheetOf" value="<%=date %>" max="<%=maxDate %>"/> </p>
					</th>
					<th align="center">
							<input type="file" name="files" multiple required />
							<p style="color: red;">(upload only Excel, xlsx type)</p></th>
					<th align="center"><button type="submit" class="btn col-md-6"
							style="padding: 1px 4px; background-color: green; color: white; width: 100%; border-radius: 3px; margin-left: 1%; box-shadow: 0px 2px 2px gray;">
							<span class="material-icons "
								style="font-size: 34px; float: left;">cloud_upload</span><span
								style="font-size: 16px; top: 7px; left: 46px; position: absolute;">Upload</span>
						</button>
					</th>
				</tr>
			</tbody>
		</table>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<div class="container">
		<jsp:include page="./components/footer.jsp" />
	</div>
</body>
</html>