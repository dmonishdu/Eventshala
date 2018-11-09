<% if (session.getAttribute("userName") == null) {
        out.println("<script type=\"text/javascript\">");
        out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Somthing Went Wrong';");
        out.println("</script>");
    }
%>
<html class="loading" lang="en" data-textdirection="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta name="description" content="Chameleon Admin is a modern Bootstrap 4 webapp &amp; admin dashboard html template with a large number of components, elegant design, clean and organized code.">
        <meta name="keywords" content="admin template, Chameleon admin template, dashboard template, gradient admin template, responsive admin template, webapp, eCommerce dashboard, analytic dashboard">
        <meta name="author" content="ThemeSelect">
        <title>Dashboard | Admin</title>
        <link rel="apple-touch-icon" href="theme-assets/images/ico/apple-icon-120.png">
        <link rel="shortcut icon" type="image/x-icon" href="theme-assets/images/ico/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i%7CComfortaa:300,400,700" rel="stylesheet">
        <link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css" rel="stylesheet">
        <!-- BEGIN VENDOR CSS-->
        <link rel="stylesheet" type="text/css" href="theme-assets/css/vendors.css">
        <link rel="stylesheet" type="text/css" href="theme-assets/vendors/css/charts/chartist.css">
        <!-- END VENDOR CSS-->
        <!-- BEGIN CHAMELEON  CSS-->
        <link rel="stylesheet" type="text/css" href="theme-assets/css/app-lite.css">
        <!-- END CHAMELEON  CSS-->
        <!-- BEGIN Page Level CSS-->
        <link rel="stylesheet" type="text/css" href="theme-assets/css/core/menu/menu-types/vertical-menu.css">
        <link rel="stylesheet" type="text/css" href="theme-assets/css/core/colors/palette-gradient.css">
        <link rel="stylesheet" type="text/css" href="theme-assets/css/pages/dashboard-ecommerce.css">
        <!-- END Page Level CSS-->
        <!-- BEGIN Custom CSS-->
        <!-- END Custom CSS-->
    </head>
    <body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar" data-open="click" data-menu="vertical-menu" data-color="bg-chartbg" data-col="2-columns">

        <!-- fixed-top-->
        <nav class="header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light">
            <div class="navbar-wrapper">
                <div class="navbar-container content">
                    <div class="collapse navbar-collapse show" id="navbar-mobile">
                        <ul class="nav navbar-nav mr-auto float-left">
                            <li class="nav-item d-block d-md-none"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="#"><i class="ft-menu"></i></a></li>
                            <li class="nav-item d-none d-md-block"><a class="nav-link nav-link-expand" href="#"><i class="ficon ft-maximize"></i></a></li>
                        </ul>
                        <ul class="nav navbar-nav float-right">

                            <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">             <span class="avatar avatar-online"><img src="theme-assets/images/portrait/small/download.png" alt="avatar"><i></i></span></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <div class="arrow_box_right"><a class="dropdown-item" href="#"><span class="avatar avatar-online"><img src="theme-assets/images/portrait/small/download.png" alt="avatar"><span class="user-name text-bold-700 ml-1"><% out.println(session.getAttribute("userName"));%></span></span></a>
                                        <div class="dropdown-divider"></div><a class="dropdown-item"  href="../Request?Logout" ><i class="ft-power"></i> Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <!-- ////////////////////////////////////////////////////////////////////////////-->


        <div class="main-menu menu-fixed menu-light menu-accordion    menu-shadow " data-scroll-to-active="true" data-img="theme-assets/images/backgrounds/02.jpg">
            <div class="navbar-header">
                <ul class="nav navbar-nav flex-row">       
                    <li class="nav-item mr-auto"><a class="navbar-brand" href="index.jsp"><img class="brand-logo" alt="Chameleon admin logo" src="theme-assets/images/logo/logo.png"/>
                            <h3 class="brand-text">Admin Dashboard</h3></a></li>
                    <li class="nav-item d-md-none"><a class="nav-link close-navbar"><i class="ft-x"></i></a></li>
                </ul>
            </div>
            <div class="main-menu-content">
                <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
                    <li class="active"><a href="index.jsp"><i class="ft-home"></i><span class="menu-title" data-i18n="">Dashboard</span></a>
                    </li>
                    <li class=" nav-item"><a href="pendingEvent.jsp"><i class="ft-layers"></i><span class="menu-title" data-i18n="">Pending Events</span></a>
                    </li>
                    <li class=" nav-item"><a href="activeEvent.jsp"><i class="ft-layers"></i><span class="menu-title" data-i18n="">Active Events</span></a>
                    </li>
                    <li class=" nav-item"><a href="allEvent.jsp"><i class="ft-layers"></i><span class="menu-title" data-i18n="">All Events</span></a>
                    </li>
                </ul>
            </div>
            <div class="navigation-background"></div>
        </div>

