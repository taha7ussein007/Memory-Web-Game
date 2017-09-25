<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="typography.aspx.cs" Inherits="Memory_Web_Game.web.typography" %>

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
<div class="typrography">
	 <div class="container">
	      <h3 class="type">Typography Page</h3>
		 <div class="grid_3 grid_4">
		     <h3>Introduction</h3>
		     <div class="bs-example">
				 <table class="table">
				  <tbody>
					<tr>
					  <td><h1 id="h1.-bootstrap-heading">First Download The source game <br /><a href="http://bit.ly/22sP4gW"><span class="label label-info">Download</span></a><br /><br /><br /><span class="label label-warning">Password --> </span>  chumste@m<a class="anchorjs-link" href="#h1.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h1></td>
					</tr>
					<tr>
					  <td><h2 id="h2.-bootstrap-heading">Choose method of playing   <a class="anchorjs-link" href="#h2.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h2></td>
					</tr>
					<tr>
					  <td><h3 id="h3.-bootstrap-heading">- Single then start Playing enjoy your Time .<a class="anchorjs-link" href="#h3.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h3></td>
					</tr>
                     <hr />
                      <tr>
					  <td><h3 id="h3.-bootstrap-heading">- Multi Game then Create room , add your freinds and  start Playing enjoy your Time also ^_^ .<a class="anchorjs-link" href="#h3.-bootstrap-heading"><span class="anchorjs-icon"></span></a></h3></td>
					</tr>
					
				
					
				  </tbody>
				 </table>
			 </div>
	      </div>

         <div class="grid_3 grid_5">
				 <h3>System in Detail</h3>
				   <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Basic Idea</a></li>
			  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">First Release</a></li>
			  <li role="presentation" class="dropdown">
				<a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">System <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
				  <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">Game 's Desktop</a></li>
				  <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">Game 's Website</a></li>
				</ul>
			  </li>
			</ul>
			<div id="myTabContent" class="tab-content">
			  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
				<p>We want to make a Desktop Games with their website that control them , support them , manage them and Keep the touch between players with our system and our Technical Support.</p>
			  </div>
			  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				<p>Online Game with related website that make me to do that :- 
1- Registration 
2- Login 
3-Download the Source Game
4- Can see my Level in the Game see others' level 
--------------
and through the game account i can make :- 
1-open the game then join a game or host a game 
2- can play online , local network and Single player 

through this game players can probably make: -
- chat with each others .
- include many tiny interesting games inside .

Generally This System has 2 parts Desktop platform & web platform both are connected with the same Database which through we can control the whole system .
we will use some useful patterns & tools such as : -
- WCF design pattern 
- WPF user interface  using XAML .
- client server technique & synchronization techniques
- amazing beautiful responsive website for this game.</p>
			  </div>
			  <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
				<p>It is a Desktop Games with amazing Design in several UI - UX Design like XAML etc .. ,  with the Configuration that Make you challenge freinds and Give all of you a room to Play .</p>
			  </div>
			  <div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
				<p>The website is the Link between you and us as Developers , Technicals and Managers ... , it is also your method to Share , ask , Inquires , contact and keep touch with the latest games and your Freinds - Managers.</p>
			  </div>
			</div>
		   </div>
		  </div>
		  
		  <%--<div class="grid_3 grid_5">
			<h3>Buttons</h3>
			 	  <h1 class="t-button">
				<a href="#"><span class="label label-default">Default</span></a>
				<a href="#"><span class="label label-primary">Primary</span></a>
				<a href="#"><span class="label label-success">Success</span></a>
				<a href="#"><span class="label label-info">Info</span></a>
				<a href="#"><span class="label label-warning">Warning</span></a>
				<a href="#"><span class="label label-danger">Danger</span></a>
			  </h1>
			  <h2 class="t-button">
				<a href="#"><span class="label label-default">Default</span></a>
				<a href="#"><span class="label label-primary">Primary</span></a>
				<a href="#"><span class="label label-success">Success</span></a>
				<a href="#"><span class="label label-info">Info</span></a>
				<a href="#"><span class="label label-warning">Warning</span></a>
				<a href="#"><span class="label label-danger">Danger</span></a>
			  </h2>
			  <h3 class="t-button">
				<a href="#"><span class="label label-default">Default</span></a>
				<a href="#"><span class="label label-primary">Primary</span></a>
				<a href="#"><span class="label label-success">Success</span></a>
				<a href="#"><span class="label label-info">Info</span></a>
				<a href="#"><span class="label label-warning">Warning</span></a>
				<a href="#"><span class="label label-danger">Danger</span></a>
			  </h3>
			  <h4 class="typ1 t-button">
				<a href="#"><span class="label label-default">Default</span></a>
				<a href="#"><span class="label label-primary">Primary</span></a>
				<a href="#"><span class="label label-success">Success</span></a>
				<a href="#"><span class="label label-info">Info</span></a>
				<a href="#"><span class="label label-warning">Warning</span></a>
				<a href="#"><span class="label label-danger">Danger</span></a>
			  </h4>
			  <h5 class="typ1 t-button">
				<a href="#"><span class="label label-default">Default</span></a>
				<a href="#"><span class="label label-primary">Primary</span></a>
				<a href="#"><span class="label label-success">Success</span></a>
				<a href="#"><span class="label label-info">Info</span></a>
				<a href="#"><span class="label label-warning">Warning</span></a>
				<a href="#"><span class="label label-danger">Danger</span></a>
			  </h5>
			  <h6 class="typ1 t-button">
				<a href="#"><span class="label label-default">Default</span></a>
				<a href="#"><span class="label label-primary">Primary</span></a>
				<a href="#"><span class="label label-success">Success</span></a>
				<a href="#"><span class="label label-info">Info</span></a>
				<a href="#"><span class="label label-warning">Warning</span></a>
				<a href="#"><span class="label label-danger">Danger</span></a>
			  </h6>
	      </div>--%>
			
		  <%--<div class="grid_3 grid_5">
			 <h3>Progress Bars</h3>
			  <div class="tab-content">
				 <div class="tab-pane active" id="domprogress">
					 <div class="progress">    
					      <div class="progress-bar progress-bar-primary" style="width: 20%"></div>
					 </div>
					 <p>Info with <code>progress-bar-info</code> class.</p>
					 <div class="progress">    
						 <div class="progress-bar progress-bar-info" style="width: 60%"></div>
					 </div>
					 <p>Success with <code>progress-bar-success</code> class.</p>
					 <div class="progress">
						 <div class="progress-bar progress-bar-success" style="width: 30%"></div>
					 </div>
					 <p>Warning with <code>progress-bar-warning</code> class.</p>
					 <div class="progress">
						 <div class="progress-bar progress-bar-warning" style="width: 70%"></div>
					 </div>
					 <p>Danger with <code>progress-bar-danger</code> class.</p>
					 <div class="progress">
						 <div class="progress-bar progress-bar-danger" style="width: 50%"></div>
					 </div>
					 <p>Inverse with <code>progress-bar-inverse</code> class.</p>
					 <div class="progress">
						 <div class="progress-bar progress-bar-inverse" style="width: 40%"></div>
					 </div>
					 <p>Inverse with <code>progress-bar-inverse</code> class.</p>
					 <div class="progress">
						 <div class="progress-bar progress-bar-success" style="width: 35%"><span class="sr-only">35% Complete (success)</span></div>
						 <div class="progress-bar progress-bar-warning" style="width: 20%"><span class="sr-only">20% Complete (warning)</span></div>
						 <div class="progress-bar progress-bar-danger" style="width: 10%"><span class="sr-only">10% Complete (danger)</span></div>
					 </div>
				   </div>
			   </div>
		   </div>--%>
		   
		   
			   <div class="clearfix"> </div>
		 </div>
		 <div class="grid_3 grid_5">
			 <h3>Screen shots </h3>
			   <ol class="breadcrumb">
			  <li class="active">Chums Company</li>
			</ol>
             <p>
            <a href="#" target="_blank">
            <img src="images/banner-two.jpg" style='width:100%;' border="0" alt="Null">
            </a>
            </p>

			<ol class="breadcrumb">
			  <li><a href="#">Desktop Game</a></li>
			  <li class="active">Main Selection</li>
			</ol>
              <p>
            <a href="#" target="_blank">
            <img src="images/2.jpg" style='width:100%;' border="0" alt="Null">
            </a>
            </p>

			<ol class="breadcrumb">
			  <li><a href="#">Desktop Game</a></li>
			  <li><a href="#">While Playing</a></li>
			  <li class="active">hte Play</li>
			</ol>
              <a href="#" target="_blank">
            <img src="images/1.jpg" style='width:100%;' border="0" alt="Null">
            </a>
            </p
		 </div>
	   <div class="grid_3 grid_5">
			 <h3>Sprint # 1 's Backlog</h3>
				<div class="col-md-6">
					<p>What have we achieved until now.</p>
					  <table class="table table-bordered">
						<thead>
							<tr>
								<th width="50%">User Story</th>
								<th width="50%">Tasks</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Game Online</td>
								<td><span class="badge">3</span></td>
							</tr>
							<tr>
								<td><code>Registration (create account) & download last updated source game.</code></td>
								<td><span class="badge badge-primary">3</span></td>
							</tr>
							<tr>
								<td><code> User Manual (help).</code></td>
								<td><span class="badge badge-success">1</span></td>
							</tr>
							<tr>
								<td><code>User Login - still under construction!</code></td>
								<td><span class="badge badge-info">4</span></td>
							</tr>
							<tr>
								<td><code>Diagrams - may change in the future</code></td>
								<td><span class="badge badge-warning">3</span></td>
							</tr>
							<tr>
								<td><code>Initial database , planning and designing for the whole project.</code></td>
								<td><span class="badge badge-success">999</span></td>
							</tr>
						</tbody>
					  </table>                    
				</div>
				<%--<div class="col-md-6">
				  <p>Easily highlight new or unread items with the <code>.badge</code> class</p>
					<div class="list-group list-group-alternate"> 
						<a href="#" class="list-group-item"><span class="badge">201</span> <i class="ti ti-email"></i> Inbox </a> 
						<a href="#" class="list-group-item"><span class="badge badge-primary">5021</span> <i class="ti ti-eye"></i> Profile visits </a> 
						<a href="#" class="list-group-item"><span class="badge">14</span> <i class="ti ti-headphone-alt"></i> Call </a> 
						<a href="#" class="list-group-item"><span class="badge">20</span> <i class="ti ti-comments"></i> Messages </a> 
						<a href="#" class="list-group-item"><span class="badge badge-warning">14</span> <i class="ti ti-bookmark"></i> Bookmarks </a> 
						<a href="#" class="list-group-item"><span class="badge badge-danger">30</span> <i class="ti ti-bell"></i> Notifications </a> 
					</div>
			   </div>--%>
			   <div class="clearfix"> </div>
			 </div>
			 
		  <section id="tables">
          <div class="page-header">
            <h1>System Info</h1>
          </div>

          
	
         
          <p>All System Developers <code>&lt;Memory Game&gt;</code>.</p>
          <div class="bs-docs-example">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Role</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Taha</td>
                    <td>Hussein</td>
                  <td>Team Leader</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Ahmed</td>
                  <td>Gamal</td>
                  <td>Member</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Abdel el Rahman</td>
                    <td>Mahmoud</td>
                  <td>member</td>
                </tr>
               <tr>
                  <td>4</td>
                  <td>Mahmoud</td>
                    <td>Said</td>
                  <td>member</td>
                </tr>

                <tr>
                <td>5</td>
                  <td>Abdel el Rahman</td>
                  <td>Hamdy</td>
                  <td>member</td>
                </tr>
              </tbody>
            </table>
          </div>

	</div>
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
