﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBootstrap.Master" AutoEventWireup="true" CodeBehind="Corporate.aspx.cs" Inherits="FinalProj.Corporate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
		/**
 * Eric Meyer's Reset CSS v2.0+ (https://meyerweb.com/eric/tools/css/reset/)
 * http://cssreset.com
 */
		html, body, div, span, applet, object, iframe,
		h1, h2, h3, h4, h5, h6, p, blockquote, pre,
		a, abbr, acronym, address, big, cite, code,
		del, dfn, em, img, ins, kbd, q, s, samp,
		small, strike, strong, sub, sup, tt, var,
		b, u, i, center,
		dl, dt, dd, ol, ul, li,
		fieldset, form, label, legend,
		table, caption, tbody, tfoot, thead, tr, th, td,
		article, aside, canvas, details, embed,
		figure, figcaption, footer, header, hgroup,
		menu, nav, output, ruby, section, summary,
		time, mark, audio, video {
			margin: 0;
			padding: 0;
			border: 0;
			vertical-align: baseline;
		}

		#eventSearch {
			margin: 3em auto 1em auto;
		}

		.createEvent {
			width: 100%;
			margin: 3em auto 1em auto;
		}

		/* HTML5 display-role reset for older browsers */
		article, aside, details, figcaption, figure,
		footer, header, hgroup, menu, nav, section {
			display: block;
		}

		body {
			line-height: 1.5;
		}

		ol, ul {
			list-style: none;
		}

		blockquote, q {
			quotes: none;
		}

			blockquote:before, blockquote:after,
			q:before, q:after {
				content: '';
				content: none;
			}

		table {
			border-spacing: 2px;
		}

		.clearfix:before,
		.clearfix:after {
			content: " "; /* 1 */
			display: table; /* 2 */
		}

		.clearfix:after {
			clear: both;
		}
		/**
 * For IE 6/7 only
 * Include this rule to trigger hasLayout and contain floats.
 */
		.clearfix {
			*zoom: 1;
		}

		a, a:hover {
			text-decoration: none;
		}

		.img-responsive {
			max-width: 100%;
			height: auto;
		}

		body {
			font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
		}

		.elegant-calencar {
			width: 26em;
			height: 31em;
			border: 1px solid #c9c9c9;
			-webkit-box-shadow: 0 0 5px #c9c9c9;
			box-shadow: 0 0 5px #c9c9c9;
			text-align: center;
			margin: 1em auto;
			position: relative;
		}

		#header {
			font-family: 'HelveticaNeue-UltraLight', 'Helvetica Neue UltraLight', 'Helvetica Neue', Arial, Helvetica, sans-serif;
			height: 14em;
			background-color: #2a3246;
			margin-bottom: 1em;
		}

		.pre-button, .next-button {
			margin-top: 2em;
			font-size: 3em;
			-webkit-transition: -webkit-transform 0.5s;
			transition: transform 0.5s;
			cursor: pointer;
			width: 1em;
			height: 1em;
			line-height: 1em;
			color: #e66b6b;
			border-radius: 50%;
		}

			.pre-button:hover, .next-button:hover {
				-webkit-transform: rotate(360deg);
				-ms-transform: rotate(360deg);
				transform: rotate(360deg);
			}

			.pre-button:active, .next-button:active {
				-webkit-transform: scale(0.7);
				-ms-transform: scale(0.7);
				transform: scale(0.7);
			}

		.pre-button {
			float: left;
			margin-left: 0.5em;
		}

		.next-button {
			float: right;
			margin-right: 0.5em;
		}

		.head-info {
			float: left;
			width: 16em;
		}

		.head-day {
			margin-top: 13px;
			font-size: 8em;
			line-height: 1;
			color: #fff;
		}

		.head-month {
			margin-top: 13px;
			font-size: 2em;
			line-height: 1;
			color: #fff;
		}

		#calendar {
			width: 90%;
			margin: 0 auto;
		}

			#calendar tr {
				height: 2em;
				line-height: 2em;
			}

		thead tr {
			color: #e66b6b;
			font-weight: 700;
			text-transform: uppercase;
		}

		tbody tr {
			color: #252a25;
		}

		tbody td {
			width: 14%;
			border-radius: 50%;
			cursor: pointer;
			-webkit-transition: all 0.2s ease-in;
			transition: all 0.2s ease-in;
		}

		.invalidDay {
			color: grey;
		}

			.invalidDay:hover {
				background-color: #fff;
				color: grey;
			}

		tbody td:hover, .selected {
			color: #fff;
			background-color: #2a3246;
			border: none;
		}

		tbody td:active {
			-webkit-transform: scale(0.7);
			-ms-transform: scale(0.7);
			transform: scale(0.7);
		}

		#today {
			background-color: #e66b6b;
			color: #fff;
			font-family: serif;
			border-radius: 50%;
		}

		#disabled {
			cursor: default;
			background: #fff;
		}

			#disabled:hover {
				background: #fff;
				color: #c9c9c9;
			}

		#reset {
			display: block;
			position: absolute;
			right: 0.5em;
			top: 0.5em;
			z-index: 999;
			color: #fff;
			font-family: serif;
			cursor: pointer;
			padding: 0 0.5em;
			height: 1.5em;
			border: 0.1em solid #fff;
			border-radius: 4px;
			-webkit-transition: all 0.3s ease;
			transition: all 0.3s ease;
		}

			#reset:hover {
				color: #e66b6b;
				border-color: #e66b6b;
			}

			#reset:active {
				-webkit-transform: scale(0.8);
				-ms-transform: scale(0.8);
				transform: scale(0.8);
			}
	</style>
	<script>
		document.addEventListener('DOMContentLoaded', function () {      //script happens whenver document is load
			var today = new Date(),
				year = today.getFullYear(),
				month = today.getMonth(),
				monthTag = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
				day = today.getDate(),
				days = document.getElementsByTagName('td'),
				selectedDay,
				setDate,
				daysLen = days.length;
			// options should like '2014-01-01'
			function Calendar(selector, options) {
				this.options = options;
				this.draw();
			}

			Calendar.prototype.draw = function () {
				//this.getCookie('selected_day');
				this.getOptions();
				this.drawDays();
				var that = this,
					reset = document.getElementById('reset'),
					pre = document.getElementsByClassName('pre-button'),
					next = document.getElementsByClassName('next-button');

				pre[0].addEventListener('click', function () { that.preMonth(); });
				next[0].addEventListener('click', function () { that.nextMonth(); });
				reset.addEventListener('click', function () { that.reset(); });
				while (daysLen--) {
					days[daysLen].addEventListener('click', function () { that.clickDay(this); });
				}
			};

			Calendar.prototype.drawHeader = function (e) {
				var headDay = document.getElementsByClassName('head-day'),
					headMonth = document.getElementsByClassName('head-month');

				e ? headDay[0].innerHTML = e : headDay[0].innerHTML = day;
				headMonth[0].innerHTML = monthTag[month] + " - " + year;
			};

			Calendar.prototype.drawDays = function () {			//function is called each time users select months back and forth 
				var startDay = new Date(year, month, 1).getDay(),

					nDays = new Date(year, month + 1, 0).getDate(),

					n = startDay,

					tempMonth = today.getMonth(),
					invalidSelection = false;

				if (today.getFullYear() > year) {   // if current year more than selected year(eg. 2019)
					tempMonth += 12;				// adds 12 to tempmonth (eg. jan = 0), therefore 12 (Good Analogy is 12Hr & 24Hr Clock)
				}
				if (tempMonth > month) {			// compares if temp month (which is the current month is more than the selected month)
					invalidSelection = true;		// sets invalidSelection to true.
				}

				for (var k = 0; k < 42; k++) {
					days[k].innerHTML = '';
					days[k].id = '';
					days[k].className = '';
				}

				for (var i = 1; i <= nDays; i++) {
					days[n].innerHTML = i;
					n++;
				}

				for (var j = 0; j < 42; j++) {

					if (j < day + startDay - 1 && tempMonth == month) {		// finds all the dates that are before today's date
						days[j].className = "invalidDay"
					}

					if (days[j].innerHTML === "") {

						days[j].id = "disabled";

					}
					if (invalidSelection) {									// if the the selected month alr happened, program sets all dates for that month as invalid
						days[j].className = "invalidDay";
					}
					else if (j === day + startDay - 1) {
						if ((this.options && (month === setDate.getMonth()) && (year === setDate.getFullYear())) || (!this.options && (month === today.getMonth()) && (year === today.getFullYear()))) {
							this.drawHeader(day);
							days[j].id = "today";
						}
					}
					if (selectedDay) {
						if ((j === selectedDay.getDate() + startDay - 1) && (month === selectedDay.getMonth()) && (year === selectedDay.getFullYear())) {
							days[j].className = "selected";
							this.drawHeader(selectedDay.getDate());
						}
					}
				}
			};

			Calendar.prototype.clickDay = function (o) {
				let clickedDay = new Date(year, month, o.innerHTML);
				let today12AM = new Date();								// created new var to prevent affecting anythign else
				today12AM.setHours(0, 0, 0, 0);							// sets today to 12 am
				if (clickedDay >= today12AM) {							// ensure that users can't choose dates before current date
					var selected = document.getElementsByClassName("selected"),
						len = selected.length;
					selectedDay = new Date(year, month, o.innerHTML);
					if (len !== 0) {
						selected[0].className = "";
					}
					o.className = "selected";
					this.drawHeader(o.innerHTML);
					//this.setCookie('selected_day', 1);
				}
			};

			Calendar.prototype.preMonth = function () {			//go back
				if (month < 1) {
					month = 11;
					year = year - 1;
				} else {
					month = month - 1;
				}
				this.drawHeader(1);
				this.drawDays();
			};

			Calendar.prototype.nextMonth = function () {		//go forward
				if (month >= 11) {
					month = 0;
					year = year + 1;
				} else {
					month = month + 1;
				}
				this.drawHeader(1);
				this.drawDays();
			};

			Calendar.prototype.getOptions = function () {
				if (this.options) {
					var sets = this.options.split('-');
					setDate = new Date(sets[0], sets[1] - 1, sets[2]);
					day = setDate.getDate();
					year = setDate.getFullYear();
					month = setDate.getMonth();
				}
			};

			Calendar.prototype.reset = function () {		//reset
				month = today.getMonth();
				year = today.getFullYear();
				day = today.getDate();
				this.options = undefined;
				this.drawDays();
			};

			//Calendar.prototype.setCookie = function (name, expiredays) {
			//	if (expiredays) {
			//		var date = new Date();
			//		date.setTime(date.getTime() + (expiredays * 24 * 60 * 60 * 1000));
			//		var expires = "; expires=" + date.toGMTString();
			//	} else {
			//		var expires = "";
			//	}
			//	document.cookie = name + "=" + selectedDay + expires + "; path=/";
			//};

			//Calendar.prototype.getCookie = function (name) {
			//	if (document.cookie.length) {
			//		var arrCookie = document.cookie.split(';'),
			//			nameEQ = name + "=";
			//		for (var i = 0, cLen = arrCookie.length; i < cLen; i++) {
			//			var c = arrCookie[i];
			//			while (c.charAt(0) == ' ') {
			//				c = c.substring(1, c.length);

			//			}
			//			if (c.indexOf(nameEQ) === 0) {
			//				selectedDay = new Date(c.substring(nameEQ.length, c.length));
			//			}
			//		}
			//	}
			//};
			var calendar = new Calendar();


		}, false);
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<img src="Img/together.PNG" style="width: 100%; height: auto;" />
	<form runat="server">
		<div class="container">

			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-8 col-sm-pull-4" id="eventSearch">

					<div class="p-1 bg-light rounded rounded-pill shadow-sm">
						<div class="input-group">
							<input type="search" placeholder="What're you searching for?" aria-describedby="button-addon1" class="form-control border-0 bg-light">
							<div class="input-group-append">
								<button id="button-addon1" type="submit" class="btn btn-link text-primary"><i class="fa fa-search"></i></button>
							</div>
						</div>
					</div>

					<% foreach(var element in evList){ %>

					<div class="card" style="margin: 1em auto;">
						<div class="card-header">
							<%= element.Date %>, <%= element.StartTime %>
						</div>
						<div class="card-body">
							<h2 class="card-title"><b><%= element.Title %></b> </h2>
							<p class="card-text" style="margin-bottom: 1%;"><%= element.Desc %></p>

							<p style="color: grey; margin-bottom: 1%;">11 Participants Attending</p>
							<a href="/eventDetailsTabOne.aspx" class="btn btn-primary">View More &rarr;</a>
						</div>
						<div class="card-footer text-muted">
							Posted by
                        <a href="#">Kovi Tan</a>
						</div>
					</div>
					<% } %>
				</div>

				<div class="col-sm-12 col-md-12 col-lg-4 order-first order-lg-12">
					<asp:Button ID="createEvent" CssClass="btn btn-primary createEvent" runat="server" OnClick="createEvent_Click" Text="Create Event" />
					<div class="elegant-calencar" style="font-size: 10px;">
						<p id="reset">reset</p>
						<div id="header" class="clearfix">
							<div class="pre-button"><</div>
							<div class="head-info">
								<div class="head-day"></div>
								<div class="head-month"></div>
							</div>

							<div class="next-button">></div>
						</div>
						<table id="calendar">
							<thead>
								<tr>
									<th>Sun</th>
									<th>Mon</th>
									<th>Tue</th>
									<th>Wed</th>
									<th>Thu</th>
									<th>Fri</th>
									<th>Sat</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>

			</div>
		</div>
	</form>
</asp:Content>






