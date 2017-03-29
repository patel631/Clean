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
	<br> <a href="../jsp/AddPackage.jsp">Add Package</a> <br>

</div>
<!--=====================
          Content
======================-->
<!-- <div class="widget-title">
		<h1 class="plan-preview">Silver</h1>
	</div>
	<div class="plan-preview">
				<div class="plan-price product-price">
			<span><span class="amount">&#36;142</span></span> 		</div>
				
		<div class="plan-description">
			<ul class="bordered">
	<li><span style="line-height: 13px;">Access to all users</span></li>
	<li>Validity:1 Month</li>
	<li>Services</li>
	<li>15 Software Solution &</li>
	<li>15 Hardware Solutions</li>
	<li class="inp"><input type="button" value="Buy" name="Buy"></li>
</ul>	
 -->
 <%
 Connection connection = DbConnection.getConnection();
	String sql = "select * from clean_package_mst";
	PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
 	ResultSet rs = preparedStatement.executeQuery();
 	while(rs.next())
 	{
 %>
<div class="main-content">
	<div class="row">
		<div class="threecol column">
			<div class="widget aligncenter">
				<div class="widget-title">
					<h1 class="nomargin aligncenter"><%=rs.getString("Package_Name") %></h1>
				</div>
				<div class="plan-preview">
					<div class="plan-price product-price">
						<span><span class="amount"><%=rs.getString("Package_Price") %></span></span>
					</div>

					<div class="plan-description">
						<ul class="bordered">
							<li><span style="line-height: 13px;"><%=rs.getString("Package_Description") %></span></li>
							<li>Validity:<%=rs.getString("Package_Validity")%></li>
							<li>Services</li>
							<li><%=rs.getString("Package_Service")%> Software Solution &amp;</li>
							<li><%=rs.getString("Package_Service")%> Hardware Solutions</li>
						</ul>
					</div>
						<footer class="plan-footer">
			<form action="http://themextemplates.com/demo/academy/register" method="POST">				
					<script src="https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=sunnygadni22@gmail.com" 
    data-button="buynow" 
    data-name="" 
    data-quantity="1" 
    data-amount="584" 
    data-currency="USD" 
    data-shipping="0" 
    data-tax="10" 
    data-env="sandbox"
></script>
				<input type="hidden" name="course_action" value="subscribe_user" />
				<input type="hidden" name="plan_id" value="2128" />
				<input type="hidden" name="user_redirect" value="2128" />
				<input type="hidden" name="nonce" class="nonce" value="73163882e4" />
				<input type="hidden" name="action" class="action" value="themex_update_course" />
			</form>
		</footer>
			</div>
</div></div><div class="clear"></div>								</div>
<%
} %>
</div><!--==============================
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
