{% import "../mixins/flash-messages.swig" as FlashMessages %}

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title>{{ title|default("carma") }}</title>
		<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

		{# Customise the stylesheet for your site by editing /public/styles/site.less
		//- All .less files will be automatically compiled and minified in production. #}
		<link href="/styles/site.min.css" rel="stylesheet">

		{# This file provides the default styling for the KeystoneJS Content Editor #}
		{%- if user and user.canAccessKeystone -%}
			<link href="/keystone/styles/content/editor.min.css" rel="stylesheet">
		{%- endif -%}

		{# HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
		   Safely remove this block if you are not targeting IE8 #}
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

		{# Include template-specific stylesheets by extending the css block #}
		{%- block css %}
			<link href="/styles/bootstrap.css" rel="stylesheet">
			<link href="/styles/themify-icons.css" rel="stylesheet">
			<link href="/styles/flexslider.css" rel="stylesheet">
			<link href="/styles/theme.css" rel="stylesheet">
			<link href="/styles/custom.css" rel="stylesheet">
			<link href='http://fonts.googleapis.com/css?family=Montserrat%7CInconsolata:400,700%7CPathway+Gothic+One' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Flamenco:300' rel='stylesheet' type='text/css'> 
		{% endblock -%}

		{# Add any other template-specific HEAD tags by extending the head block #}
		{%- block head %}{% endblock %}
	</head>
	<body>

		{# HEADER #}
			<div class="nav-container">
            <a id="top"></a>
            <nav class="relative image-bg overlay">
                <div class="nav-utility ">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6  text-center-xs">
                                <span class="sub">58 W Palisade Ave, Englewood, NJ 07631</span>
                            </div>
                            <div class="col-sm-6 text-right text-center-xs">
                                <span class="sub">HOURS: Monday-Wednesday 11am - 7pm Monday  Thursday-Saturday Sunday 11am-3pm</span>
                            </div>
                        </div>
                        <!--end of row-->
                    </div>
                    <!--end of container-->
                </div>
                <div class="pt180 pb180 pt-xs-40 pb-xs-16">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 text-center">
                                <a href="/">
                                    <h1 class="logo-new">Carma's Kitchen</h1>
                                </a>
                            </div>
                        </div>
                        <!--end of row-->
                    </div>
                    <!--end of container-->
                </div>
                <div class="module widget-handle mobile-toggle text-center visible-xs">
                    <i class="ti-menu"></i>
                </div>
                <div class="nav-bar text-center mb-xs-0">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 text-center">
                                <ul class="menu inline-block mb-xs-16">
                                    <li class="top-link hidden-xs">
                                        <a href="#top" class="inner-link">
                                            <i class="ti-arrow-up"></i> Top</a>
                                    </li>
                                    <li>
                                        <a href="#about" class="inner-link">About</a>
                                    </li>
                                    <li>
                                        <a href="#menu" class="inner-link">Menu</a>
                                    </li>
                            
                                    <li>
                                        <a href="#gallery" class="inner-link">Gallery</a>
                                    </li>
                                    <li>
                                        <a href="#contact" class="inner-link">Contact</a>
                                    </li>
                                   
                                   
                                </ul>
                            </div>
                        </div>
                        <!--end of row-->
                    </div>
                    <!--end of container-->
                </div>
                <div class="background-image-holder">
                    <img alt="Pic" src="images/IMG_9476.JPG" />
                </div>
            </nav>
        </div>

		{# BODY #}
		<div id="body">
			{# NOTE:
			   There is no .container wrapping class around body blocks to allow more flexibility in design.
			   Remember to include it in your templates when you override the intro and content blocks! #}

			{# The Intro block appears above flash messages (used for temporary information display) #}
			{%- block intro -%}{%- endblock -%}

			{# Flash messages allow you to display once-off status messages to users, e.g. form
			   validation errors, success messages, etc. #}
			{{ FlashMessages.renderMessages(messages) }}

			{# The content block should contain the body of your template"s content #}
			{%- block content -%}{%- endblock -%}
		</div>

		{# FOOTER #}
			 <footer class="bg-primary pt120 pb120 pt-xs-40 pb-xs-64">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 mb-xs-24 text-center-xs">
                            <div class="inline-block center">
                                <h2 class="logo-foot">Carma's Kitchen</h2>
                            </div>
                            <div class="inline-block display-block-xs text-center-xs">
                                <span class="sub display-block">58 W Palisade Ave, Englewood, NJ 07631</span>
                                <span class="sub display-block">
                                        Hours: 
                                        <br>
                                            Monday - Wednesday : 7am - 4pm
                                        <br>
                                            Thursday - Saturday : 11am - 8pm
                                        <br>
                                            Sunday : 11am - 3pm
                                        </span>
                            </div>
                        </div>
                        <div class="col-md-3 col-md-offset-3 col-sm-4 col-sm-offset-2 text-center">
                            <h6 class="uppercase">Follow Us</h6>
                            <ul class="list-inline social-list">
                                    <a href="#">
                                        <i class="ti-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--end of row-->
                </div>
                <!--end of container-->
            </footer>
        </div>
		

		{# JAVASCRIPT #}

		{# jQuery 1.11.1 is included by default, and required by both Bootstrap
			and the KeystoneJS Content Editor. If you are not targeting IE8,
			you can upgrade to 2.1.3 (also bundled) for better performance. #}
		<script src="/js/jquery.min.js"></script>

		{# Customise which Bootstrap javascript files are served by including
			them specifically here, instead of bootstrap-3.4.4.min.js #}
			<script src="js/bootstrap.min.js"></script>

		{# The KeystoneJS Content Editor provides support for ks-editable data attributes,
			which generate links to edit content for users who can access Keystone #}
		{% if user and user.canAccessKeystone -%}
			<script src="/keystone/js/content/editor.js"></script>
		{%- endif -%}

		{# Add scripts that are globally required by your site here. #}

		{# Include template-specific javascript files by extending the js block #}
		{%- block js -%}
			<script src="js/flexslider.min.js"></script>
			<script src="js/smooth-scroll.min.js"></script>
			<script src="js/parallax.min.js"></script>
			<script src="js/scripts.js"></script>
		{%- endblock -%}
	</body>
</html>
