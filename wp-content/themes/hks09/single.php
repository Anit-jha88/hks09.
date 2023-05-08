<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header();
?>
   <div class="hs_indx_title_main_wrapper">
        <div class="hs_title_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_left_wrapper">
                        <h2>Blog Details</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 full_width">
                    <div class="hs_indx_title_right_wrapper">
                        <ul>
                            <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> &nbsp;&nbsp;&nbsp;> </li>
                            <li>Blog Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
/* Start the Loop */
while ( have_posts() ) :
	the_post();
	$image=wp_get_attachment_image_src(get_post_thumbnail_id($post->ID),'full'); 

?>
 <div class="hs_blog_categories_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="hs_blog_left_sidebar_main_wrapper">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="hs_blog_box1_main_wrapper">
                                    <div class="hs_blog_box1_img_wrapper">
                                        <img src="<?php echo $image[0];?>" alt="blog_img">
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
                                            
                                           <?php the_content();?>
                                        </div>
                                      
                                    </div>
                                  
                                </div>
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
                       
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hs sidebar End -->
<?php

endwhile; // End of the loop.

get_footer();
