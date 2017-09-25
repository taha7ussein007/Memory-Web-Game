<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rregister.aspx.cs" Inherits="Memory_Web_Game.web.Rregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				<div class="clearfix"></div>
				<span class="menu"></span>
				<div class="top-menu">
					<ul>
					<li class="active"><a class="color1" href="index.aspx"  >Home</a></li>
						<li><a class="color2" href="about.aspx">About</a></li>
						<li><a class="color3" href="typography.aspx">Reviews</a></li>
						<li><a href="index.aspx" class="color4">Blog</a></li>
						<li><a class="color5" href="gallery.aspx">LogIn</a></li>
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
		<%--<div class="banner two">
		</div>--%>
	</div>
<br />
<br />
<br />
    

            <div class="container">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             <header>
                <h1 style="font-family:'Comic Sans MS';padding:20px; font-weight:bold">Registration Form  </h1>
			</header>
            <section>				

             <div id="container_demo">

                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="register" class="animate form">
                                 <h1 style="font-family:'Comic Sans MS';padding:20px;color:red">Sign up! </h1><br/>
                            <form name="login" method="post" action="" id="register" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" runat="server">
                        <table style="margin:20px;padding:20px;font-family:Verdana;font-size:15px;">
                                <tr>
                                    <td>
                                    <label for="namesignup" style=" font-family:'Comic Sans MS'; font-size:25px; margin:15px;text-align:center;" data-icon="p">Name </label>
                                    </td>
                                    <td>
                                    <asp:TextBox ID="name" name="Name" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" required="required" placeholder="Plz Enter your name " runat="server"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                    <label for="usernamesignup" class="uname" style=" font-family:'Comic Sans MS'; font-size:25px; margin:15px;text-align:center;" data-icon="u">User Name</label>
                                   </td>
                                    <td>
                                         <asp:TextBox ID="usernamesignup" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" name="username" required="required" placeholder="Please Enter your User Name" runat="server"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                    <label for="emailsignup" class="youmail" style=" font-family:'Comic Sans MS'; font-size:25px; margin:15px;text-align:center;" data-icon="e">Email</label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="emailsignup" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" name="emailid" required="required" type="email" placeholder="Please Enter your Email" runat="server"></asp:TextBox>
                                </td>
                                        </tr>
                                <tr>
                                    <td>
                                    <label for="namesignup" class="youpasswd" style=" font-family:'Comic Sans MS'; font-size:25px; margin:15px;text-align:center;" data-icon="p">Mobile </label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="mobile" name="mobile" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" required="required" type="text" placeholder="Enter your mobile number" runat="server"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                    <label for="passwordsignup" class="youpasswd" style=" font-family:'Comic Sans MS'; font-size:25px; margin:15px;text-align:center;" data-icon="p">Password </label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="passwordsignup" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" name="password" required="required" type="password" placeholder="Please confirm your password" runat="server"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                    <label for="passwordsignup_confirm" class="youpasswd" style=" font-family:'Comic Sans MS'; font-size:25px; margin:15px;text-align:center;" data-icon="p">Confirmed Password</label>
                                   </td>
                                    <td>
                                         <asp:TextBox ID="passwordsignup_confirm" name="confirm_password" style=" font-size:25px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;text-shadow:inherit;" required="required" type="password" placeholder="Please confirm your password" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                    <td>
                                    <asp:Button ID="btnReg" runat="server" style=" color:black; font-family:'Comic Sans MS'; font-size:35px;border-radius:15px; margin:15px;border:solid;border-color:dimgray;text-align:center;" Text="Submit" OnClick="btnReg_Click" />
                               </td>
                                         </tr>
                                </table>
                                <p class="change_link">
                                    Already a member ?
			<a href="gallery.aspx" class="to_register">Go and log in </a>
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

                <div class="clearfix"></div>
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
</body>
</html>
