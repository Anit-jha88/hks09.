<?php
/**
 * Template Name: Contact
 
 */

get_header(); 
if( !empty(get_the_post_thumbnail_url( get_the_ID(),'full')) ):
	$bannerImage = get_the_post_thumbnail_url( get_the_ID(),'full');
else:
	$bannerImage = get_template_directory_uri().'/images/dealerBannerImg.png';
endif;

?>
 
<div class="hs_indx_title_main_wrapper">
        <div class="hs_title_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_left_wrapper">
                        <h2>Contact Us</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li>Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs About Title End -->
    <!-- hs contact us Title Start -->
    <div class="hs_contact_tittle_main_wrapper mb-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="hs_about_heading_main_wrapper">
                        <div class="hs_about_heading_wrapper">
                            
                            <?php the_content();?>
                            <h4><span></span></h4>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_contact_title_box_wrapper">
                        <div class="hs_service_icon_main_wrapper">
                            <div class="hs_service_icon_wrapper hs_contact_indx_icon_wrapper">
                                <i class="fa fa-phone"></i>
                                <div class="btc_step_overlay"></div>
                            </div>
                        </div>
                        <p> <?php echo get_field('contact_phone_no')?></p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_contact_title_box_wrapper">
                        <div class="hs_service_icon_main_wrapper">
                            <div class="hs_service_icon_wrapper hs_contact_indx_icon_wrapper">
                                <i class="fa fa-envelope"></i>
                                <div class="btc_step_overlay"></div>
                            </div>
                        </div>
                        <?php echo get_field('contact_email_address')?>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_contact_title_box_wrapper">
                        <div class="hs_service_icon_main_wrapper">
                            <div class="hs_service_icon_wrapper hs_contact_indx_icon_wrapper">
                                <i class="fa fa-map-marker"></i>
                                <div class="btc_step_overlay"></div>
                            </div>
                        </div>
                        <?php echo get_field('contact_address')?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs contact us Title End -->
   
    <!-- hs contact form Start -->
    <div class="hs_contact_indx_form_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="hs_about_heading_main_wrapper">
                        <div class="hs_about_heading_wrapper">
                            <h2>Fill Free <span>Enquiry Form</span></h2>
                            <h4><span></span></h4>
                        </div>
                    </div>
                </div>
			   <?php echo do_shortcode('[contact-form-7 id="48" title="Contact form 1"]');?>
            </div>
        </div>
    </div>
    <!-- hs contact form End -->
    
    <?php get_footer(); ?>