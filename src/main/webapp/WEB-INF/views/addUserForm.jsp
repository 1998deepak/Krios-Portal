<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<title>Add Employee</title>
<link rel="icon" href="../images/Krios-icon-header.png"
	type="image/icon type">
<!-- Bootstrap Styles-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./css/adduserform.css">
<!--New Success Full design css-->
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>



</head>
<style>
body {
	background-color: #E8E8E8;
}

#mydiv {
	width: 70%;
 	border: 0.5px;
	-webkit-box-shadow: 0 30px 60px 0;
	margin: 20px;
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 4px 4px 4px 4px;
	background: #fff;
	padding: 30px;
	position: relative;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
}

table {

}

</style>

<body>

	<script>
		function checkValidaion(form) {
			password1 = form.password1.value;
			Mobileno = form.Mobileno.value;
			Emailid = form.Emailid.value;
			UserName = form.UserName.value;
			if (password1 == '')
				alert("Please enter Password");

			else if (UserName == '') {
				alert("\nEnter UserName..")
			}

			else if (Mobileno == '') {
				alert("\nEnter Mobile_no..")
				return false;
			} else if (Mobileno = toString) {
				var re = /^[0-9]+$/;
				str = elem.toString();
				if (!str.match(re)) {
					return false;
				}
				return true;
			}

			else if (Emailid) {
				var x = document.getElementById("myEmail").pattern;
				document.getElementById("demo").innerHTML = x;
			} else {
				alert("Password Match: Welcome to the My Wold !")
				return true;
			}
		}
		$(function () {
            TriggerAlertClose();
        });

        function TriggerAlertClose() {
            window.setTimeout(function () {
                $(".alert1").fadeTo(1000, 0).slideUp(1000, function () {
                    $(this).remove();
                });
            }, 5000);
        }
	</script>
	<div>
		<jsp:include page="./components/header2.jsp" />
	</div>

	<br>
	<div id="mydiv"
		style="position: relative; left: 179px; top: 41px; padding-top: 9px; padding-bottom: 12px;">
		<font color="black" style="font-family: sans-serif; font-size: 15px;">&nbsp;
			ADD EMPLOYEE</font>
		<font color="green" class="alert1" role="alert"  style="font-family: sans-serif; font-size: 20px;float:right;margin-right:3%;">${message2}</font>
	</div>

	<div id="mydiv"
		style="background-color: white; position: relative; left: 179px; top: 25px;padding-left: 59px;padding-top: 1px;">
		<form action="/saveUser" method="post">
			<br>
			<table>
				<tr class="row">
					<td  ><b>First Name </b></td>
					<td align="left"><input type="text" class="fadeIn third"
						placeholder="Enter First Name" name="firstName"
						style="width: 240px; margin-right: 16px;" required="required"></td>
					<td ><b  >User Name </b></td>
					<td align="left"><input type="text" class="fadeIn fourth"
						name="userName" placeholder="UserName" style="width: 240px;" required="required"></td>
				</tr>
				<tr class="row" >
					<td style="padding-right: 42px;"><b>Middle Name</b></td>
					<td><input type="text" class="fadeIn second"
						placeholder="Enter Middle Name" name="middleName"
						style="width: 240px; margin-right: 16px;"></td>
					<td ><b>Email </b></td>
					<td><input type="text" class="fadeIn fifth" name="email"
						placeholder="Email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
						title=" Invalid Email" style="width: 240px;"></td>
				</tr>
				<tr class="row">
					<td ><b >Last Name </b></td>
					<td><input type="text" class="fadeIn first"
						placeholder="Enter Last Name" name="lastName"
						style="width: 240px; margin-right: 16px;" required="required"></td>
					<td ><b>Mobile No. </b></td>
					<td><input type="text" class="fadeIn six" name="mobile"
						placeholder="Mobile No." pattern=".{10}"
						title="Mobile No is Must min 10 digit" style="width: 240px;" required="required"></td>
				</tr>
				<tr class="row">
					<td ><b>Password </b></td>
					<td><input type="text" class="fadeIn fourth" name="password"
						id="pass" placeholder="Create Password"
						style="width: 240px; margin-right: 16px;" required="required"></td>
						<td ><b>Location </b></td>
					<td><input type="text" class="fadeIn six" name="location"
						placeholder="Location" style="width: 240px;"></td>
				</tr>
				<tr class="row">
					<td  ><b>Lateral Yearly</b></td>
					<td><input type="text" class="fadeIn fourth" name="yearlyPackage"
						id="pass" placeholder="Yearly Package"
						style="width: 240px; margin-right: 16px;"></td>
						<td ><b>Lateral Monthly</b></td>
					<td><input type="text" class="fadeIn six" name="monthlySalary"
						placeholder="Monthly Salary" style="width: 240px;"></td>
				</tr>
				<tr class="row">
					<td  ><b>KTP Yearly</b></td>
					<td><input type="text" class="fadeIn fourth" name="yearlyPackageKTP"
						id="pass" placeholder="Yearly Package"
						style="width: 240px; margin-right: 16px;"></td>
						<td ><b>KTP Monthly</b></td>
					<td><input type="text" class="fadeIn six" name="monthlySalaryKTP"
						placeholder="Monthly Salary" style="width: 240px;"></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr class="row">
					<td colspan="4"><input type="submit" class="fadeIn fourth"
						onclick="getPassword()"  class="trigger-btn" data-toggle="modal" value="Submit"
						style="margin-left: 41%; margin-top: 16px;"> <input
						type="reset" class="fadeIn fourth" value="Reset"
						style="background-color: #DB4437;"></td>
				</tr>
			</table>
		</form>
	</div>


	<!-- generate a javaScript  for generate auto Password  -->

	<script type="text/javascript">
		function getPassword() {
			var chars = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&";
			var length = 8;
			var password = "";

			for (var i = 0; i < length; i++) {
				var rand = Math.floor(Math.random() * chars.length);
				password += chars.substring(rand, rand + 1);
			}

			document.getElementById("pass").value = password
		}
	</script>

</body>
</html>