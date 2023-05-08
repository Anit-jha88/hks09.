<?php
/**
 * Template Name: About
 */

get_header();

if( !empty(get_the_post_thumbnail_url( get_the_ID(),'full')) ):
	$bannerImage = get_the_post_thumbnail_url( get_the_ID(),'full');
else:
	$bannerImage = get_template_directory_uri().'/images/content/about_img.jpg';
endif;
 
?>
 <div class="hs_indx_title_main_wrapper">
        <div class="hs_title_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_left_wrapper">
                        <h2>About Us</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li>About Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs About Title End -->
    <!-- hs about ind wrapper Start -->
    <div class="hs_about_indx_main_wrapper hs_about_indx_inner_main_wrapper mb-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_about_left_img_wrapper">
                        <img src="<?php echo $bannerImage; ?>" alt="about_img" />
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_about_right_cont_wrapper">
                       <?php the_content();?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs about ind wrapper End -->

    <!-- hs about progress wrapper Start -->
    <div class="hs_about_progress_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_about_progress_img_left">
                        <h2><?php echo get_field('about_title');?></h2>
                        <h4><span></span></h4>
                        <img src="<?php $image= get_field('about_image'); echo $image; ?>" class="img-responsive" alt="prog_img" />
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_about_progress_cont_left">
                        <h2>Questions (faq’s)</h2>
                        <h4><span></span></h4>
                        <div class="accordionFifteen">
                            <div class="panel-group" id="accordionFifteenLeft" role="tablist">
                                <div class="panel panel-default truck_pannel">
                                    <div class="panel-heading desktop">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeftone" aria-expanded="true"> Raboto Font use for this site</a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeftone" class="panel-collapse collapse in" aria-expanded="true" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                                 <?php
                                    if( have_rows('faq_section') ):
                                    
                                    $n=1;
                                    while( have_rows('faq_section') ) : the_row();
                                    
                                    $faq_title = get_sub_field('faq_title');
                                    $faq_content = get_sub_field('faq_content'); 
                        
                                  ?>
                                <div class="panel panel-default truck_pannel">
                                    <div class="panel-heading horn">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordionFifteenLeft" href="#collapseFifteenLeft<?php echo $n;?>" aria-expanded="false"> <?php echo $faq_title;?></a>
                                        </h4>
                                    </div>
                                    <div id="collapseFifteenLeft<?php echo $n;?>" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;" role="tabpanel">
                                        <div class="panel-body">
                                            <div class="panel_cont">
                                                <p> <?php echo $faq_content;?></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-default -->
                             
                                 <?php $n++; endwhile; endif;?> 
                                <!-- /.panel-default -->
                              
                            </div>
                            <!--end of /.panel-group-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs about progress wrapper End -->
   
   
    <!-- hs online slider wrapper Start -->
    <div class="hs_online_main_slider_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_online_slider_left_cont">
                       <?php echo get_field('our_expert_content');?>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_online_slider_wrapper">
                        <div class="owl-carousel owl-theme">
                            <?php
                             $images = get_field('about_expert'); 
                             foreach( $images as $image ): 
                            ?>
                            <div class="item">
                                <div class="hs_online_img_wrapper">
                                    <img src="<?php echo esc_url($image); ?>" alt="online_img" class="img-responsive" />
                                    <span class="online"></span>
                                </div>
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
<?php get_footer(); ?>
