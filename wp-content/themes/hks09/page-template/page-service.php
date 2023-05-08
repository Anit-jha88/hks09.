<?php
/**
 * Template Name: Service
 
 */

get_header(); 

if( !empty(get_the_post_thumbnail_url( get_the_ID(),'full')) ):
	$bannerImage = get_the_post_thumbnail_url( get_the_ID(),'full');
else:
	$bannerImage = get_template_directory_uri().'/images/comprehensive.jpg';
endif;
?>


 <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5">
            <h1 class="display-3 text-white mb-4 animated slideInDown"><?php the_title();?></h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="<?php echo get_home_url(); ?>">Home</a></li>
                    
                    <li class="breadcrumb-item active" aria-current="page"> <?php the_title();?></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <div class="container-xxl py-5">
        <div class="container">
             <div class="row">
      <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
        <?php the_content();?>
		</div>
      <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
       
          <img src="<?php echo $bannerImage;?>" height="405" alt="" style="width:100%"/>
       
 </div>
    </div>
        </div>
    </div>
<?php get_footer(); ?>
