<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="/images/favicon.html">
<link rel="shortcut icon" href="/images/favicon.html" />
<link rel="stylesheet" href="../../css/contact-form.css">
<link rel="stylesheet" href="../css/touchTouch.css">
<link rel="stylesheet" href="../css/owl.carousel.css">
<link rel="stylesheet" href="../css/style.css">
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
  <%@include file="/header.jsp" %>
  
  <div class="container_12">
    <div class="grid_12 ">     
      <h2>Provide better services and quality <br>
        <span></span>
      </h2>      
      <div class="socials">
		
		</div>
   </div> 
    <div class="clear"></div>  
  </div> 
</header>
<div>


This website helps to make ticket generate for stuff that you bought from this website and getting unsatifaction from that product and you want to do complain about that product to admin as well as seller. 
<br>
<br>
<br>

</div>
<!--=====================
          Content
======================-->
<div class="main-content">
			<div class="row">
			<div class="fivecol column last">
					<div class="widget">
					  <div class="widget-title"><h3 class="nomargin" style="text-align: left;">Feedback</h3>
					  </div>
						<div class="widget-content">
						     <form action="<%= request.getContextPath()%>/IssueController" method="POST" class="formatted-form">
						          <div class="message">
							  </div>
							        <div class="clear">
								   </div>

									<div class="field-wrapper">
									  <label class="control-label" for="select02">Complain type:</label>

										<div class="field-wrapper">
											<select id="select02" data-placeholder="Select your country" style="width:50%;" class="chzn-select-deselect" tabindex="7" name="catname">
											<c:forEach items="${sessionScope.lscategory}" var="x">
											<option value="${x.category_id}"><c:out value="${x.category_name}"> </c:out></option>
											
                                        	</c:forEach>
											</select>
										</div>
									</div>
									

										<div class="field-wrapper">
										</div>
										<br/>
											<div class="field-wrapper">
							         <div class="field-wrapper"><input type="text" id="subject" name="subject" value="" placeholder="Subject" style="width:50%"/>
							         </div>
									</div>
									
									
									
		
									<div class="field-wrapper">
									</div>
									</br>
									 <div class="field-wrapper">
							         <div class="field-wrapper"><input type="text" id="email" name="email" value="" placeholder="Email" style="width:50%"/>
							         </div>
							      </div>
							      <br/>
							          <div class="field-wrapper">
							             <div class="field-wrapper"><textarea id="question" name="question" placeholder="Description" style="width:30%"" rows="5"></textarea></div>
								   </div>  
								   <br/>
								  
									<input type = "submit" class="field-wrapper" value="submit">
									<div class="form-loader">
									</div>
									<input type="hidden" name="complainflag" value="insert">
									
									
									</form>
									
									
								</div>
									
									
							</div>
		                              </div>
	                         </div>
			</div>
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
