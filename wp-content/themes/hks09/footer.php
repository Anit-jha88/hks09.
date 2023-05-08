  <div class="hs_footer_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_footer_logo_wrapper">
                        <?php echo get_field('need_our_help','option')?>
                        <h4><a href="<?php echo get_page_link(14)?>">Read More <i class="fa fa-long-arrow-right"></i></a></h4>
                        <ul>
                            <li><a href="<?php echo get_field('facebook_link','option')?>" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="<?php echo get_field('instagram_link','option')?>" target="_blank"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="<?php echo get_field('youtube_link','option')?>" target="_blank"><i class="fa fa-youtube-play"></i></a></li>
                         </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_footer_help_wrapper">
                        <?php echo get_field('need_our_help2','option')?>
                        <div class="hs_footer_help_btn">
                            <ul>
                                <li><a href="tel:<?php echo get_field('phone_number','option')?>" class="hs_btn_hover"><?php echo get_field('phone_number','option')?></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_footer_contact_wrapper contactBox">
                       <?php echo get_field('contact_us_today','option')?>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs footer wrapper End -->
    <!-- hs bottom footer wrapper Start -->
    <div class="hs_bottom_footer_main_wrapper">
        <a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer_bottom_cont_wrapper">
                        <p>© <script type="text/javascript">document.write(new Date().getFullYear());</script>  Hunja Kalyanam Sansthan (India),  All Rights Reserved  |   Developed By 
                            <a target="_blank" class="mkstechnosoft" href="https://www.mkstechnosoft.com/">MKS Technosoft</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs bottom footer wrapper End -->
    <!--main js file start-->
   
    <script src="<?php bloginfo( 'template_url' ); ?>/js/jquery_min.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/bootstrap.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/modernizr.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.menu-aim.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/parallax.min.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/owl.carousel.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.shuffle.min.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.countTo.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.inview.min.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/jquery.magnific-popup.js"></script>
    <script src="<?php bloginfo( 'template_url' ); ?>/js/custom.js"></script>
    <!--main js file end-->

<?php
	/*
	 * Always have wp_footer() just before the closing </body>
	 * tag of your theme, or you will break many plugins, which
	 * generally use this hook to reference JavaScript files.
	 */

	wp_footer();
?>
</body>
  
</html>
