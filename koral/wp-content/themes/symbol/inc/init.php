<?php
/**
 * @version    1.0.1
 * @package    symbol
 * @author     aarif hassan
 * @copyright  Copyright (C) 2015 hellothirteen.com All Rights Reserved.
 * @license    GNU/GPL v2 or later http://www.gnu.org/licenses/gpl-2.0.html
 *
 * Websites: http://www.hellothirteen.com
 */

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

/**
 * Set the content width based on the theme's design and stylesheet.
 */
if ( ! isset( $content_width ) ) {
	$content_width = 960;
}
 
/*
 * Let WordPress manage the document title.
 * By adding theme support, we declare that this theme does not use a
 * hard-coded <title> tag in the document head, and expect WordPress to
 * provide it for us.
 */
add_theme_support( 'title-tag' );


/**
 * Register widgetized area and update sidebar with default widgets
 */
function symbol_widget_areas() {
	register_sidebar( array(
        'name' => __( 'Left Sidebar', 'symbol' ),
        'id' => 'left_sidebar',
        'before_widget' => '<div class="single_sidebar">',
        'after_widget' => '</div>',
        'before_title' => '<h3>',
        'after_title' => '</h3>',
    ) );
	
	register_sidebar( array(
        'name' => __( 'Footer Sidebar', 'symbol' ),
        'id' => 'footer_sidebar',
        'before_widget' => '<div class="single_footer">',
        'after_widget' => '</div>',
        'before_title' => '<h3>',
        'after_title' => '</h3>',
    ) );
};

add_action('widgets_init', 'symbol_widget_areas');

/**
 * Make theme available for translation.
 * Translations can be filed in the /languages/ directory.
 */

function symbol_lang_setup() {
	
	load_theme_textdomain( 'symbol', get_template_directory() . '/lang' );
	
}
add_action( 'after_setup_theme', 'symbol_lang_setup' );

/**
 * Pagination Code
 */
function symbol_pagination($pages = '', $range = 4)
    {  
         $showitems = ($range * 2)+1;  

         global $paged;
         if(empty($paged)) $paged = 1;

         if($pages == '')
         {
             global $wp_query;
             $pages = $wp_query->max_num_pages;
             if(!$pages)
             {
                 $pages = 1;
             }
         }   

         if(1 != $pages)
         {
             echo "<div class=\"pagination\"><span>Page ".$paged." of ".$pages."</span>";
             if($paged > 2 && $paged > $range+1 && $showitems < $pages) echo "<a href='".get_pagenum_link(1)."'>&laquo; First</a>";
             if($paged > 1 && $showitems < $pages) echo "<a href='".get_pagenum_link($paged - 1)."'>&lsaquo; Previous</a>";

             for ($i=1; $i <= $pages; $i++)
             {
                 if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
                 {
                     echo ($paged == $i)? "<span class=\"current\">".$i."</span>":"<a href='".get_pagenum_link($i)."' class=\"inactive\">".$i."</a>";
                 }
             }

             if ($paged < $pages && $showitems < $pages) echo "<a href=\"".get_pagenum_link($paged + 1)."\">Next &rsaquo;</a>";  
             if ($paged < $pages-1 &&  $paged+$range-1 < $pages && $showitems < $pages) echo "<a href='".get_pagenum_link($pages)."'>Last &raquo;</a>";
             echo "</div>\n";
         }
    } 


/**
 * symbol theme uses wp_nav_menu() in two locations.
 */
function symbol_setup() {
    if (function_exists('register_nav_menu')) {
        register_nav_menu( 'main-menu', __( 'Main Menu', 'symbol') );
    }
	
	register_nav_menu( 'top-menu', __( 'Top Menu', 'symbol' ) );

}
add_action('init', 'symbol_setup');


/**
 * Add default posts and comments RSS feed links to head

 */
	add_theme_support('automatic-feed-links');
	
	
	add_theme_support( 'custom-background' );
	
	
	$args = array(
		'width'         => 1400,
		'height'        => 100,
	);
	add_theme_support( 'custom-header', $args );

	
/**
*	add editor stylesheet
*/

add_editor_style('css/editor-style.css');	
	

/**
*	Remove color section from wp customizer
*/
	
function symbol_theme_customize_register( $wp_customize ) {
	$wp_customize->remove_section("colors");
}
add_action( "customize_register", "symbol_theme_customize_register" );


/**
 * Enable support for Post Thumbnails on posts and pages
 *
 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
 *
 * Enable support for Post Formats
 */
	add_theme_support( 'post-thumbnails', array( 'post', 'page', 'symbol_main_slider', 'product') );
	
	set_post_thumbnail_size( 200, 200, true ); // Normal post thumbnails, hard crop mode
	
	add_image_size( 'slider-item', 1600, 480, true );
	add_image_size( 'post-thumb', 420, 350, true );
	add_image_size( 'post-full-image', 9999, 500, false);




/**
 * Enqueue scripts and styles
 */
function symbol_scripts() {

	// load jquery ui stylesheet.
	wp_enqueue_style( 'symbol_jquery_ui', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css', array(), '1' );
	
	// load hover effects stylesheet.
	wp_enqueue_style( 'symbol_hover_effect', get_template_directory_uri() . '/css/hover_effect.css', array(), '1' );
	
	// load prettyphoto stylesheet.
	wp_enqueue_style( 'symbol_prettyphoto', get_template_directory_uri() . '/css/prettyPhoto.css', array(), '1' );
	
	// load font awesome stylesheet
	wp_enqueue_style( 'symbol_fontawesome', get_template_directory_uri() . '/css/font-awesome.min.css', array(), '1' );
	
	// load bootstrap min stylesheet
	wp_enqueue_style( 'symbol_bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '1' );
	
	// load owl carousel stylesheet
	wp_enqueue_style( 'symbol_owl_carousel', get_template_directory_uri() . '/css/owl.carousel.css', array(), '1' );
	
	// load owl carousel theme stylesheet
	wp_enqueue_style( 'symbol_owl_theme', get_template_directory_uri() . '/css/owl.theme.css', array(), '1' );
	
	// load owl carousel transition stylesheet
	wp_enqueue_style( 'symbol_owl_transitions', get_template_directory_uri() . '/css/owl.transitions.css', array(), '1' );
	
	// load normalize stylesheet
	wp_enqueue_style( 'symbol_normalize', get_template_directory_uri() . '/css/normalize.css', array(), '1' );
	
	// load theme css
	wp_enqueue_style( 'symbol_maincss', get_template_directory_uri() . '/css/symbol.css', array(), '1' );

	// load main stylesheet
	wp_enqueue_style( 'symbol-style', get_stylesheet_uri() ); 
	
		
	// load theme css
	wp_enqueue_style( 'symbol_responsive_css', get_template_directory_uri() . '/css/responsive.css', array(), '1' );

	
	// Adds the comment-reply JavaScript to the single post pages
	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
	
	
	
	// load jquery
	wp_enqueue_script('jquery');
	
	// load modernizer script
	wp_enqueue_script( 'symbol_modernizer', get_template_directory_uri() . '/js/modernizr-2.8.3.min.js', false );
	
	// load plugin script
	wp_enqueue_script( 'symbol_plugin', get_template_directory_uri() . '/js/plugins.js' );
	
	// load bootstrap script
	wp_enqueue_script( 'symbol_bootstrap_js', get_template_directory_uri() . '/js/bootstrap.min.js' );
	
	// load carousel script
	wp_enqueue_script( 'symbol_owl_js', get_template_directory_uri() . '/js/owl.carousel.min.js');
	
	// load main script
	wp_enqueue_script( 'symbol_main_js', get_template_directory_uri() . '/js/main.js' ); 

}
add_action( 'wp_enqueue_scripts', 'symbol_scripts' );


/*********************************************/
/*					LOAD GOOGLE FONTS 		*/
/*********************************************/

function symbol_load_fonts() {
	
            wp_register_style('symbol_roboto_fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300');
            wp_enqueue_style( 'symbol_roboto_fonts');
            wp_register_style('symbol_lato_fonts', '//fonts.googleapis.com/css?family=Lato:400,300,700,900');
            wp_enqueue_style( 'symbol_lato_fonts');
            wp_register_style('symbol_loobstar_fonts', '//fonts.googleapis.com/css?family=Lobster');
            wp_enqueue_style( 'symbol_loobstar_fonts');
            wp_register_style('symbol_tangerine_fonts', '//fonts.googleapis.com/css?family=Tangerine:400,700');
            wp_enqueue_style( 'symbol_tangerine_fonts');
            wp_register_style('symbol_open_sans', '//fonts.googleapis.com/css?family=Open+Sans');
            wp_enqueue_style( 'symbol_open_sans');
}
add_action('wp_print_styles', 'symbol_load_fonts');


/**
 * Print custom style of header image.
 *
 * @package symbol
 */
 
function symbol_header_image() {
	if ( get_header_image() ) : ?>
		<style>
			.header {
				background: url('<?php  esc_url( header_image() ); ?>') no-repeat scroll center top / 100% 107px !important;
			}
		</style>
	<?php
	endif;
}
add_action( 'wp_head', 'symbol_header_image' );


/**
 * Replaces the excerpt "more" text by a link
 */
 
function symbol_excerpt_more($more) {
       global $post;
	return '<a class="moretag" href="'. get_permalink($post->ID) . '">Read More ...</a>';
}
add_filter('excerpt_more', 'symbol_excerpt_more');


//--------- All CPT ---------------- //

require_once get_template_directory() . '/inc/plugins/main.php';


?>