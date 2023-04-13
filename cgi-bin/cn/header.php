<?php 
header('Content-Type: text/html; charset=utf-8');
include('auth.php');
//include('config.php'); 
//include('auth.php');
                        
    date_default_timezone_set("Asia/Kuala_Lumpur");
    //echo date('d-m-Y H:i:s'); //Returns IST

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Loan Software | </title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
       
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a class="site_title" href="dashboard.php"><i class="fa fa-paw"></i> <span>贷款软件</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
           <!-- <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>-->
            <!-- /menu profile quick info -->

            <br />
		
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                 <ul class="nav side-menu">
              <!--    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html">Dashboard</a></li>
                      <li><a href="index2.html">Dashboard2</a></li>
                      <li><a href="index3.html">Dashboard3</a></li>
                    </ul>
                  </li> -->
                <!--<li><a href="#"><i class="fa fa-table"></i>Search List </a></li>-->
                <li><a href="register_new_customer.php"><i class="fa fa-plus"></i>注册新客户 </a></li>
                <li><a href="customer_card.php"><i class="fa fa-plus"></i>客户卡 </a></li>
                <li><a href="collection.php"><i class="fa fa-plus"></i>收藏 </a></li>
                <li><a href="monthly_report.php"><i class="fa fa-plus"></i>月度报告 </a></li>
                <li><a href="daily_report.php"><i class="fa fa-plus"></i>每日报告 </a></li>
                <li><a href="uncollected_report.php"><i class="fa fa-plus"></i>未收集的报告  </a></li>
                <li><a href="customer_status_check.php"><i class="fa fa-plus"></i>客户状态检查 </a></li>
                	<?php 
		
		if($_SESSION["group_name"] =='superadmin'){			
			?>
                <li id="hwe_center_maintainace"><a href="center_maintenance.php"><i class="fa fa-plus"></i>中心维修</a></li>
                <li id="id_user_maintainance"><a href="user_maintenance.php"><i class="fa fa-plus"></i>用户维护 </a></li>
                	<?php 
			}
			 ?>
                <li><a href="change_password.php"><i class="fa fa-plus"></i>更改密码 </a></li>
                <li><a href="logout.php"><i class="fa fa-plus"></i>登出  </a></li>
                
                  
                  
                   </div>			
		
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="设定值">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="全屏">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="锁">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="登出.php">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                    <!--<img src="images/img.jpg" alt="">John Doe-->
                    
                     <?php 
			if(isset($_SESSION["group_name"]) && $_SESSION["group_name"]=='superadmin')
			{
				echo 'Admin';
			}
			elseif(isset($_SESSION["agent_id"]) && $_SESSION["agent_id"]!='')
			{
				$result= mysqli_query($conn,"SELECT * FROM users WHERE id = ".$_SESSION["agent_id"]);
				if(mysqli_num_rows($result))
				{
					$row = mysqli_fetch_assoc($result);
					
					echo ucfirst($row['user_name']);
				}
			}
			
			
			?>
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                   <!-- <a class="dropdown-item"  href="javascript:;"> Profile</a>
                      <a class="dropdown-item"  href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                  <a class="dropdown-item"  href="javascript:;">Help</a>-->
                    <a class="dropdown-item"  href="logout.php"><i class="fa fa-sign-out pull-right"></i> 登出</a>                  </div>
                </li>

                <li role="presentation" class="nav-item dropdown open">
                <!--  <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>-->
                  <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>约翰·史密斯</span>
                          <span class="time">3 分钟前</span>                        </span>
                        <span class="message">
                          电影节曾经是电影制片人成败的时刻。 他们在那里                        </span>                      </a>                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="个人资料图片" /></span>
                        <span>
                          <span>约翰·史密斯</span>
                          <span class="time">3 分钟前</span>                        </span>
                        <span class="message">
                          电影节曾经是电影制片人成败的时刻。 他们在那里                        </span>                      </a>                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="个人资料图片" /></span>
                        <span>
                          <span>约翰·史密斯</span>
                          <span class="time">3 分钟前</span>                        </span>
                        <span class="message">
                          电影节曾经是电影制片人成败的时刻。 他们在那里                        </span>                      </a>                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="images/img.jpg" alt="个人资料图片" /></span><span><span>约翰·史密斯</span> <span class="time">3 分钟前</span> </span> <span class="message"> 电影节曾经是电影制片人成败的时刻。 他们在那里</span></a>                    </li>
                    <li class="nav-item">
                      <div class="text-center">
                        <a class="dropdown-item">
                          <strong>查看所有警报</strong></a>                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

    
    
        <!-- page content -->
        <div class="right_col" role="main">
        
        <!-- /page content -->

        <!-- footer content -->
       
        <!-- /footer content -->
  
	
    <!-- jQuery -->
	

    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="vendors/Flot/jquery.flot.js"></script>
    <script src="vendors/Flot/jquery.flot.pie.js"></script>
    <script src="vendors/Flot/jquery.flot.time.js"></script>
    <script src="vendors/Flot/jquery.flot.stack.js"></script>
    <script src="vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
 

    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>
 
   
  </body>
</html>
<style>
body
{
	font-family: 'Open Sans', sans-serif;
	font-size: 15px;
	line-height: 1.5;
}
</style>
