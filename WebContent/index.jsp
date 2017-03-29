<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.html">
<link rel="shortcut icon" href="images/favicon.html" />
<link rel="stylesheet" href="css/contact-form.css">
<link rel="stylesheet" href="css/touchTouch.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>

<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });

  $("#owl").owlCarousel({
    items : 4, //10 items above 1000px browser width
    itemsDesktop : [995,1], //5 items between 1000px and 901px
    itemsDesktopSmall : [767, 1], // betweem 900px and 601px
    itemsTablet: [700, 1], //2 items between 600 and 0
    itemsMobile : [479, 1], // itemsMobile disabled - inherit from itemsTablet option
    navigation : true,
    pagination :  false
  });
    $('.gallery .gall_item').touchTouch();
 }); 



</script>
<div class="menu_bg"></div>
<header>
  <%@include file="header1.jsp" %>
  
  <div class="container_12">
    <div class="grid_12 ">     
      <h2>Provide better services and quality <br>
        <span></span>
      </h2>      
      
   </div> 
    <div class="clear"></div>  
  </div> 
</header>

</div>
<!--=====================
          Content
======================-->
This wesite helps for customer services.
<h1 class="login">Login</h1>
		<form action="<%=request.getContextPath() %>/userLogin" method="POST">
		 <input type="hidden" name="mode" value="login"/>
		<div class="message"></div>
		<div class="field-wrapper">
			<input type="text" name="userName" placeholder="User Name" />
		</div>
		<br/>
		<div class="field-wrapper">
			<input type="password" name="password"  placeholder="Password" />
		</div>
		<br/>
		 <button class="field-wrapper">Sign In	 </button>			
		
		<a href="<%=request.getContextPath() %>/jsp/Forget.jsp"> &nbsp;&nbsp; Forgot Password</a> ||
	
		
       <a href="<%=request.getContextPath() %>/jsp/registration.jsp" class="button submit-button right"><span class="button-icon login"></span>Registration</a>

	</form>

<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container_12">
    <div class="grid_12"> 
      <div class="copyright"><span class="color1">cleancon</span> &copy; <span id="copyright-year">2016</span> 
      </div>
    </div>
  </div>  
  <div class="clear"></div>
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
<script src="js/jquery.singlePageNav.min.js"></script>
        <script>

            // Prevent console.log from generating errors in IE for the purposes of the demo
            if ( ! window.console ) console = { log: function(){} };

            // The actual plugin
            $('.single-page-nav').singlePageNav({
                offset: $('.single-page-nav').outerHeight(),
                filter: ':not(.external)',
                updateHash: true,
                beforeStart: function() {
                    console.log('begin scrolling');
                },
                onComplete: function() {
                    console.log('done scrolling');
                }
            });
        </script>
</body>

</html>
