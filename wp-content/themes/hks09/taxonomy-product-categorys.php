<?php
/**
 * Template for displaying Category Archive pages
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */

get_header(); ?>

 <div class="hs_indx_title_main_wrapper">
        <div class="hs_title_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_left_wrapper">
                        <h2>Product</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li><?php
					printf( __( ' %s', 'twentyten' ), '<span>' . single_cat_title( '', false ) . '</span>' );
				?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

  <div class="hs_blog_categories_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                    <div class="hs_blog_right_sidebar_main_wrapper mt-0">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="hs_blog_right_search_wrapper">
                                   <form action=" <?php echo home_url( '/' ); ?>" method="get">
                                    <input type="text" placeholder="Search"  name="s" id="search" value="<?php the_search_query(); ?>">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="hs_blog_right_cate_list_heading_wrapper">
                                    <h2>PRODUCT CATEGORIES</h2>
                                </div>
                                <div class="hs_blog_right_cate_list_cont_wrapper">
                                    <ul>
                                         <?php
                                $terms = get_terms( array(
                                'taxonomy' => 'product-categorys',
                                'hide_empty' => false,
                                ) );
                                
                                foreach ( $terms as $term ) {
                                ?>
                                <li><a href="<?php echo get_term_link($term->term_id);?>"><?php echo $term->name;?></a></li>
                               <?php } ?>
                                       
                                </ul>
                                </div>
                            </div>
                      
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    <div class="hs_blog_left_sidebar_main_wrapper">
                        <div class="row">
                        
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="">
                                    <div class="tab-content">
                                        <div  class="tab-pane fade in active">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="hs_kd_first_sec_wrapper">
                                                        <h2><?php
					printf( __( ' %s', 'twentyten' ), '<span>' . single_cat_title( '', false ) . '</span>' );
				?> </h2>
                                                        <h4><span></span></h4>
                                                    </div>
                                                </div>
                                                
                                                  <?php 
                          
                           while ( have_posts() ) : the_post();
                            $image=wp_get_attachment_image_src(get_post_thumbnail_id($post->ID),'full'); 

                            
                            ?>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                    <div class="hs_shop_prodt_main_box">
                                                        <div class="hs_shop_prodt_img_wrapper">
                                                            <img src="<?php  echo $image[0]; ?>" alt="Product 6">
                                                        </div>
                                                        <div class="hs_shop_prodt_img_cont_wrapper">
                                                            <h2><a href="#."><?php the_title();?></a></h2>
                                                           <?php the_content();?>
                                                          
                                                            <h4>Offers <span>Special Price</span></h4>
                                                        </div>
                                                    </div>
                                                </div>
                                              <?php endwhile; ?>
                                           
                                               
                                            </div>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
    </div>
<?php get_footer(); ?>
