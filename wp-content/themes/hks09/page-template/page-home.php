<?php
/**
 * Template Name: Home
 
 */

get_header();

if( !empty(get_the_post_thumbnail_url( get_the_ID(),'full')) ):
	$bannerImage = get_the_post_thumbnail_url( get_the_ID(),'full');
else:
	$bannerImage = get_template_directory_uri().'/images/whyus.jpg';
endif;
?>

    <div class="slider-area">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                                  <?php
                                    if( have_rows('banner') ):
                                    
                                    $n=1;
                                    while( have_rows('banner') ) : the_row();
                                    
                                    $banner = get_sub_field('banner');
                                   
                        
                                  ?>    
              <div class="item active">
                <img src="<?php bloginfo( 'template_url' ); ?>/images/content/banner1.png" width="100%" alt="banner">
              </div>
               <?php $n++; endwhile; endif;?> 
           </div>
        </div>
    </div>
    <!-- hs Slider End -->
  
    <!-- hs about ind wrapper Start -->
    <div class="hs_about_indx_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="hs_about_heading_main_wrapper">
                        <div class="hs_about_heading_wrapper">
                           <?php the_content();?>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_about_left_img_wrapper">
                        <img src="<?php echo get_field('home_about_iage');?>" alt="about_img" width="100%" />
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_about_right_cont_wrapper">
                        <?php echo get_field('home_about_content');?>
                        <div class="hs_effect_btn hs_about_btn">
                            <ul>
                                <li><a href="<?php echo get_page_link(14);?>" class="hs_btn_hover">Read more</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs about ind wrapper End -->
  
  <!-- hs about video wrapper Start -->
  <div class="hs_about_video_main_wrapper">
    <div class="hs_about_video_img_overlay"></div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="hs_about_video_icon_wrapper">
                <a class="popup-youtube" href="#."><img src="<?php bloginfo( 'template_url' ); ?>/images/content/about/play_icon.png" alt="play_icon"/></a>
                <h2>Play Astrologer Tips <span>And better Your Life</span></h2>
            </div>
        </div>
    </div>
</div>
<!-- hs about video wrapper End -->

    <!-- hs service wrapper Start -->
       <div class="hs_service_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="hs_about_heading_main_wrapper">
                        <div class="hs_about_heading_wrapper">
                            <h2>Our <span> services</span></h2>
                            <h4><span></span></h4>
                        </div>
                    </div>
                </div>
                <div class="portfolio-area ptb-100">
                    <div class="container">
                        <div class="portfolio-filter clearfix text-center">
                            <ul id="filter">
                                <li><a class="active" data-group="all">All</a></li>
                                <?php
                                $terms = get_terms( array(
                                'taxonomy' => 'service',
                                'hide_empty' => false,
                                ) );
                                
                                foreach ( $terms as $term ) {
                                ?>
                                <li><a data-group="<?php echo $term->slug;?>"><?php echo $term->name;?></a></li>
                               <?php } ?>
                            </ul>
                        </div>
                        <div class="row">
                            <div id="gridWrapper" class="clearfix">
                                <?php
                                         $terms = get_terms( array(
                                'taxonomy' => 'service',
                                'hide_empty' => false,
                                ) );
                                
                                foreach ( $terms as $term ) {
                                       
                                        $args = array(
                                        'post_type' => 'services',
                                        'posts_per_page'=>-1,
                                        'tax_query' => array(
                                        array(
                                        'taxonomy' => 'service',
                                        'terms' => $term->term_id,
                                        'field' => 'term_id',
                                        ),
                                        ),
                                        );
                                        
                                        $loop = new WP_Query($args);
                                         if($loop->have_posts()) {
                                          while($loop->have_posts()) : $loop->the_post();         
                                    ?>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 portfolio-wrapper III_column" data-groups='[ "all","<?php echo $term->slug; ?>"]'>
                                    <div class="hs_service_main_box_wrapper">
                                        <div class="hs_service_icon_main_wrapper">
                                            <div class="hs_service_icon_wrapper">
                                                <i class="<?php echo get_field('fab_icon');?>"></i>
                                                <div class="btc_step_overlay"></div>
                                            </div>
                                        </div>
                                        <div class="hs_service_icon_cont_wrapper">
                                            <h2><?php echo get_the_title(); ?></h2>
                                            <p><?php echo get_the_content(); ?></p>
                                            <h5><a href="#">Read More <i class="fa fa-long-arrow-right"></i></a></h5>
                                        </div>
                                    </div>
                                </div>

                              
                               <?php  endwhile; } } wp_reset_query(); ?>
                               

                               
                              
                            </div>
                            <!--/#gridWrapper-->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container -->
                </div>
                <!--/.portfolio-area-->
            </div>
        </div>
    </div>

   
    <!-- hs advert wrapper Start -->
    <div class="hs_advert_main_wrapper">
        <div class="hs_advert_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="hs_advert_cont_wrapper">
                        <?php echo get_field('stop_self');?>
                        <div class="hs_effect_btn hs_advert_btn_wrapper">
                            <ul>
                                <li><a href="<?php echo get_page_link(27)?>" class="hs_btn_hover">Read more</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs advert wrapper End -->
   
    <!-- hs online slider wrapper Start -->
    <div class="hs_online_main_slider_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_online_slider_left_cont">
                       <?php echo get_field('speak_to_our_expert');?>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="hs_online_slider_wrapper">
                        <div class="owl-carousel owl-theme">
                           <?php
                             $images = get_field('speak_to_our_expert_gallery'); 
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
