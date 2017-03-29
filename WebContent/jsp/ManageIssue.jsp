<%@page import="com.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="/images/favicon.html">
<link rel="shortcut icon" href="/images/favicon.html" />
<link rel="stylesheet" href="../../css/contact-form.css">
<link rel="stylesheet" href="../css/touchTouch.css">
<link rel="stylesheet" href="../css/owl.carousel.css">
<link rel="stylesheet" href="../css/style.css">
<link rel='stylesheet' id='woocommerce_frontend_styles-css'
	href='../css/woocommerce.css?ver=3.8.1' type='text/css' media='all' />
<link rel='stylesheet' id='general-css'
	href='../css/style1.css?ver=3.8.1' type='text/css' media='all' />

<script src="/js/jquery.js"></script>
<script src="/js/jquery-migrate-1.1.1.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/script.js"></script>
<script src="/js/superfish.js"></script>
<script src="/js/jquery.equalheights.js"></script>
<script src="/js/jquery.mobilemenu.js"></script>
<script src="/js/jquery.ui.totop.js"></script>
<script src="/js/owl.carousel.js"></script>
<script src="/js/touchTouch.jquery.js"></script>
<script src="/js/TMForm.js"></script>
<script src="/js/modal.js"></script>

<script>
	
<%String succcess = (String) session.getAttribute("success");
			System.out.println(succcess);
			if (succcess != null) {
				session.removeAttribute("success");%>
	alert("Data Successfully Saved.");
<%}%>
	
</script>
<script>
	$(window).load(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});

		$("#owl").owlCarousel({
			items : 4, //10 items above 1000px browser width
			itemsDesktop : [ 995, 1 ], //5 items between 1000px and 901px
			itemsDesktopSmall : [ 767, 1 ], // betweem 900px and 601px
			itemsTablet : [ 700, 1 ], //2 items between 600 and 0
			itemsMobile : [ 479, 1 ], // itemsMobile disabled - inherit from itemsTablet option
			navigation : true,
			pagination : false
		});
		$('.gallery .gall_item').touchTouch();
	});
</script>
<div class="menu_bg"></div>
<header> <%@include file="/header.jsp"%>

<div class="container_12">
	<div class="grid_12 ">
		<h2>
			Provide better services and quality <br> <span></span>
		</h2>
		<div class="socials"></div>
	</div>
	<div class="clear"></div>
</div>
</header>
<div>


	This website helps to make ticket generate for stuff that you bought
	from this website and getting unsatifaction from that product and you
	want to do complain about that product to admin as well as seller. <br>
	<br> <a href="../jsp/Issue.jsp">Go to Issue Page</a> <br>
<br/>
<br/>
</div>
<!--=====================
          Content
======================-->
 <%
 Connection connection = DbConnection.getConnection();
	String sql = "select * from clean_issueadd_mst";
	PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
 	ResultSet rs = preparedStatement.executeQuery();
 	%>
 	<table>
 	<th>Issue Name</th><th>Issue Description</th><th>Issue Date</th><th>User Id</th><th>Category ID</th><th>Sub-Category ID</th>
 	<% 
 	while(rs.next())
 	{
 %>
 
 <tr>

				<td><%=rs.getString("Issue_Name") %></td>				
				<td><%=rs.getString("Issue_Description") %></span></td>
				<td><%=rs.getString("Issue_Date") %></span></td>
				<td><%=rs.getString("User_Id")%> </td>
				<td><%=rs.getString("Category_Id")%> </td>
				<td><%=rs.getString("SubCategory_Id")%> </td>
</tr>

	
<%
} %>
</table>
<!--==============================
              footer
=================================-->
<footer id="footer">
<div class="container_12">
	<div class="grid_12">
		<div class="copyright">
			<span class="color1">cleancon</span> &copy; <span id="copyright-year">2016</span>
		</div>
	</div>
</div>
<div class="clear"></div>
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
<script src="js/jquery.singlePageNav.min.js"></script>
<script>
	// Prevent console.log from generating errors in IE for the purposes of the demo
	if (!window.console)
		console = {
			log : function() {
			}
		};

	// The actual plugin
	$('.single-page-nav').singlePageNav({
		offset : $('.single-page-nav').outerHeight(),
		filter : ':not(.external)',
		updateHash : true,
		beforeStart : function() {
			console.log('begin scrolling');
		},
		onComplete : function() {
			console.log('done scrolling');
		}
	});
</script>
</body>

</html>
