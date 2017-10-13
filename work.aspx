﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="work.aspx.cs" Inherits="work" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>STANLEY - Free Bootstrap Theme </title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/hover.zoom.js"></script>
    <script src="assets/js/hover.zoom.conf.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- Static navbar -->
        <div class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.aspx">STANLEY</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="work.aspx">Work</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
	
	
	    <!-- +++++ Projects Section +++++ -->
	
	    <div class="container pt">
		<div class="row mt">
			<div class="col-lg-6 col-lg-offset-3 centered">
				<h3>MY WORK</h3>
				<hr>
				<p>Show your work here. Dribbble shots from the awesome designer <a href="http://dribbble.com/wanderingbert">David Creighton-Pester</a>.</p>
			</div>
		</div>
		<div class="row mt centered">	
			<div class="col-lg-4">
				<a class="zoom green" href="work_desc.aspx"><img class="img-responsive" src="assets/img/portfolio/port01.jpg" alt="" /></a>
				<p>APE</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work_desc.aspx"><img class="img-responsive" src="assets/img/portfolio/port02.jpg" alt="" /></a>
				<p>RAIDERS</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work_desc.aspx"><img class="img-responsive" src="assets/img/portfolio/port03.jpg" alt="" /></a>
				<p>VIKINGS</p>
			</div>
		</div><!-- /row -->
		<div class="row mt centered">	
			<div class="col-lg-4">
				<a class="zoom green" href="work_desc.aspx"><img class="img-responsive" src="assets/img/portfolio/port04.jpg" alt="" /></a>
				<p>YODA</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work_desc.aspx"><img class="img-responsive" src="assets/img/portfolio/port05.jpg" alt="" /></a>
				<p>EMPERORS</p>
			</div>
			<div class="col-lg-4">
				<a class="zoom green" href="work_desc.aspx"><img class="img-responsive" src="assets/img/portfolio/port06.jpg" alt="" /></a>
				<p>CHIEFS</p>
			</div>
		</div><!-- /row -->
	</div><!-- /container -->
	
	
	    <!-- +++++ Footer Section +++++ -->
	
	   <div id="footer">
		    <div class="container">
			    <div class="row">
                    <a href="http://www.miitbeian.gov.cn" class="ft-12">© 2017 - 粤ICP备15025692号</a>
			    </div>
		    </div>
	    </div>
	

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/bootstrap.min.js"></script>
    </div>
    </form>
</body>
</html>
