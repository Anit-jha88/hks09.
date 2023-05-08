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
                        <h2>Blogs</h2>
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
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="hs_blog_left_sidebar_main_wrapper">
                        <div class="row">
				<?php
					$category_description = category_description();
					if ( ! empty( $category_description ) )
						echo '<div class="archive-meta">' . $category_description . '</div>';

				/*
				 * Run the loop for the category page to output the posts.
				 * If you want to overload this in a child theme then include a file
				 * called loop-category.php and that will be used instead.
				 */
				get_template_part( 'loop', 'category' );
				?>

			 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 visible-lg visible-md">
                               
                                <div class="pager_wrapper">
                                  
                                <?php next_posts_link( 'Older posts' ); ?>
                                <?php previous_posts_link( 'Newer posts' ); ?>
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
                                    <input type="text" placeholder="Search">
                                    <button type="submit"><i class="fa fa-search"></i></button>
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
