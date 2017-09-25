<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Memory_Web_Game.web.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Memory Games a Game that help brain to memory and save</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Jolly Games Responsive web template, Bootstrap Web Templates, 
    Flat Web Templates, Andriod Compatible web template,
    Smartphone Compatible web template, free webdesigns for Nokia, 
    Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <script src="js/jquery-1.11.1.min.js"></script>
    <!--webfonts-->
    <link href='http://fonts.googleapis.com/css?family=Fugaz+One|Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css' />
    <!--//webfonts-->
</head>
<body>
    <!--start-home-->
    <div id="home" class="header">
        <div class="header-top">
            <div class="container">
                <div class="head-nav">
                    <div class="logo">
                        <a href="index.aspx">
                            <h1>Memory<span>Game</span></h1>
                        </a>
                    </div>
                    <%--<p>Ahmed Gamal</p>--%>
                    <div class="clearfix"></div>
                    <span class="menu"></span>
                    <div class="top-menu">
                        <ul>
                            <li class="active"><a class="color1" href="index.aspx">Home</a></li>
                            <li><a class="color2" href="about.aspx">About</a></li>
                            <li><a class="color3" href="typography.aspx">Reviews</a></li>
                            <li><a class="color4" href="#blog">Blog</a></li>
                            <li><a class="color5" href="gallery.aspx">Sigin</a></li>
                            <li><a class="color6" href="contact.aspx">Contact</a></li>
                            <%--<div class="clearfix"> </div>--%>
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
        <div class="banner">
            <!-- Slider-starts-Here -->
            <script src="js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider3").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav: false,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });

                });
            </script>
            <!--//End-slider-script -->
			<div  id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
						<img class="img-responsive" src="images/yy.jpg" alt=""/>
						</li>
                        <li>
						<img class="img-responsive" src="images/x.png" alt=""/>
						</li>
						<li>
						<img class="img-responsive" src="images/xx.jpg" alt=""/>
						</li>
						<li>
						<img class="img-responsive" src="images/xxx.jpg" alt=""/>
						</li>
					</ul>
				</div>
			</div>
		</div>
    <!--banner-bottom-->
    		<div class="banner-bottom">
			<div class="container">
			 <div class="banner-bot-grids">
				 <div class="col-md-4 banner-grid one">
				      <div class="col-md-3 icon">
						<i class="s1"> </i>
					</div>
					<div class="col-md-9 icon-text">
					    <h4>Memory Game</h4>
						<p>Download the game now for free...!!!</p>
					 </div>
					  <div class="clearfix"> </div>
				 </div>
				 <div class="col-md-4 banner-grid two">
				      <div class="col-md-3 icon">
						<i class="s2"> </i>
					</div>
					<div class="col-md-9 icon-text">
					     <h4>Memory Game</h4>
						<p>Download the game now for free...!!!..</p>
					 </div>
					  <div class="clearfix"> </div>
				 </div>
				 <div class="col-md-4 banner-grid three">
				     <div class="col-md-3 icon">
						<i class="s3"> </i>
					</div>
					<div class="col-md-9 icon-text">
					     <h4>Memory Game</h4>
						<p>Download the game now for free...!!!.</p>
					 </div>
					  <div class="clearfix"> </div>
				 </div>
			 </div>
			 <div class="clearfix"> </div>
		</div>
	</div>
    <!--latest-post-->
    <!--top-games-section-->
    <div class="top-games-section">
        <div class="container">
            <!--sreen-gallery-cursual-->
            <div class="col-md-3 top-games">
                <h3>Top Players</h3>
                <p>Why not to be one of the top players?</p>
                <p>Download the game now for free and play with top player.</p>
            </div>
            <div class="col-md-9 g-views">
                <ul id="flexiselDemo3">
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s1.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s1.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s2.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s2.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s3.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s3.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s1.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s1.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s2.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s2.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s1.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s1.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="biseller-column">
                            <a class="lightbox" href="#goofy">
                                <img src="images/s2.jpg" />
                            </a>
                            <div class="lightbox-target" id="goofy">
                                <img src="images/s2.jpg" />
                                <a class="lightbox-close" href="#"></a>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </li>
                </ul>
                <script type="text/javascript">
                    $(window).load(function () {
                        $("#flexiselDemo3").flexisel({
                            visibleItems: 3,
                            animationSpeed: 1000,
                            autoPlay: true,
                            autoPlaySpeed: 3000,
                            pauseOnHover: true,
                            enableResponsiveBreakpoints: true,
                            responsiveBreakpoints: {
                                portrait: {
                                    changePoint: 480,
                                    visibleItems: 3
                                },
                                landscape: {
                                    changePoint: 640,
                                    visibleItems: 3
                                },
                                tablet: {
                                    changePoint: 768,
                                    visibleItems: 3
                                }
                            }
                        });

                    });
                </script>
                <script type="text/javascript" src="js/jquery.flexisel.js"></script>
            </div>
        </div>
    </div>
    <!--start-latest-->
    <div class="latest-post">
        <div class="container">
            <h3>Latest Games</h3>
            <div class="grid">
                <figure class="effect-hera">
                    <img src="images/I4.jpg" alt="img07" />
                    <figcaption>
                        <h2>Play <span>Games</span></h2>
                        <p>
                            <a href="#"><i class="download"></i></a>
                            <a href="#"><i class="heart"></i></a>
                            <a href="#"><i class="service"></i></a>
                            <a href="#"><i class="share"></i></a>
                        </p>
                    </figcaption>
                </figure>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--start-new-trailers-->
    <%--		<div class="new-trailers">
	    <div class="container">
				<h3>New Trailers</h3>
			 <div class="trailer-top">
				<div class="col-md-7 trailer">
					 <iframe src="https://www.youtube.com/embed/QKLSGALIWUE" frameborder="0" allowfullscreen></iframe>
				</div>
				<div class="col-md-5 trailer-text">
				   <div class="sub-trailer">
				       <div class="col-md-4 sub-img">
							<img src="images/v2.jpg" alt="img07"/>
					   </div>
					   <div class="col-md-8 sub-text">
					   		 <a href="#">Killzone: Shadow Fall for PlayStation 4 Reviews</a>
							 <p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
					   </div>
					    <div class="clearfix"> </div>
				   </div>
				    <div class="sub-trailer">
				       <div class="col-md-4 sub-img">
							<img src="images/v1.jpg" alt="img07"/>
					   </div>
					   <div class="col-md-8 sub-text">
					   		 <a href="#"> Spiderman 2 Full Version PC Game</a>
							 <p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
					   </div>
					    <div class="clearfix"> </div>
				   </div>
				    <div class="sub-trailer">
				       <div class="col-md-4 sub-img">
							<img src="images/v3.jpg" alt="img07"/>
					   </div>
					   <div class="col-md-8 sub-text">
					   		 <a href="#">Killzone: Shadow Fall for PlayStation 4 Reviews</a>
							 <p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
					   </div>
					    <div class="clearfix"> </div>
				   </div>
				</div>
				 <div class="clearfix"> </div>
			</div>
		</div>
	</div>--%>
    <!--start-blog-->
    <div id="blog" class="blog-section">
		   <div class="container">
		         <h3>Blog</h3>
               <form id="frm" runat="server">
								<table>
                                    <tr>
                                        <td>
                                            Enter Subject
                                        </td>
                                        <td>
                                            <asp:TextBox ID="subject" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Enter Post
                                        </td>
                                        <td>
                                            <asp:TextBox ID="post" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <asp:Button ID="btnPost" runat="server" Text="Post" OnClick="btnPost_Click" />
                                        </td>
                                    </tr>
								</table>
                   </form>
							</div>
		</div>
    <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
    <!--footer--->
    <div class="footer text-center">
        <div class="container">
            <div class="footer-grids">
                <div class="col-md-6 footer-text">
                    <h3>About Us</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since, Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                    <a class="read" href="about.aspx">Read More</a>
                </div>
                <div class="col-md-6 footer-info">
                    <%--	<div class="support">      
                                    <form id="Form3" runat="server">   
                                    <asp:TextBox ID="unsubscribeEmail" type="text" class="text" value="Enter email..." onfocus="this.value = '';" onblur="if (this.value == 'Enter email...') {this.value = 'Enter email...';}" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" class="botton" Text="UNSUBSCRIBE" OnClick="Button1_Click" />
                                <asp:Button ID="btnSub" runat="server" class="botton" Text="SUBSCRIBE" OnClick="btnSub_Click" />
                                    </form>
							</div>--%>
                </div>
                <div class="clearfix"></div>
            </div>
           <div class="copy">
		              <p>&copy; 2015 All Rights Reserved. Design by <a href="#">chums Team</a> </p>
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
    <a href="#home" id="toTop" class="scroll" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>

</body>
</html>
