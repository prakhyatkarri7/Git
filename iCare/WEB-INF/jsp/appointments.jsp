<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<title>MSP</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>
	<div id="main">

		<header>
			<div id="strapline">
				<div id="welcome_slogan">
					<h3>
						MSP <span>Medical Systems</span>
					</h3>
				</div>
			</div>
			<nav>
				<div id="menubar">
					<ul id="nav">
						<li><a href="home.go">Home</a></li>
						<li class="current"><a href="appointments.go">Appointments</a></li>
						<li><a href="bills.go">Bills and Payment</a></li>
						<li><a href="contact.go">Contact Us</a></li>
						<li><a href="about.go">About</a></li>
					</ul>
				</div>
			</nav>
		</header>


		<div id="site_content">

			<div class="sidebar_container">
				<div class="sidebar">
					<div class="sidebar_item">
						<span><img width="200" height="200" src="images/appo2.png"
							alt="&quot;Enter your caption here&quot;" /></span>
					</div>
				</div>
				<div class="sidebar">
					<div class="sidebar_item"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_item"></div>
				</div>
				<div class="sidebar">
					<div class="sidebar_item"></div>
				</div>
				<!--close sidebar-->
			</div>

			<div id="content">
				<div class="content_item">
					<form id="pipInfoForm" action="updatePIPDemographicsInfo"
						method="post">
						<table class="pagetable" width="100%">
							<tr>
								<td>
									<table border="0" width="100%">
										<tbody>
											<tr>
												<td><table id="temp:titlePanel" width="100%"
														style="text-align: left">
														<tbody>
															<tr>
																<td align="left"><span id="temp:appSummaryTitle"
																	style="font-size: 20px;">Upcoming Appointments</span></td>
															</tr>
														</tbody>
													</table></td>
											</tr>

											<tr>
												<td>

													<form id="pipInfoForm" action="updatePIPDemographicsInfo"
														method="post">
														<table id="pipInfoTable" border="0" rules="none"
															width="90%" style="text-align: left">
															<tbody>
																<c:if test="${appointments.size() > 0 }">
																	<tr>
																		<td><span id="temp:firstnametitle">Date</span></td>
																		<td><span id="temp:lastnametitle">Description</span></td>
																		<td><span id="temp:suffixtitle">Physician</span></td>
																	</tr>
																	<c:forEach items="${appointments}" var="app"
																		varStatus="status">
																		<tr>
																			<td><span id="temp:date" style="color: black;">${app.appointmentDate}</span></td>
																			<td><span id="temp:date" style="color: black;">${app.description}</span></td>
																			<td><span id="temp:date" style="color: black;">${app.physicianName}</span></td>
																		</tr>
																	</c:forEach>
																</c:if>
																<c:if test="${appointment.size() == 0 }">
																	<tr>
																		<span><h3>No Upcoming Appointments</h3></span>
																	</tr>

																</c:if>
															</tbody>
														</table>
													</form>
												</td>
											</tr>
									</table>
								</td>
							</tr>
						</table>
					</form>


					<form id="newAppForm" action="saveAppointment"
						method="post">
						<table class="pagetable" width="100%">
							<tr>
								<td>
									<table border="0" width="100%">
										<tbody>
											<tr>
												<td><table id="temp:titlePanel" width="100%"
														style="text-align: left">
														<tbody>
															<tr>
																<td align="left"><span id="temp:appSummaryTitle"
																	style="font-size: 20px;">Schedule an Appointment</span></td>
															</tr>
														</tbody>
													</table></td>
											</tr>
											<tr>
												<td>
													<form id="newAppForm1" action="saveAppointment"
														method="post">
														<table id="pipInfoTable" border="0" rules="none"
															width="90%" style="text-align: left">
															<tbody>
																<tr>
																	<td><span id="temp:firstnametitle">Date</span></td>
																	<td><input id="date" name="date"
																		type="date" class="pipDemographics" value="" size="10"
																		style="color: black;" /></td>
																</tr>
																<tr>
																	<td><span id="temp:suffixtitle">Physician</span></td>
																	<td>
																		<!-- <input id="pipsuffix" name="pipsuffix"
																		type="text" class="pipDemographics" value="" size="30"
																		style="color: black; " /> --> <select id="doctorName" name="doctorName"
																		size="1" style="color: black;">
																		<option disabled selected> -- select an option -- </option>
																			<option value="Dr. Thomas">Dr. Thomas</option>
																			<option value="Dr. Anthony">Dr. Anthony</option>
																			<option value="Dr. Wilson">Dr. Wilson</option>
																			<option value="Dr. Samuel">Dr. Samuel</option>
																	</select>
																	</td>
																</tr>
																<tr>
																	<td><span id="temp:lastnametitle">Description</span></td>
																	<td><input id="description" name="description"
																		type="text" class="pipDemographics" value="" size="45"
																		style="color: black;" /></td>
																</tr>
																<tr>
																	<td>
																		<div class="button_small">
																			<a href="#" onclick="saveAppointment()">Save</a>
																		</div>
																		<%-- <span><input type="hidden" name="applnNumber"
																			value="${flApplication.applflcasenum}"><input
																			id="editPIPInfo" type="button" value="Save"
																			onclick="updatePIPInfo()" /></span> --%>
																	</td>
																</tr>
															</tbody>
														</table>
													</form>
												</td>
											</tr>
									</table>
								</td>
							</tr>
						</table>
					</form>



				</div>
			</div>
		</div>

		<footer>
			<a href="home.go">Home</a> | <a href="contact.go">Contact</a> | <a
				href="about.go">About us</a></br> <span id="footerbar"
				style="color: Black;">MSP Medical Systems</span>
		</footer>

	</div>

<script type="text/javascript">

function saveAppointment() {
	var date = document.getElementById("date").value;
	var doctorName = document.getElementById("doctorName").value;
	var description = document.getElementById("description").value;
	if (null != date && null != doctorName && null != description) {
		document.getElementById("newAppForm").submit();
	} else {
		
		if (date.length > 0|| doctorName.length > 0 || description.length > 0) {
			var dateValue = "";
			var docValue = "";
			var descValue = "";
			if (date.length == 0){
				dateValue = "Appointment Date";
			}
			if (doctorName.length == 0){
				docValue = "Physician Name";
			}
			if (description.length == 0) {
				descValue = "Description";
			}
			alert("Please complete the fields:Appointment Date Physician Name Description");
		} else if (date.length > 0 && doctorName.length > 0 && description.length > 0) {
			document.getElementById("newAppForm").submit();
		} else {
			alert("Please complete the fields:"+dateValue+" "+docValue+" "+descValue);
		}
		
	}
}
</script>

</body>
</html>
