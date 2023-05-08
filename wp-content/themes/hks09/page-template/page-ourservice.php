<?php
/**
 * Template Name: Our Service
 
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
                        <h2>Our Services</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li>Our Services</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs About Title End -->
  
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

                              
                               <?php  endwhile; } } ?>
                               

                               
                              
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
   
<?php get_footer(); ?>
