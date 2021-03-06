<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body {
	background-color: #E8E8E8;
}


#mydiv {
	width: 821px;
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

table {
	
}

th, td {
	padding-left: 9px
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
	</script>
	<div>
		<jsp:include page="./components/header2.jsp" />
	</div>
	<font color="green">${message2}</font>
	<br>
	<div id="mydiv"
		style="position: absolute; left: 260px; top: 60px; padding-top: 6px; padding-bottom: 6px;">
		<font color="black" style="font-family: sans-serif; font-size: 15px;">&nbsp;
			ADD EMPLOYEE</font>
	</div>

	<div id="mydiv"
		style="background-color: white; position: absolute; left: 260px; top: 97px;">
		<form action="/saveUser" method="post">
			<br>
			<table>
				<tr class="row">
					<td align="left"><b>First Name </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></i></td>
					<td align="left"><input type="text" class="fadeIn third"
						placeholder="Enter First Name" name="firstName"
						style="width: 240px; margin-right: 16px;"  required="required"></td>
					<td ><b>User Name </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></td>
					<td align="left"><input type="text" class="fadeIn fourth"
						name="userName" placeholder="UserName" id="userName"  style="width: 240px;" required="required"></td>
				</tr>
				<tr class="row">
					<td align="left"><b>Middle Name </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></td>
					<td><input type="text" class="fadeIn second"
						placeholder="Enter Middle Name" name="middleName"
						style="width: 240px; margin-right: 16px;"></td>
					<td><b>Last Name </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;"></td>
					<td><input type="text" class="fadeIn first"
					placeholder="Enter Last Name" name="lastName"
					style="width: 240px; margin-right: 16px;" required="required"></td>
				</tr>
				<tr class="row">
					<td align="left"><b>Email </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></td>
						<td><input type="text" class="fadeIn fifth" name="email"
							placeholder="Email" onclick="getPassword()"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
							title=" Invalid Email" style="width: 240px;"></td>
						
					<td ><b>Password </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></td>
					<td><input type="text" class="fadeIn fourth" name="password"
					id="pass" placeholder="Create Password"
					style="width: 240px; margin-right: 16px;" required="required"></td
				</tr>
				<tr class="row">
					<td align="left"><b>Mobile No. </b>
					<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></td>	
						<td><input type="text" class="fadeIn six" name="mobile"
							placeholder="Mobile No." pattern=".{10}"
							title="Mobile No is Must min 10 digit" style="width: 240px;" required="required"></td>
						<td ><b>Location </b>
						<i class="fa fa-asterisk " style="font-size:8px;color:red;position: absolute;margin-left:3px;"></td>
					<td><input type="text" class="fadeIn six" name="location"
						placeholder="Location" style="width: 240px;"></td>
				</tr>
				<tr class="row">
					<td align="left"><b>Lateral Yearly</b></td>
					<td><input type="text" class="fadeIn fourth" name="yearlyPackage"
						id="pass" placeholder="Yearly Package"
						style="width: 240px; margin-right: 16px;"></td>
						<td ><b>Lateral Monthly</b></td>
					<td><input type="text" class="fadeIn six" name="monthlySalary"
						placeholder="Monthly Salary" style="width: 240px;"></td>
				</tr>
				<tr class="row">
					<td align="left"><b>KTP Yearly</b></td>
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
						 value="Submit"
						style="margin-left: 35%; margin-top: 16px;"> <input
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
	
	
	
	
	
	<script type="text/javascript">
	function createUsername()  {
		 var firstName = $('#mydiv input[name=firstName]').val().substring(0,1).toUpperCase();
		 var middleName = $('#mydiv input[name=middleName]').val().substring(0,1).toUpperCase();
		var lastName = $('#mydiv input[name=lastName]').val().toUpperCase();
		  var userName = firstName +middleName+ lastName;
		 $('#mydiv input[name=userName]').val(userName);
		}

		$('#mydiv input[name=firstName]').on('keyup', createUsername);
		$('#mydiv input[name=middleName]').on('keyup', createUsername);
		$('#mydiv input[name=lastName]').on('keyup', createUsername);
	</script>
	
	<div></div>
	<footer>
		<div class="container">
			<jsp:include page="./components/footer.jsp" />
		</div>
	</footer>
</body>
</html>