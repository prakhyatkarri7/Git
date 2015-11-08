<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<title>MSP</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
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
						<li><a href="appointments.go">Appointments</a></li>
						<li class="current"><a href="bills.go">Bills and Payment</a></li>
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
						<span><img width="200" height="200" src="images/bills2.png"
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
						<table id="pipInfoTable" rules="none" width="90%"
							style="text-align: left">
							<tbody>

								<tr>
									<td><span id="temp:firstnametitle">Date</span></td>
									<td><span id="temp:middletitle">Service</span></td>
									<td><span id="temp:lastnametitle">Amount</span></td>
								</tr>
								<c:forEach items="${bills}" var="bill" varStatus="status">
									<tr>
										<td><span id="pipfirstname" style="color: black;">${bill.date}</span></td>
										<td><span id="pipfirstname" style="color: black;">${bill.service}</span></td>
										<td><span id="pipfirstname" style="color: black;">${bill.amount}</span></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<table>
							<tbody>
								<tr>
									<td><table>
											<tbody>
												<tr>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table>
											<tbody>
												<tr>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table id="temp:titlePanel" width="100%"
											style="text-align: left">
											<tbody>
												<tr>
													<td align="left"><span id="temp:appSummaryTitle">Total
															Amount </span></td>
												</tr>
											</tbody>
										</table></td>
									<td><input id="piplastname" name="piplastname" type="text"
										class="pipDemographics" value="${totalAmount}"
										readonly="readonly" size="7" style="color: black;" /></td>
								</tr>
								<tr>
									<td>
										<div class="button_small">
											<a href="#">Pay</a>
										</div>
									</td>
									<td>
										<div class="button_small">
											<a href="#" onclick=window.print()>Print</a>
											
										</div>
									</td>
								</tr>
							</tbody>
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
</body>
</html>
