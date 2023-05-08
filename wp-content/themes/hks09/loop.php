<?php
/**
 * The loop that displays posts
 *
 * The loop displays the posts and the post content. See
 * https://codex.wordpress.org/The_Loop to understand it and
 * https://codex.wordpress.org/Template_Tags to understand
 * the tags used in it.
 *
 * This can be overridden in child themes with loop.php or
 * loop-template.php, where 'template' is the loop context
 * requested by a template. For example, loop-index.php would
 * be used if it exists and we ask for the loop with:
 * <code>get_template_part( 'loop', 'index' );</code>
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?>


<?php 

while ( have_posts() ) : the_post(); 
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
               

<?php endwhile; // End the loop. Whew. ?>

