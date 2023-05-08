<?php
/**
 * Template Name:Our Product
 
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
                        <h2>Our Products</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li>Our Products</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs About Title End -->
    <!-- hs sidebar Start -->
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
                                                        <h2>Our Produts </h2>
                                                        <h4><span></span></h4>
                                                    </div>
                                                </div>
                                           
                                              <?php 
                             global $paged;

                            $paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
                            $args = array(
                            'post_type'     => 'product',
                            'posts_per_page' => 6,
                            'paged'         => $paged,
                            'orderby'       => 'date',
                            );
                            
                            $loop = new WP_Query( $args );
                            if ($loop->have_posts()) :
                            while ($loop->have_posts()) : $loop->the_post();
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
                                           
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 visible-lg visible-md">
                                                    <div class="pager_wrapper">
                                                        <?php
                                echo "<ul class=\"pagination\">";
                                $big = 999999999; // need an unlikely integer
                                echo paginate_links( array(
                                'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                                'format' => '?paged=%#%',
                                'current' => max( 1, get_query_var('paged') ),
                                'total' => $loop->max_num_pages
                                ) );
                                echo "</ul>";
                                 ?>
                                                    </div>
													<?php endif; ?>
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
    </div>
    <!-- hs sidebar End -->
                 

            
<?php get_footer(); ?>
