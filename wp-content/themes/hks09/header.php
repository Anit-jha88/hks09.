<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Nineteen
 * @since 1.0.0
 */
?><!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<link rel="profile" href="https://gmpg.org/xfn/11" />
	
    <link rel="icon" href="<?php bloginfo( 'template_url' ); ?>/img/icon/favicon_ico.png">
    <!-- Favicon -->
   
	<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '|', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " | $site_description";

	// Add a page number if necessary:
	if ( ( $paged >= 2 || $page >= 2 ) && ! is_404() )
		echo esc_html( ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) ) );

	?></title>
	
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/fonts.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/flaticon.css" />
	<link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/sign_flaticon.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/owl.theme.default.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/style.css" />
    <link rel="stylesheet" type="text/css" href="<?php bloginfo( 'template_url' ); ?>/css/responsive.css" />
    <!-- favicon links -->
 
   
   
	<?php wp_head(); ?>
	
   </head>
   
   
   <body>
    <!-- preloader Start -->
    <div id="preloader">
        <div id="status"><img src="<?php bloginfo( 'template_url' ); ?>/images/header/horoscope.gif" id="preloader_image" alt="loader">
        </div>
    </div>
    <!-- hs top header Start -->
    <div class="hs_top_header_main_Wrapper">
        <div class="container">
            <div class="hs_header_logo_left hidden-xs">
                <div class="hs_logo_wrapper">
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo $a['url']=get_field('logo','option')?>" width="90px" class="img-responsive" alt="logo" title="Logo"/></a>
                </div>
            </div>
            <div class="hs_header_logo_right">
              
                <div class="hs_btn_wrapper">
                    <ul>
                        <li><a href="tel:<?php echo get_field('phone_number','option')?>" class="hs_btn_hover"><?php echo get_field('phone_number','option')?></a></li>
                    </ul>
                </div>
				 <div class="hs_header_add_wrapper hidden-xs hidden-sm">
                    <div class="hs_header_add_icon">
                        <i class="fa fa-home"></i>
                    </div>
                    <div class="hs_header_add_icon_cont">
                        <h5>Reach Us</h5>
                        <p><?php echo get_field('reach_us','option')?></p>
                    </div>
                </div>
                <div class="hs_header_add_wrapper hidden-xs hidden-sm">
                    <div class="hs_header_add_icon">
                        <i class="fa fa-phone"></i>
                    </div>
                    <div class="hs_header_add_icon_cont">
                        <h5>Talk to Astrologers</h5>
                        <p><?php echo get_field('talk_to_astrologers','option')?></p>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
    <!-- hs top header End -->
    <!-- hs Navigation Start -->
    <div class="hs_navigation_header_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <nav class="hs_main_menu hidden-xs">
                       <?php
            $consult_menu = wp_nav_menu(array(
                    'theme_location' => 'primary',
                    'menu_id' => '',
                    'menu_class' => '',
                    'echo' => false
                )
            );
            $consult_menu = str_replace('menu-item', 'nav-item', $consult_menu);
            echo $consult_menu;
            ?>
                    </nav>
                    <header class="mobail_menu visible-xs">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6">
                                    <div class="hs_logo">
                                        <a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php bloginfo( 'template_url' ); ?>/images/header/logo.png" alt="Logo" title="Logo"></a>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6">
                                    <div class="cd-dropdown-wrapper">
                                        <a class="house_toggle" href="#0">
													<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
															 width="511.63px" height="511.631px" viewBox="0 0 511.63 511.631" style="enable-background:new 0 0 511.63 511.631;"
															 xml:space="preserve">
														<g>
															<g>
																<path d="M493.356,274.088H18.274c-4.952,0-9.233,1.811-12.851,5.428C1.809,283.129,0,287.417,0,292.362v36.545
																	c0,4.948,1.809,9.236,5.424,12.847c3.621,3.617,7.904,5.432,12.851,5.432h475.082c4.944,0,9.232-1.814,12.85-5.432
																	c3.614-3.61,5.425-7.898,5.425-12.847v-36.545c0-4.945-1.811-9.233-5.425-12.847C502.588,275.895,498.3,274.088,493.356,274.088z"
																	/>
																<path d="M493.356,383.721H18.274c-4.952,0-9.233,1.81-12.851,5.427C1.809,392.762,0,397.046,0,401.994v36.546
																	c0,4.948,1.809,9.232,5.424,12.854c3.621,3.61,7.904,5.421,12.851,5.421h475.082c4.944,0,9.232-1.811,12.85-5.421
																	c3.614-3.621,5.425-7.905,5.425-12.854v-36.546c0-4.948-1.811-9.232-5.425-12.847C502.588,385.53,498.3,383.721,493.356,383.721z"
																	/>
																<path d="M506.206,60.241c-3.617-3.612-7.905-5.424-12.85-5.424H18.274c-4.952,0-9.233,1.812-12.851,5.424
																	C1.809,63.858,0,68.143,0,73.091v36.547c0,4.948,1.809,9.229,5.424,12.847c3.621,3.616,7.904,5.424,12.851,5.424h475.082
																	c4.944,0,9.232-1.809,12.85-5.424c3.614-3.617,5.425-7.898,5.425-12.847V73.091C511.63,68.143,509.82,63.861,506.206,60.241z"/>
																<path d="M493.356,164.456H18.274c-4.952,0-9.233,1.807-12.851,5.424C1.809,173.495,0,177.778,0,182.727v36.547
																	c0,4.947,1.809,9.233,5.424,12.845c3.621,3.617,7.904,5.429,12.851,5.429h475.082c4.944,0,9.232-1.812,12.85-5.429
																	c3.614-3.612,5.425-7.898,5.425-12.845v-36.547c0-4.952-1.811-9.231-5.425-12.847C502.588,166.263,498.3,164.456,493.356,164.456z
																	"/>
															</g>
														</g>
													</svg>
													</a>
                                        <nav class="cd-dropdown">
                                            <h2><a href="<?php echo esc_url( home_url( '/' ) ); ?>">HKS09</a></h2>
                                            <a href="#0" class="cd-close">Close</a>
                                            
                                             <?php
            $consult_menu = wp_nav_menu(array(
                    'theme_location' => 'primary',
                    'menu_id' => '',
                    'menu_class' => 'cd-dropdown-content',
                    'echo' => false
                )
            );
            $consult_menu = str_replace('menu-item', 'nav-item', $consult_menu);
            echo $consult_menu;
            ?>
                                            
                                        </nav>
                                        <!-- .cd-dropdown -->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- .cd-dropdown-wrapper -->
                    </header>
                </div>
            
            </div>
        </div>
    </div>
    <!-- hs Navigation End -->
    <!-- hs Slider Start -->
   
   
   
   
