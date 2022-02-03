<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employment Form</title>
<link rel="icon" href="../images/Krios-icon-header.png"
	type="image/icon type">
<meta charset="utf-8" />
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $("#userform :input").prop("disabled", ${status});
    });
</script>
</head>
<style>
body {
	background-color: #E8E8E8;
}

table {
	padding-left: 0.5px;
	padding-right: 0.5px;
}

#mydiv {
	width: 1189px;
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
	text-align: left;
}

button {
	background-color: #34AB53;
	color: white;
	padding: 7px 12px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	border-radius: 10px 10px 10px 10px;
}

button:hover {
	opacity: 0.8;
}

table, th, td {
	border: 1px;
}

th, td {
	padding: 7px;
	text-align: left;
}

.panel-group .panel+.panel {
	margin-top: -2px;
}
</style>
<body>

	<div>
		<jsp:include page="./components/userNavbar.jsp" />
	</div>
	<div
		style="position: absolute; left: 76px; top: 55px; padding-top: 6px; padding-bottom: 6px;"
		id="mydiv">
		<font color="black" style="font-family: sans-serif; font-size: 15px;">&nbsp;
			EMPLOYMENT FORM</font>
	</div>
	<br>
	<div class="container" align="center" id="mydiv"
		style="position: absolute; left: 76px; top: 92px;">
		<form action="/updateUser" id = "userform" class="form-inline" method="post">
			<b>
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading" align="left">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapse1"><span
									class="glyphicon glyphicon-circle-arrow-down"></span></a><font
									color="#1BAFD0" style="font-family: sans-serif;" size="3px">&nbsp&nbsp
									Personal Details (To be filled as per your Aaadhar Card/PAN
									Details/Passport)</font>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">
								<table>
									<tr>

									</tr>
									<tr>
										<td align="right">First Name
												<i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="text" class="form-control"
											placeholder="Enter First Name" name="firstName"
											value="${user.getFirstName()}" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only" required />
											</td>

										<td align="right">Middle Name <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="text" class="form-control"
											placeholder="Enter Middle Name" name="middleName"
											value="${user.getMiddleName()}" 
											title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');"  required /></td>
										<td>Last Name <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="text" class="form-control"
											placeholder="Enter Last Name" name="lastName"
											value="${user.getLastName()}" 
											title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" required /></td>

									</tr>

									<tr>
										<td colspan="1">Date Of Birth <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i> </td>
										<td><input type="date" name="birthDate"
											class="form-control" style="width: 215px; height: 38px;"
											value="${user.getBirthDate()}" required /></td>
									</tr>
									<tr>
										<td colspan="1">Place Of Birth  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i>
										<td><input type="text" placeholder="Place" name="place"
											class="form-control" value="${user.getPlace()}"
											title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" required />
											</td>
										<td align="left"></td>
										<td></td>
										<td align="right">Marital Status <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i> </td>
										<td><input type="text" class="form-control"
											name="maritalStatus" placeholder="Marital Status"
											value="${user.getMaritalStatus()}" 
											title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');"   required /></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Gender <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i> </td>
										<td><input class="form-check-input" type="radio" 
											name="gender" id="flexRadioDefault1" checked value="Male">
											Male <input class="form-check-input" type="radio"
											name="gender" id="flexRadioDefault2" value="Female" required />
											Female</td>
										<td></td>
										<td></td>
										<td>Blood Group <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="text" class="form-control"
											name="bloodGroup" placeholder="Blood Group"
											value="${user.getBloodGroup()}"  required /></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Present Address <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i> </td>
										<td><input type="text" class="form-control"
											name="presentAddress" placeholder="Present Address"
											value="${user.getPresentAddress()}" required /></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Tel(R)</td>
										<td><input type="text" name="telephone"
											class="form-control" placeholder="Telephone Number" value="${user.getTelephone()}"
													 title="Error Message" pattern="[1-9]{1}[0-9]{9}" required /></td>
										<td></td>
										<td></td>
										<td align="right">Mobile  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="number" class="form-control" name="mobile"
											placeholder="Mobile Number" 
													 title="Error Message" pattern="[1-9]{1}[0-9]{9}"
											value="${user.getMobile()}"  required /></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Email-ID  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="email" class="form-control" name="email"
											placeholder="Email" value="${user.getEmail()}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
													required /></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Permanent Address <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i> </td>
										<td><input type="text" class="form-control"
											name="permanentAddress" placeholder="Permanent Address"
											value="${user.getPresentAddress()}" required />
											</textarea></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Permanent Tel(R)</td>
										<td><input type="text" name="permanentTelephone"
											class="form-control" placeholder="Permanent Telephone Number"
											value="${user.getPermanentTelephone() }"  title="Error Message" pattern="[1-9]{1}[0-9]{9}"  /></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td></td>
									</tr>
									<tr>
										<td colspan="6">Any relatives in Krios Info Solution Pvt
											Ltd., or its group companies? If yes, give details</td>
									<tr>
										<td>Name</td>
										<td><input type="text" class="form-control"
											placeholder="Enter Full Name" name="relativeName"
											value="${user.getRelativeName()}" 
											title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" /></td>
										<td>Position</td>
										<td><input type="text" class="form-control"
											placeholder="Enter Position" name="relativePosition"
											value="${user.getRelativePosition()}"
											 title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" /></td>
										<td>Relationship</td>
										<td><input type="text" class="form-control"
											placeholder="Enter Relationship" name="relativesRelationship"
											value="${user.getRelativesRelationship()}"
											 title="Enter a character only" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" /></td>
									</tr>
									<tr>

									</tr>

									<tr>
										<td colspan="7"><hr style="color: black; height: 10px;"></td>
									</tr>
									<tr>
										<td colspan="6"><font color="#1BAFD0"
											style="font-family: sans-serif;" size="3px">ID Proof
												Details</font></td>
									</tr>
									<tr>

									</tr>
									<tr>
										<td>Aadhar Card No <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="text" name="adharNumber" id="adharNumber"
											value="${user.getAdharNumber()}" class="form-control"
													 pattern="^[0-9]{12}$" required /></td>
										<td>PAN No <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
										<td><input type="text" name="panNumber"
											value="${user.getPanNumber()}" class="form-control"
													pattern="^[A-Z]{5}[0-9]{4}[A-Z]{1}$"
											title="Enter Valid Pan Number "  required /></td>
									</tr>

								</table>
							</div>
						</div>
						<div class="panel panel-default" align="left">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapse2"><span
										class="glyphicon glyphicon-circle-arrow-down"></span></a><font
										color="#1BAFD0" style="font-family: sans-serif;" size="3px">&nbsp&nbsp
										Bank Details</font>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse">
								<div class="panel-body">
									<table>
										<tr>
											<td>Account Holder Name  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
											<td><input type="text" name="holderName"
												value="${user.getHolderName()}" class="form-control"
												 title="Enter a full name"
												pattern="[a-zA-Z\s]+"   required /></td>
										</tr>
										<tr>
											<td>Bank Name  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
											<td><input type="text" name="bankName"
												value="${user.getBankName()}" class="form-control"
												 title="Enter a character only" pattern="[a-zA-Z\s]+" 
														 required /></td>
										</tr>
										<tr>
											<td>Bank Account No <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
											<td><input type="number" name="accountNumber"
												value="${user.getAccountNumber()}" class="form-control"
												 title="Enter only Number"  pattern="^[0-9]{12,16}$"
														  /></td>
										</tr>
										<tr>
											<td>Bank Branch Name <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
											<td><input type="text" name="branchName"
												value="${user.getBranchName()}" class="form-control"
												 title="Enter only character"pattern="[a-zA-Z\s]+" 
														 required /></td>
										</tr>
										<tr>
											<td>IFSC Code  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
											<td><input type="text" name="ifscCode"
												value="${user.getIfscCode()}" class="form-control"
												 title="Enter valid IFSC" pattern="^[A-Z]+[A-Z0-9]+$"
														   required /></td>
										</tr>
										<tr>
											<td colspan="4">If you have your PF Account Number & UAN
												No(If you want to continue existing Account)</td>
										<tr>
											<td>PF Account Number</td>
											<td><input type="text" name="pfAccountNumber"
												value="${user.getPfAccountNumber()}" class="form-control"
												title="Enter valid PF Account Number" pattern="^[A-Z]{5}[0-9]{6}[0]{5}[0-9]{5}$" ></td>
											<td>UAN No</td>
											<td><input type="text" name="uanNumber"
												value="${user.getUanNumber()}" class="form-control"
												title="Enter valid UAN Number" pattern="^[0-9]{12,15}$" ></td>
										</tr>
										<tr> 

										</tr>
										<tr>

										</tr>
									</table>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse3"><span
											class="glyphicon glyphicon-circle-arrow-down"></span></a><font
											color="#1BAFD0" style="font-family: sans-serif;" size="3px">&nbsp&nbsp
											Family Background</font>
									</h4>
								</div>
								<div id="collapse3" class="panel-collapse collapse">
									<div class="panel-body">
										<table>
											<tr>

											</tr>
											<tr>
												<th></th>
												<th>Name</th>
												<th align="left">Contact details</th>
												<th>Education</th>
												<th>Occupation</th>
											</tr>
											<tr>
												<td>Father <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
												<td><input type="text" name="fatherName"
													value="${user.getFatherName()}" class="form-control"
													 title="Enter a character only"
															 pattern="[a-zA-Z\s]+"   required /></td>
												<td><input type="text" name="fatherContactNumber"
													value="${user.getFatherContactNumber()}"
													class="form-control"  title="Error Message" pattern="[1-9]{1}[0-9]{9}"   required /></td>
												<td><input type="text" name="fatherEducation"
													value="${user.getFatherEducation()}" class="form-control"
															 required /></td>
												<td><input type="text" name="fatherOccupation"
													value="${user.getFatherOccupation()}" class="form-control"
													 title="Enter a character only" pattern="[a-zA-Z\s]+"   required /></td>
											</tr>
											<tr>
												<td>Mother <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
												<td><input type="text" name="motherName"
													value="${user.getMotherName()}" class="form-control"
												title="Enter a character only" pattern="[a-zA-Z\s]+"
														 required /></td>
												<td><input type="text" name="motherContactNumber"
													value="${user.getMotherContactNumber()}"
													class="form-control"  title="Error Message" pattern="[1-9]{1}[0-9]{9}"  required /></td>
												<td><input type="text" name="motherEducation"
													value="${user.getMotherEducation()}" class="form-control"
															 required /></td>
												<td><input type="text" name="motherOccupation"
													value="${user.getMotherOccupation()}" class="form-control" pattern="[a-zA-Z\s]+"
													 title="Enter a character only" required /></td>
											</tr>
											<tr>
												<td>Wife/Husband</td>
												<td><input type="text" name="wOrHName"
													value="${user.getwOrHName()}" class="form-control" pattern="[a-zA-Z\s]+"
													title="Enter a character only"></td>
												<td><input type="text" name="wOrHContactNumber"
													value="${user.getwOrHContactNumber()}" class="form-control"
															 title="Error Message" pattern="[1-9]{1}[0-9]{9}"></td>
												<td><input type="text" name="wOrHEducation"
													value="${user.getwOrHEducation()}" class="form-control"
													 title="Enter a character only"></td>
												<td><input type="text" name="wOrHOccupation"
													value="${user.getwOrHOccupation()}" class="form-control"
													title="Enter a character only" pattern="[a-zA-Z\s]+" /></td>
											</tr>
											<tr>
												<td>Children</td>
												<td><input type="text" name="childrenName"
													value="${user.getChildrenName()}" class="form-control"
													 title="Enter a character only" pattern="[a-zA-Z\s]+" /></td>
												<td><input type="text" name="childrenContactNumber"
													value="${user.getChildrenContactNumber()}"
													class="form-control"  title="Error Message" pattern="[1-9]{1}[0-9]{9}"></td>
												<td><input type="text" name="childrenEducation"
													value="${user.getChildrenEducation()}" class="form-control"
													 /></td>
												<td><input type="text" name="childrenOccupation" pattern="[a-zA-Z\s]+"
													value="${user.getChildrenOccupation()}"
													class="form-control"
													title="Enter a character only"></td>
											</tr>
											<tr>
												<td>Brother(s)</td>
												<td><input type="text" name="brotherName"
													value="${user.getBrotherName()}" class="form-control"
													 title="Enter a character only" pattern="[a-zA-Z\s]+" /></td>
												<td><input type="text" name="brotherContactNumber"
													value="${user.getBrotherContactNumber()}"
													class="form-control"  title="Error Message" pattern="[1-9]{1}[0-9]{9}"></td>
												<td><input type="text" name="brotherEducation"
													value="${user.getBrotherEducation()}" class="form-control"
													 /></td>
												<td><input type="text" name="brotherOccupation"
													value="${user.getBrotherOccupation()}" class="form-control" pattern="[a-zA-Z\s]+"
													 title="Enter a character only"></td>
											</tr>
											<tr>
												<td>Sister(s)</td>
												<td><input type="text" name="sisterName"
													value="${user.getSisterName()}" class="form-control"
													 title="Enter a character only" pattern="[a-zA-Z\s]+" /></td>
												<td><input type="text" name="sisterNumber"
													value="${user.getSisterNumber()}" class="form-control"
															 title="Error Message" pattern="[1-9]{1}[0-9]{9}"></td>
												<td><input type="text" name="sisterEducation"
													value="${user.getSisterEducation()}" class="form-control"
													/></td>
												<td><input type="text" name="sisterOccupation"
													value="${user.getSisterOccupation()}" class="form-control" pattern="[a-zA-Z\s]+"
													 title="Enter a character only"></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapse4"><span
												class="glyphicon glyphicon-circle-arrow-down"></span></a><font
												color="#1BAFD0" style="font-family: sans-serif;" size="3px">&nbsp&nbsp
												Education: List in order starting with Xth Standard</font>
										</h4>
									</div>
									<div id="collapse4" class="panel-collapse collapse">
										<div class="panel-body">
											<table>
												<tr>

												</tr>
												<tr>
													<th rowspan="2">School/College/<br> University
													</th>
													<th rowspan="2">Period</th>
													<th rowspan="2">Degree/Diploma</th>
													<th rowspan="2">Specialization</th>
													<th rowspan="2">%</th>
													<th rowspan="2">Class/Div</th>
												</tr>
												<!-- <tr>
													<td>FROM &nbsp&nbsp &nbsp&nbsp TO</td>

												</tr> -->
												<tr>
													<td></td>
												</tr>
												<tr>

													<td>S.S.C.  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
													<td><input type="month" name="periodFrom"
														placeholder="From" value="${user.getPeriodFrom()}"
														 
														style="margin-bottom: 10px; width :150px"  required />
													
													<input type="month" name="periodTo" placeholder="To"
														value="${user.getPeriodTo()}" 
														
														style="margin-bottom: 10px; width: 150px"  required /></td>
													<td><input type="text" name="degreeOrDiploma"
														value="${user.getDegreeOrDiploma()}" title=""
																 required /></td>
													<td><input type="text" name="specialization"
														value="${user.getSpecialization()}"></td>
													<td><input type="text" name="percentage"
														value="${user.getPercentage()}"
																
														title="Please fill like'60.54'"  required /></td>
													<td><input type="text" name="classOrDiv"
														value="${user.getClassOrDiv()}"  required /></td>

												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>H.S.C. <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
													<td><input type="month" name="hscPeriodFrom"
														placeholder="From" value="${user.getHscPeriodFrom()}"
														title="" 
														style="margin-bottom: 10px; width: 150px"> <input
														type="month" name="hscPeriodTo" placeholder="To"
														value="${user.getPeriodTo()}" 
														
														style="margin-bottom: 10px; width:150px"></td>
													<td><input type="text" name="hscDegreeOrDiploma"
														value="${user.getHscDegreeOrDiploma()}" title=""
														></td>
													<td><input type="text" name="hscSpecialization"
														value="${user.getHscSpecialization()}" title=""
														></td>
													<td><input type="text" name="hscPercentage"
														value="${user.getHscPercentage()}"
														
																pattern="^[0-9]*[.,]*[0-9]*" title="Please fill like 60.54 "/ ></td>
													<td><input type="text" name="hscclassOrDiv"
														value="${user.getHscclassOrDiv()}"pattren="^[0-9]*"
														></td>

												</tr>
												<tr>
													<td></td>
												</tr>
												<tr>
													<td>Degree <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
													<td><input type="month" name="degreePeriodFrom"
														placeholder="From"
														value="${user.getDegreePeriodFrom()} title="
														
														style="margin-bottom: 10px; width: 150px" required /> <input
														type="month" name="degreePeriodTo" placeholder="To"
														value="${user.getDegreePeriodTo()}" 
														
														style="margin-bottom: 10px; width: 150px"  required /></td>
													<td><input type="text" name="degreeDegreeOrDiploma"
														value="${user.getDegreeDegreeOrDiploma()}"
														title="Degree is requried "  required /></td>
													<td><input type="text" name="degreeSpecialization"
														value="${user.getDegreeSpecialization()}" 
																 required /></td>
													<td><input type="text" name="degreePercentage"
														value="${user.getDegreePercentage()}"
																pattern="^[0-9]*[.,]*[0-9]*" title="Please fill like'60.54'"  required /></td>
													<td><input type="text" name="degreeClassOrDiv"
														value="${user.getDegreeClassOrDiv()}"
																 required /></td>

												</tr>
											</table>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse5"><span
													class="glyphicon glyphicon-circle-arrow-down"></span></a><font
													color="#1BAFD0" style="font-family: sans-serif;" size="3px">&nbsp&nbsp
													Computer Knowledge</font>
											</h4>
										</div>
										<div id="collapse5" class="panel-collapse collapse">
											<div class="panel-body">
												<table>
													<tr>

													</tr>
													<tr>
														<td>Programming Language</td>
														<td><input type="text" name="programingLanguages"
															value="${user.getProgramingLanguages()}"
															 title="Enter a character only"
																	 required /></td>
													</tr>
													<tr>
														<td>Application(s) Software / Packages</td>
														<td><input type="text" name="applicationSoftware"
															value="${user.getApplicationSoftware()}"
															 title="Enter a character only"  /></td>
													</tr>
													<tr>
														<td>Certifications (Mention version & date)</td>
														<td><input type="text" name="cert_Version"
															value="${user.getCert_Date()}"> &nbsp&nbsp <input
															type="date" name="cert_Date" 
															title="Enter a character only"></td>
													</tr>

													<tr>

													</tr>
												</table>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapse6"><span
														class="glyphicon glyphicon-circle-arrow-down"></span></a><font
														color="#1BAFD0" style="font-family: sans-serif;"
														size="3px">&nbsp&nbsp Career Objectives </font>
												</h4>
											</div>
											<div id="collapse6" class="panel-collapse collapse">
												<div class="panel-body">
													<table>
														<tr>

														</tr>
														<tr>
															<td>Any plans for future studies? if yes, give
																details  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
															<td><input type="text" name="futureStudy"
																value="${user.getFutureStudy()}"
																 title="Please Fill"
																		 required /></td>
														</tr>
														<tr>
															<td>State your career objectives for the next three
																years (please be specific)  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
															<td><input type="text" name="careerObjective"
																value="${user.getCareerObjective()}"
																 title="Please Fill"
																		 required /></td>
														</tr>


													</table>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapse7"><span
															class="glyphicon glyphicon-circle-arrow-down"></span></a><font
															color="#1BAFD0" style="font-family: sans-serif;"
															size="3px">&nbsp&nbsp Languages Known</font>
													</h4>
												</div>
												<div id="collapse7" class="panel-collapse collapse">
													<div class="panel-body">
														<table>
															<tr>

															</tr>
															<tr align="center">
																<th>Languages</th>
																<th>Read  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></th>
																<th>Write <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></th>
																<th>Speak  <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></th>
																<th>Comprehend <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></th>
																<th>Mother tongue <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></th>
															</tr>
															<tr>
																<td>Marathi <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																<td><input type="text" name="m_Read"
																	value="${user.getM_Read()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="m_Write"
																	value="${user.getM_Write()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="m_Speak"
																	value="${user.getM_Speak()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="m_Comprehend"
																	value="${user.getM_Comprehend()}"
																	 title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="m_MotherTongue"
																	value="${user.getM_MotherTongue()}"
																	 title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
															</tr>
															<tr>
																<td>Hindi <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																<td><input type="text" name="h_Read"
																	value="${user.getH_Read()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="h_Write"
																	value="${user.getH_Write()}"
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="h_Speak"
																	value="${user.getH_Speak()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"  required /></td>
																<td><input type="text" name="h_Comprehend"
																	value="${user.getH_Comprehend()}"
																	 title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="h_MotherTongue"
																	value="${user.getH_MotherTongue()}"
																 title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
															</tr>
															<tr>
																<td>English <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																<td><input type="text" name="e_Read"
																	value="${user.getE_Read()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="e_Write"
																	value="${user.getE_Write()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="e_Speak"
																	value="${user.getE_Speak()}" 
																	title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="e_Comprehend"
																	value="${user.getE_Comprehend()}"
																	 title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
																<td><input type="text" name="e_MotherTongue"
																	value="${user.getE_MotherTongue()}"
																	 title="Yes Or No" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only"   required /></td>
															</tr>
															<tr>
																<td>Other</td>
																<td><input type="text" name="o_Read"
																	value="${user.getO_Read()}" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only" /></td>
																<td><input type="text" name="o_Write"
																	value="${user.getO_Write()}" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only" /></td>
																<td><input type="text" name="o_Speak"
																	value="${user.getO_Speak()}" onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only" /></td>
																<td><input type="text" name="o_Comprehend"
																	value="${user.getO_Comprehend()}"
																			onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only" /></td>
																<td><input type="text" name="o_MotherTongue"
																	value="${user.getO_MotherTongue()}"
																			onkeyup="this.value=this.value.replace(/[^A-z]/g,'');" title="Enter a character only" /></td>
															</tr>
														</table>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h4 class="panel-title">
															<a data-toggle="collapse" data-parent="#accordion"
																href="#collapse8"><span
																class="glyphicon glyphicon-circle-arrow-down"></span></a><font
																color="#1BAFD0" style="font-family: sans-serif;"
																size="3px">&nbsp&nbsp Employment History</font>
														</h4>
													</div>
													<div id="collapse8" class="panel-collapse collapse">
														<div class="panel-body">
															<table>
																<tr>

																</tr>
																<tr>
																	<td>Technical Skills</td>
																	<td><input type="text" name="tech_Skill1"
																		value="${user.getTech_Skill1()}"
																		></td>
																	<td>Other Skills</td>
																	<td><input type="text" name="otherSkill1"
																		value="${user.getOtherSkill1()}"
																		></td>
																</tr>
																<tr>
																	<td>Total experience in years <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																	<td><input type="text" name="experience"
																		value="${user.getExperience()}"
																		 title="Please fill"
																				 required /></td>
																	<td>Relevant Experience</td>
																	<td><input type="text" name="relevantExperience"
																		value="${user.getRelevantExperience()}"
																		></td>
																</tr>
															</table>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapse9"><span
															class="glyphicon glyphicon-circle-arrow-down"></span></a><font
															color="#1BAFD0" style="font-family: sans-serif;"
															size="3px">&nbsp&nbsp Previous Employment Details</font>
													</h4>
												</div>
												<div id="collapse9" class="panel-collapse collapse">
													<div class="panel-body">
														<table>
															<tr>

															</tr>
															<tr>
																<td>Employer</td>
																<td><input type="text" name="employer"
																	value="${user.getEmployer()}"
																			pattern="[a-zA-Z\s]+" /></td>
																<td>Type of business</td>
																<td><input type="text" name="businessType"
																	value="${user.getBusinessType()}"
																			pattern="[a-zA-Z\s]+" /></td>
															</tr>
															<tr>
																<td>Address</td>
																<td><textarea rows="4" cols="22" name="emp_Address"
																		value="${user.getEmp_Address()}"
																		></textarea></td>
															</tr>
															<tr>
																<td>Reason for seeking change/leaving</td>
																<td><textarea rows="4" cols="22"
																		name="reson_Change" value="${user.getReson_Change()}"
																		></textarea></td>
															</tr>
															<tr>
																<td>Period of Service(From-To)</td>
																<td><input type="date" name="serviceFrom"
																	value="${user.getServiceFrom()}"
																	 style="width: 100%"></td>
																<td></td>
																<td><input type="date" name="serviceTo"
																	value="${user.getServiceTo()}"
																	 style="width: 100%"></td>
															</tr>
															<tr>
																<td>Salary Drawn (CTC) <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																<td><input type="text" name="drawnCTC"
																	value="${user.getDrawnCTC()}" pattern="^[0-9]*[.,]*[0-9]*" title="Enter numbers" /></td>
															</tr>
															<tr>
																<td>Ph. No. (s)</td>
																<td><input type="text" name="emp_phone"
																	value="${user.getEmp_phone()}"  title="Error Message" pattern="[1-9]{1}[0-9]{9}"></td>
															</tr>
															<tr>
																<td>Designation</td>
																<td><input type="text" name="designation"
																	value="${user.getDesignation()}"
																	></td>
															</tr>
															<tr>
																<td>Name of immediate senior</td>
																<td><input type="text" name="seniorName"
																	value="${user.getSeniorName()}"
																	></td>
															</tr>
															<tr>
																<td>Designation of immediate senior</td>
																<td><input type="text" name="seniorDesignation"
																	value="${user.getSeniorDesignation()}"
																	></td>
															</tr>
															<tr>

															</tr>
														</table>
														<br> <br>
														<table>
															<tr>
																<td>Current CTC <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																<td><input type="text" name="currentCTC"
																	value="${user.getCurrentCTC()}" pattern="^[0-9]*[.,]*[0-9]*" title="Enter numbers"  required /></td>
																<td>Expected CTC</td>
																<td><input type="text" name="expectedCTC"
																	value="${user.getExpectedCTC()}"pattern="^[0-9]*[.,]*[0-9]*" title="Enter numbers" /></td>
															</tr>
															<tr>
																<td>Joining Date <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i></td>
																<td><input type="date" name="joinTime"
																	value="${user.getJoinTime()}" "
																	title="Please fill" 
																	style="width: 196px;"  required /></td>
															</tr>
															<tr>
																<td>Do you need Relocation? Yes / No(if eligible)</td>
																<td><input type="text" name="relocation"
																	value="${user.getRelocation()}"
																			pattern="[a-zA-Z\s]+"></td>
															</tr>

														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapse10"><span
														class="glyphicon glyphicon-circle-arrow-down"></span></a><font
														color="#1BAFD0" style="font-family: sans-serif;"
														size="3px">&nbsp&nbsp Previous Jobs</font>
												</h4>
											</div>
											<div id="collapse10" class="panel-collapse collapse">
												<div class="panel-body">
													<table>
														<tr>
															<td colspan="3">Start with your present job and work
																backwards. Account for time whenever unemployed.</td>
														</tr>
														<tr>

														</tr>
														<tr>
															<td rowspan="2">Sr.No</td>
															<td rowspan="2">Name and Address of Employer (Please
																also give Telephone Nos.)</td>
															<td>Period</td>
															<td rowspan="2">Designation</td>
															<td rowspan="2">Last Salary Drawn</td>
														</tr>
														<tr>
															<td>From &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp TO</td>
														</tr>
														<tr>
															<td>1</td>
															<td><input type="text" name="employerName1"
																placeholder="Name" value="${user.getEmployerName1()}"
																
																style="margin-bottom: 10px; width: 58%" pattern="[a-zA-Z\s]+"> <input
																type="text" name="employerAddress1"
																placeholder="Address"
																value="${user.getEmployerAddress1()}"
																
																style="margin-bottom: 10px; width: 58%"></td>
															<td><input type="date" name="employerFrom1"
																value="${user.getEmployerFrom1()}"
																style="margin-bottom: 10px; width: 58%"> <input
																type="date" name="employerTo1"
																value="${user.getEmployerTo1()}"
																
																style="margin-bottom: 10px; width: 58%"></td>
															<td><input type="text" name="employerDesignation1"
																placeholder="Designation"pattern="[a-zA-Z\s]+"
																value="${user.getEmployerDesignation1()}"
																></td>
															<td><input type="text" name="lastSalary1"
																placeholder="Last Salary"
																value="${user.getLastSalary1()}" 
																 pattern="^[0-9]*[.,]*[0-9]*" title="Enter numbers"></td>
														</tr>
														<tr>
															<td></td>
														</tr>
														<tr>
															<td>2</td>
															<td><input type="text" name="employerName2"
																placeholder="Name" value="${user.getEmployerName2()}"
																
																style="margin-bottom: 10px; width: 58%" pattern="[a-zA-Z\s]+"> <input
																type="text" name="employerAddress2"
																placeholder="Address"
																value="${user.getEmployerAddress2()}"
															
																style="margin-bottom: 10px; width: 58%"></td>
																
															<td><input type="date" name="employerFrom2"
																value="${user.getEmployerFrom2()}"
																	
																style="margin-bottom: 10px; width: 58%"> <input
																type="date" name="employerTo2"
																value="${user.getEmployerTo2()}"
																
																style="margin-bottom: 10px; width: 58%"></td>
															<td><input type="text" name="employerDesignation2"
																placeholder="Designation" pattern="[a-zA-Z\s]+"
																value="${user.getEmployerDesignation2()}"
																></td>
															<td><input type="text" name="lastSalary2"
																placeholder="Last Salary"
																value="${user.getLastSalary2()}" 
																		 pattern="^[0-9]*[.,]*[0-9]*" title="Enter numbers" /></td>
														</tr>

														<tr>
															<td>Hobbies & <i class="fa fa-asterisk " style="font-size:8px;color:red; position: absolute;margin-left:3px;"></i> Interests   </td>
															<td><textarea rows="3" cols="25" name="hobbies"
																	value="${user.getHobbies()}" 
																	title="Please Fill" pattern="[a-zA-Z\s]+"  required /></textarea></td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse11"><span
													class="glyphicon glyphicon-circle-arrow-down"></span></a><font
													color="#1BAFD0" style="font-family: sans-serif;"
													style="font-family: sans-serif;" size="3px">&nbsp&nbsp
													Passport / Visa Details (If available)</font>
											</h4>
										</div>
										<div id="collapse11" class="panel-collapse collapse">
											<div class="panel-body">
												<table>
													<tr>
														<td>Passport No</td>
														<td><input type="text" maxlength="9" minlength="8" name="passportNo"
															value="${user.getPassportNo()}" ></td>
														<td>Place of Issue</td>
														<td><input type="text" name="issuePlace" pattern="^[0-9]{8}$"
															title="Passport No Incorrect" value="${user.getIssuePlace()}" ></td>
													</tr>
													<tr>
														<td>Date of Issue</td>
														<td><input type="date" name="issueDate"
															value="${user.getIssueDate()}" style="width: 100%"></td>
														<td>Date of Expiry</td>
														<td><input type="date" name="expiryDate"
															value="${user.getExpiryDate()}"  style="width: 100%"></td>
													</tr>
													<tr>
														<td>Nationality</td>
														<td><input type="text" name="nationality"
															value="${user.getNationality()}" 
															title="Please Fill"   /></td>
														<td>ECNR Status</td>
														<td><input type="text" name="statusECNR"
															value="${user.getStatusECNR()}"
															></td>
													</tr>
													<tr>
														<td>PAN No</td>
														<td><input type="text" name="panNo"
															value="${user.getPanNo()}" pattern="^[A-Z]{5}[0-9]{4}[A-Z]{1}$"
																	title="Enter Valid Pan Number " /></td>
													</tr>
													<tr>
														<td>If not, have you applied for a Passport?</td>
														<td><input type="text" name="notPassport"
															value="${user.getNotPassport()}" 
															title="Yes or No"></td>
													</tr>
													<tr>
														<td>Place and Date of Application</td>
														<td><input type="date" name="app_Date"
											class="form-control" style="width: 215px; height: 38px;"
											value="${user.getApp_Date()}" ></td>
														<td><input type="text" name="app_Place"
															placeholder="Place" value="${user.getApp_Place()}"
															></td>
													</tr>
													<tr>
														<td>Countries travelled abroad</td>
														<td><input type="text" name="travelledCountries"
															value="${user.getTravelledCountries()}"
															></td>
													</tr>
													<tr>
														<td>Have you been refused Visa any time? If yes, give
															details</td>
														<td><input type="text" name="refuseVisa"
															value="${user.getRefuseVisa()}"
															></td>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</b>
			<div align="center">

				<button type="submit">SAVE</button>
			</div>
		</form>
	</div>

</body>
</html>

