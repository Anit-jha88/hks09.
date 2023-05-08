<?php
/**
 * Main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: https://codex.wordpress.org/Template_Hierarchy
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
                        <h2>Blogs</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li>Blogs</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


	 
<div class="hs_blog_categories_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="hs_blog_left_sidebar_main_wrapper">
                        <div class="row">
                            <?php 
                             global $paged;

                            $paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
                            $args = array(
                            'post_type'     => 'post',
                            'posts_per_page' => 2,
                            'paged'         => $paged,
                            'orderby'       => 'date',
                            );
                            
                            $loop = new WP_Query( $args );
                            if ($loop->have_posts()) :
                            while ($loop->have_posts()) : $loop->the_post();
                            $image=wp_get_attachment_image_src(get_post_thumbnail_id($post->ID),'full'); 

                            
                            ?>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="hs_blog_box1_main_wrapper">
                                    <div class="hs_blog_box1_img_wrapper">
                                        <img src="<?php  echo $image[0]; ?>" alt="blog_img">
                                        <div class="hs_blog_Indx_date_wrapper">
                                            <ul>
                                                <li><?php echo get_the_date('d')?></li>
                                                <li><?php echo get_the_date('M')?></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="hs_blog_box1_cont_main_wrapper">
                                        <div class="hs_blog_cont_heading_wrapper">
                                            <h2><?php the_title();?></h2>
                                            <h4><span></span></h4>
                                            <p><?php echo substr(strip_tags(get_the_content()),0,200); ?></p>
                                            <h5><a href="<?php the_permalink();?>">Read More <i class="fa fa-long-arrow-right"></i></a></h5>
                                        </div>
                                    </div>
                                    <div class="hs_blog_box1_bottom_cont_main_wrapper">
                                        <div class="hs_blog_box1_bottom_cont_left">
                                            <ul>
                                                <li><a href="#.">By </a></li>
                                                <li><a href="#.">Hunja Kalyanam Sansthan (India)</a></li>
                                            </ul>
                                        </div>
                                      
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
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="hs_blog_right_sidebar_main_wrapper">
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
                                    <h2>Blog CATEGORIES</h2>
                                </div>
                                <div class="hs_blog_right_cate_list_cont_wrapper">
                                    <ul>
                                        <?php
                                        $args = array(
                                        'orderby' => 'name',
                                        'hide_empty'=>0,
                                        'order' => 'ASC'
                                        );
                                        $categories = get_categories($args);
                                        foreach($categories as $category) { 
                                       ?>
                                        <li><a href="<?php  echo get_category_link( $category->term_id ); ?>"><?php echo $category->name;?></a></li>
                                       <?php  } ?>
                                    </ul>
                                </div>
                            </div>
                       
                       
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 visible-sm visible-xs">
                                <div class="pager_wrapper">
                                    <ul class="pagination">
                                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                        <li class="btc_shop_pagi"><a href="#">01</a></li>
                                        <li class="btc_shop_pagi"><a href="#">02</a></li>
                                        <li class="btc_third_pegi btc_shop_pagi"><a href="#">03</a></li>
                                        <li class="hidden-xs btc_shop_pagi"><a href="#">04</a></li>
                                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<?php get_footer(); ?>
