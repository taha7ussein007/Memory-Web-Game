<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update Info.aspx.cs" Inherits="Memory_Web_Game.web.Update_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Memory Games a Game that help brain to memory and save</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Jolly Games Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Fugaz+One|Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<!--start-home-->
	<div id="home" class="header">
		<div class="header-top">
			<div class="container">
			<div class="head-nav">
				<div class="logo">
					<a href="index.aspx"><h1>Memory<span>Game</span></h1></a>
				</div>
				<%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--%>
				<div class="clearfix"></div>
				<span class="menu"></span>
				<div class="top-menu">
					<ul>
					<li class="active"><a class="color1" href="index.aspx"  >Home</a></li>
						<li><a class="color2" href="about.aspx">About</a></li>
						<li><a class="color3" href="typography.aspx">Reviews</a></li>
						<li><a href="index.aspx" class="color4">Blog</a></li>
					    <li><a class="color5" href="gallery.aspx">Login</a></li>
						<li><a class="color6" href="contact.aspx">Contact</a></li>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<!--script-for-menu-->
				<script>
				    $("span.menu").click(function () {
				        $(".top-menu").slideToggle("slow", function () {
				            // Animation complete.
				        });
				    });
			</script>
			<!--script-for-menu-->
			</div>
		  </div>
		</div> 
		<!-- banner-bottom -->
		<div class="banner two">
		</div>
	</div>
	<!--typography-->
     <div class="container">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <header>
                <h1>Update Information Form  </h1>
			</header>
            <section>				
                <div id="container_demo">

                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form name="login" method="post" action="" id="login" runat="server">
                              
                                <p>
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <asp:TextBox ID="usernamesignup" name="username" required="required" placeholder="mysuperusername690" runat="server"></asp:TextBox>

                                </p>
                                <p>
                                    <label for="namesignup" class="youmail" data-icon="e">Mobile</label>
                                    <asp:TextBox ID="mobile" name="mobileid" required="required" type="text" placeholder="0123456789" runat="server"></asp:TextBox>
                                </p>



                                <p>
                                    <label for="emailsignup" class="youpasswd" data-icon="p">Your email </label>
                                    <asp:TextBox ID="emailsignup" name="mobile" required="required" type="email" placeholder="mysupermail@mail.com" runat="server"></asp:TextBox>

                                </p>

                                 <p>
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <asp:TextBox ID="passwordsignup" name="password" required="required" type="password" placeholder="eg. X8df!90EO" runat="server"></asp:TextBox>

                                </p>
                                <p>
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <asp:TextBox ID="passwordsignup_confirm" name="confirm_password" required="required" type="password" placeholder="eg. X8df!90EO" runat="server"></asp:TextBox>

                                </p>
                               
                                <p class="login button">
                                    <asp:Button ID="btnUpdt" runat="server" Text="Update" OnClick="btnUpdt_Click" />
                                </p>
                               

                            </form>
                        </div>


                    </div>
                </div>  
            </section>
        </div>

   <!--footer--->
		<div class="footer text-center">
				<div class="container">
					<div class="footer-grids">
						<div class="col-md-6 footer-text">  
							<h3>About Us</h3>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since, Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
							<a class="read" href="about.aspx">Read More</a>
						</div>
					<%--	<div class="col-md-6 footer-info">
							<h3>Get In Touch</h3>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since, </p>
							<div class="support">
							   <input type="text" class="text" value="Enter email..." onfocus="this.value = '';" onblur="if (this.value == 'Enter email...') {this.value = 'Enter email...';}">
							   <input type="submit" value="SUBSCRIBE" class="botton">
							</div>
					</div>--%>
					<div class="clearfix"> </div>
				</div>
					<div class="copy">
		                              <p>&copy; 2015 All Rights Reserved. Design by <a href="#">ChumsTeam</a> </p>
		            </div>
				</div>
			</div>
			<!--start-smoth-scrolling-->
			<script type="text/javascript">
			    jQuery(document).ready(function ($) {
			        $(".scroll").click(function (event) {
			            event.preventDefault();
			            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
			        });
			    });
								</script>
							<!--start-smoth-scrolling-->
						<script type="text/javascript">
						    $(document).ready(function () {
						        /*
                                var defaults = {
                                    containerID: 'toTop', // fading element id
                                    containerHoverID: 'toTopHover', // fading element hover id
                                    scrollSpeed: 1200,
                                    easingType: 'linear' 
                                };
                                */

						        $().UItoTop({ easingType: 'easeOutQuart' });

						    });
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>
