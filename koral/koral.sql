-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2016 at 07:28 po podne
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koral`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-12-09 15:59:41', '2016-12-09 15:59:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 140, 'WooCommerce', '', '', '', '2016-12-09 18:26:40', '2016-12-09 18:26:40', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_circles`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_circles` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `center_address` varchar(256) NOT NULL,
  `center_lat` varchar(256) NOT NULL,
  `center_lng` varchar(256) NOT NULL,
  `show_marker` tinyint(1) NOT NULL,
  `radius` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `fill_color` varchar(256) NOT NULL,
  `fill_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `fill_color_hover` varchar(256) NOT NULL,
  `fill_opacity_hover` varchar(256) NOT NULL,
  `enable_info_window` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_gmwd_circles`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_maps`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_maps` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `width` varchar(256) NOT NULL,
  `height` varchar(256) NOT NULL,
  `center_address` varchar(256) NOT NULL,
  `center_lat` varchar(256) NOT NULL,
  `center_lng` varchar(256) NOT NULL,
  `width_percent` varchar(16) NOT NULL,
  `map_alignment` varchar(16) NOT NULL,
  `border_radius` varchar(16) NOT NULL,
  `zoom_level` int(16) NOT NULL,
  `min_zoom` int(16) NOT NULL,
  `max_zoom` int(16) NOT NULL,
  `enable_zoom_control` tinyint(1) NOT NULL,
  `zoom_control_position` int(16) NOT NULL,
  `enable_map_type_control` tinyint(1) NOT NULL,
  `map_type_control_position` int(16) NOT NULL,
  `map_type_control_style` int(16) NOT NULL,
  `enable_scale_control` tinyint(1) NOT NULL,
  `enable_street_view_control` tinyint(1) NOT NULL,
  `street_view_control_position` int(16) NOT NULL,
  `enable_fullscreen_control` tinyint(1) NOT NULL,
  `fullscreen_control_position` int(16) NOT NULL,
  `enable_rotate_control` tinyint(1) NOT NULL,
  `whell_scrolling` tinyint(1) NOT NULL,
  `map_draggable` tinyint(1) NOT NULL,
  `map_db_click_zoom` tinyint(1) NOT NULL,
  `enable_directions` tinyint(1) NOT NULL,
  `directions_window_open` tinyint(1) NOT NULL,
  `info_window_open_on` varchar(16) NOT NULL,
  `direction_position` int(16) NOT NULL,
  `directions_window_width` varchar(16) NOT NULL,
  `directions_window_width_unit` varchar(16) NOT NULL,
  `enable_store_locator` tinyint(1) NOT NULL,
  `store_locator_header_title` varchar(256) NOT NULL,
  `store_locator_window_width` varchar(16) NOT NULL,
  `store_locator_window_width_unit` varchar(16) NOT NULL,
  `store_locator_position` varchar(16) NOT NULL,
  `restrict_to_country` varchar(256) NOT NULL,
  `distance_in` varchar(256) NOT NULL,
  `show_bouncing_icon` tinyint(1) NOT NULL,
  `enable_bicycle_layer` tinyint(1) NOT NULL,
  `enable_traffic_layer` tinyint(1) NOT NULL,
  `enable_transit_layer` tinyint(1) NOT NULL,
  `georss_url` varchar(256) NOT NULL,
  `kml_url` varchar(256) NOT NULL,
  `fusion_table_id` varchar(256) NOT NULL,
  `geolocate_user` tinyint(1) NOT NULL,
  `marker_listing_type` int(16) NOT NULL,
  `marker_list_position` int(16) NOT NULL,
  `enable_category_filter` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `marker_list_inside_map` tinyint(1) NOT NULL,
  `marker_list_inside_map_position` int(16) NOT NULL,
  `advanced_info_window_position` int(16) NOT NULL,
  `circle_line_color` varchar(256) NOT NULL,
  `circle_line_opacity` varchar(256) NOT NULL,
  `circle_fill_color` varchar(256) NOT NULL,
  `circle_fill_opacity` varchar(256) NOT NULL,
  `circle_line_width` int(16) NOT NULL,
  `shortcode_id` int(16) NOT NULL,
  `theme_id` int(16) NOT NULL,
  `enable_searchbox` tinyint(1) NOT NULL,
  `searchbox_position` int(16) NOT NULL,
  `info_window_info` varchar(256) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_gmwd_maps`
--

INSERT INTO `wp_gmwd_maps` (`id`, `title`, `width`, `height`, `center_address`, `center_lat`, `center_lng`, `width_percent`, `map_alignment`, `border_radius`, `zoom_level`, `min_zoom`, `max_zoom`, `enable_zoom_control`, `zoom_control_position`, `enable_map_type_control`, `map_type_control_position`, `map_type_control_style`, `enable_scale_control`, `enable_street_view_control`, `street_view_control_position`, `enable_fullscreen_control`, `fullscreen_control_position`, `enable_rotate_control`, `whell_scrolling`, `map_draggable`, `map_db_click_zoom`, `enable_directions`, `directions_window_open`, `info_window_open_on`, `direction_position`, `directions_window_width`, `directions_window_width_unit`, `enable_store_locator`, `store_locator_header_title`, `store_locator_window_width`, `store_locator_window_width_unit`, `store_locator_position`, `restrict_to_country`, `distance_in`, `show_bouncing_icon`, `enable_bicycle_layer`, `enable_traffic_layer`, `enable_transit_layer`, `georss_url`, `kml_url`, `fusion_table_id`, `geolocate_user`, `marker_listing_type`, `marker_list_position`, `enable_category_filter`, `type`, `marker_list_inside_map`, `marker_list_inside_map_position`, `advanced_info_window_position`, `circle_line_color`, `circle_line_opacity`, `circle_fill_color`, `circle_fill_opacity`, `circle_line_width`, `shortcode_id`, `theme_id`, `enable_searchbox`, `searchbox_position`, `info_window_info`, `published`) VALUES
(1, 'My First Map', '100', '', 'R. do Celeiros 2, 7780, Portugal', '42.45362248301644', '-21.056485250000033', '%', 'left', '', 3, 2, 22, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 'click', 0, '100', '%', 1, '', '100', '%', '', '', 'km', 0, 0, 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '000', '0.6', '7FDF16', '0.3', 2, 1, 1, 0, 0, 'title,address,desc,pic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_mapstyles`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_mapstyles` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `styles` longtext NOT NULL,
  `image` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_gmwd_mapstyles`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_markercategories`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_markercategories` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `category_picture` varchar(256) NOT NULL,
  `parent` int(16) NOT NULL,
  `level` int(16) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_gmwd_markercategories`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_markers`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_markers` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `map_id` int(16) NOT NULL,
  `lat` varchar(256) NOT NULL,
  `lng` varchar(256) NOT NULL,
  `category` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `animation` varchar(16) NOT NULL,
  `enable_info_window` tinyint(1) NOT NULL,
  `info_window_open` tinyint(1) NOT NULL,
  `marker_size` int(16) NOT NULL,
  `custom_marker_url` varchar(256) NOT NULL,
  `choose_marker_icon` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `link_url` varchar(256) NOT NULL,
  `pic_url` varchar(256) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_gmwd_markers`
--

INSERT INTO `wp_gmwd_markers` (`id`, `map_id`, `lat`, `lng`, `category`, `title`, `address`, `animation`, `enable_info_window`, `info_window_open`, `marker_size`, `custom_marker_url`, `choose_marker_icon`, `description`, `link_url`, `pic_url`, `published`) VALUES
(1, 1, '41.87194', '12.567379999999957', 0, 'Italia', 'Italia', 'DROP', 1, 0, 32, '', 1, '', '', '', 1),
(2, 1, '40.6356899', '-73.60066499999999', 0, 'CIDNEY PHILLIPS, Washington Street, Baldwin, NY, United States', 'CIDNEY PHILLIPS, Washington Street, Baldwin, NY, United States', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(3, 1, '40.4167754', '-3.7037901999999576', 0, 'Madrid, España', 'Madrid, España', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(4, 1, '48.85661400000001', '2.3522219000000177', 0, 'Paris, France', 'Paris, France', 'DROP', 1, 0, 32, '', 1, '', '', '', 1),
(5, 1, '51.5073509', '-0.12775829999998223', 0, 'London, UK', 'London, UK', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(6, 1, '39.9525839', '-75.16522150000003', 0, 'Philadelphia, PA, United States', 'Philadelphia, PA, United States', 'NONE', 1, 0, 32, '', 1, '', '', '', 1),
(7, 1, '40.7127837', '-74.00594130000002', 0, 'New York, NY, United States', 'New York, NY, United States', 'BOUNCE', 1, 0, 32, '', 1, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_options`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_options` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `value` varchar(256) NOT NULL,
  `default_value` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_gmwd_options`
--

INSERT INTO `wp_gmwd_options` (`id`, `name`, `value`, `default_value`) VALUES
(1, 'map_api_key', '', ''),
(2, 'map_language', 'sr', ''),
(3, 'choose_marker_icon', '', '1'),
(4, 'marker_default_icon', '', ''),
(5, 'center_address', 'Niksicka 5, Beograd, Serbia', 'New York, NY, United States'),
(6, 'center_lat', '44.7726929', '40.7127837'),
(7, 'center_lng', '20.47900070000003', '-74.00594130000002'),
(8, 'zoom_level', '0', '7'),
(9, 'whell_scrolling', '1', '0'),
(10, 'map_draggable', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_polygons`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_polygons` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `fill_color` varchar(256) NOT NULL,
  `fill_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `fill_color_hover` varchar(256) NOT NULL,
  `fill_opacity_hover` varchar(256) NOT NULL,
  `data` text NOT NULL,
  `show_markers` tinyint(1) NOT NULL,
  `enable_info_windows` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_gmwd_polygons`
--

INSERT INTO `wp_gmwd_polygons` (`id`, `map_id`, `title`, `link`, `line_width`, `line_color`, `line_opacity`, `fill_color`, `fill_opacity`, `line_color_hover`, `line_opacity_hover`, `fill_color_hover`, `fill_opacity_hover`, `data`, `show_markers`, `enable_info_windows`, `published`) VALUES
(1, 1, 'Polygon 1', '', '2', '0B0833', '0.8', '7AF6FF', '0.3', '000000', '0.9', 'FF0000', '0.4', '(48.28502057399577, -117.59765625),(37.51190453731693, -116.01562000000001),(37.37233994582321, -106.87499999999994),(50.3472131272189, -106.34764874999001),', 1, 0, 1),
(2, 1, 'Polygon 2', '', '4', '072908', '0.8', '87FF1F', '0.3', '000000', '0.9', 'FF0000', '0.4', '(48.750756296177386, 8.96484375),(61.649466740560335, 26.19140625),(47.22143353240337, 42.714843700000074),', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_polylines`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_polylines` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `data` text NOT NULL,
  `show_markers` tinyint(1) NOT NULL,
  `enable_info_windows` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_gmwd_polylines`
--

INSERT INTO `wp_gmwd_polylines` (`id`, `map_id`, `title`, `line_width`, `line_color`, `line_opacity`, `line_color_hover`, `line_opacity_hover`, `data`, `show_markers`, `enable_info_windows`, `published`) VALUES
(1, 1, 'Polyline', '3', '0C5413', '0.8', '000000', '0.9', '(-28.84226783718747, 17.40234375),(-18.393623895475326, 27.7734375),(-8.83893716666915, 34.27734375),(2.3751129338801293, 35.859375),(11.784014005457768, 33.3984375),(19.06471383653978, 25.48828125),', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_rectangles`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_rectangles` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `map_id` int(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) NOT NULL,
  `line_width` varchar(256) NOT NULL,
  `line_color` varchar(256) NOT NULL,
  `line_opacity` varchar(256) NOT NULL,
  `fill_color` varchar(256) NOT NULL,
  `fill_opacity` varchar(256) NOT NULL,
  `line_color_hover` varchar(256) NOT NULL,
  `line_opacity_hover` varchar(256) NOT NULL,
  `fill_color_hover` varchar(256) NOT NULL,
  `fill_opacity_hover` varchar(256) NOT NULL,
  `south_west` varchar(256) NOT NULL,
  `north_east` varchar(256) NOT NULL,
  `show_markers` tinyint(1) NOT NULL,
  `enable_info_windows` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_gmwd_rectangles`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_shortcodes`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_shortcodes` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `tag_text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_gmwd_shortcodes`
--

INSERT INTO `wp_gmwd_shortcodes` (`id`, `tag_text`) VALUES
(1, 'id=1 map=1'),
(2, 'id=2 map=1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmwd_themes`
--

CREATE TABLE IF NOT EXISTS `wp_gmwd_themes` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `map_style_id` int(16) NOT NULL,
  `map_style_code` longtext NOT NULL,
  `map_border_radius` varchar(16) NOT NULL,
  `directions_title_color` varchar(16) NOT NULL,
  `directions_window_background_color` varchar(16) NOT NULL,
  `directions_window_border_radius` varchar(16) NOT NULL,
  `directions_input_border_radius` varchar(16) NOT NULL,
  `directions_input_border_color` varchar(16) NOT NULL,
  `directions_label_color` varchar(16) NOT NULL,
  `directions_label_background_color` varchar(16) NOT NULL,
  `directions_label_border_radius` varchar(16) NOT NULL,
  `directions_button_width` varchar(16) NOT NULL,
  `directions_button_border_radius` varchar(16) NOT NULL,
  `directions_button_background_color` varchar(16) NOT NULL,
  `directions_button_color` varchar(16) NOT NULL,
  `directions_button_alignment` tinyint(1) NOT NULL,
  `directions_columns` tinyint(1) NOT NULL,
  `store_locator_title_color` varchar(16) NOT NULL,
  `store_locator_window_bgcolor` varchar(16) NOT NULL,
  `store_locator_window_border_radius` varchar(16) NOT NULL,
  `store_locator_input_border_radius` varchar(16) NOT NULL,
  `store_locator_input_border_color` varchar(16) NOT NULL,
  `store_locator_label_color` varchar(16) NOT NULL,
  `store_locator_label_background_color` varchar(16) NOT NULL,
  `store_locator_label_border_radius` varchar(16) NOT NULL,
  `store_locator_buttons_alignment` tinyint(1) NOT NULL,
  `store_locator_button_width` varchar(16) NOT NULL,
  `store_locator_button_border_radius` varchar(16) NOT NULL,
  `store_locator_search_button_background_color` varchar(16) NOT NULL,
  `store_locator_search_button_color` varchar(16) NOT NULL,
  `store_locator_reset_button_background_color` varchar(16) NOT NULL,
  `store_locator_reset_button_color` varchar(16) NOT NULL,
  `store_locator_columns` tinyint(1) NOT NULL,
  `marker_listsing_basic_title_color` varchar(16) NOT NULL,
  `marker_listsing_basic_bgcolor` varchar(16) NOT NULL,
  `marker_listsing_basic_marker_title_color` varchar(16) NOT NULL,
  `marker_listsing_basic_marker_desc_color` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_border_radius` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_width` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_height` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_background_color` varchar(16) NOT NULL,
  `marker_listsing_basic_dir_color` varchar(16) NOT NULL,
  `marker_advanced_title_color` varchar(16) NOT NULL,
  `marker_advanced_table_background` varchar(16) NOT NULL,
  `marker_advanced_table_border_radius` varchar(16) NOT NULL,
  `marker_advanced_table_color` varchar(16) NOT NULL,
  `marker_advanced_table_header_background` varchar(16) NOT NULL,
  `marker_advanced_table_header_color` varchar(16) NOT NULL,
  `advanced_info_window_background` varchar(16) NOT NULL,
  `advanced_info_window_title_color` varchar(16) NOT NULL,
  `advanced_info_window_title_background_color` varchar(16) NOT NULL,
  `advanced_info_window_desc_color` varchar(16) NOT NULL,
  `advanced_info_window_dir_color` varchar(16) NOT NULL,
  `advanced_info_window_dir_background_color` varchar(16) NOT NULL,
  `advanced_info_window_dir_border_radius` varchar(16) NOT NULL,
  `carousel_item_height` int(16) NOT NULL,
  `carousel_item_border_radius` int(16) NOT NULL,
  `carousel_items_count` int(16) NOT NULL,
  `carousel_color` varchar(16) NOT NULL,
  `carousel_background_color` varchar(16) NOT NULL,
  `carousel_hover_color` varchar(16) NOT NULL,
  `carousel_hover_background_color` varchar(16) NOT NULL,
  `marker_listsing_inside_map_color` varchar(16) NOT NULL,
  `marker_listsing_inside_map_bgcolor` varchar(16) NOT NULL,
  `marker_listsing_inside_map_width` varchar(16) NOT NULL,
  `marker_listsing_inside_map_height` varchar(16) NOT NULL,
  `marker_listsing_inside_map_border_radius` varchar(16) NOT NULL,
  `auto_generate_style_code` tinyint(1) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_gmwd_themes`
--

INSERT INTO `wp_gmwd_themes` (`id`, `title`, `map_style_id`, `map_style_code`, `map_border_radius`, `directions_title_color`, `directions_window_background_color`, `directions_window_border_radius`, `directions_input_border_radius`, `directions_input_border_color`, `directions_label_color`, `directions_label_background_color`, `directions_label_border_radius`, `directions_button_width`, `directions_button_border_radius`, `directions_button_background_color`, `directions_button_color`, `directions_button_alignment`, `directions_columns`, `store_locator_title_color`, `store_locator_window_bgcolor`, `store_locator_window_border_radius`, `store_locator_input_border_radius`, `store_locator_input_border_color`, `store_locator_label_color`, `store_locator_label_background_color`, `store_locator_label_border_radius`, `store_locator_buttons_alignment`, `store_locator_button_width`, `store_locator_button_border_radius`, `store_locator_search_button_background_color`, `store_locator_search_button_color`, `store_locator_reset_button_background_color`, `store_locator_reset_button_color`, `store_locator_columns`, `marker_listsing_basic_title_color`, `marker_listsing_basic_bgcolor`, `marker_listsing_basic_marker_title_color`, `marker_listsing_basic_marker_desc_color`, `marker_listsing_basic_dir_border_radius`, `marker_listsing_basic_dir_width`, `marker_listsing_basic_dir_height`, `marker_listsing_basic_dir_background_color`, `marker_listsing_basic_dir_color`, `marker_advanced_title_color`, `marker_advanced_table_background`, `marker_advanced_table_border_radius`, `marker_advanced_table_color`, `marker_advanced_table_header_background`, `marker_advanced_table_header_color`, `advanced_info_window_background`, `advanced_info_window_title_color`, `advanced_info_window_title_background_color`, `advanced_info_window_desc_color`, `advanced_info_window_dir_color`, `advanced_info_window_dir_background_color`, `advanced_info_window_dir_border_radius`, `carousel_item_height`, `carousel_item_border_radius`, `carousel_items_count`, `carousel_color`, `carousel_background_color`, `carousel_hover_color`, `carousel_hover_background_color`, `marker_listsing_inside_map_color`, `marker_listsing_inside_map_bgcolor`, `marker_listsing_inside_map_width`, `marker_listsing_inside_map_height`, `marker_listsing_inside_map_border_radius`, `auto_generate_style_code`, `default`, `published`) VALUES
(1, 'Default', 1, '', '', '000000', 'F2F2F2', '', '', '000000', '000000', 'F2F2F2', '', '100', '', '000000', 'FFFFFF', 0, 0, '000000', 'F2F2F2', '', '', '000000', '000000', 'F2F2F2', '', 0, '', '', '000000', 'FFFFFF', '000000', 'FFFFFF', 0, '000000', 'F2F2F2', '000000', '000000', '', '130', '30', '000000', 'FFFFFF', '000000', 'F2F2F2', '', '000000', '000000', 'FFFFFF', 'FFFFFF', '000000', 'F2F2F2', '000000', 'FFFFFF', '000000', '', 45, 0, 3, '000000', 'F2F2F2', 'F2F2F2', '000000', '000000', 'F2F2F2', '250', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_share_params`
--

CREATE TABLE IF NOT EXISTS `wp_huge_it_share_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `social` varchar(200) NOT NULL,
  `ordering` text NOT NULL,
  `value` varchar(200) NOT NULL,
  `shares_count` varchar(50) NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `wp_huge_it_share_params`
--

INSERT INTO `wp_huge_it_share_params` (`id`, `name`, `title`, `social`, `ordering`, `value`, `shares_count`) VALUES
(8, 'share_facebook_button', 'Share Facebook Button', 'social', '0', 'on', 'off'),
(9, 'share_twitter_button', 'Share Twitter Button', 'social', '1', 'on', 'off'),
(10, 'share_pinterest_button', 'Share Pinterest Button', 'social', '3', 'on', 'off'),
(11, 'share_google_plus_button', 'Share Google Plus Button', 'social', '', 'on', 'off'),
(12, 'share_linkedin_button', 'Share Linkedin Button', 'social', '2', 'on', 'off'),
(13, 'share_tumblr_button', 'Share Tumblr button', 'social', '4', 'on', 'off'),
(14, 'share_digg_button', 'Share Digg button', 'social', '5', '', 'off'),
(15, 'share_stumbleupon_button', 'Share StumbleUpon Button', 'social', '6', '', 'off'),
(16, 'share_myspace_button', 'Share MySpace Button', 'social', '16', '', 'off'),
(17, 'share_vkontakte_button', 'Share VKontakte button', 'social', '7', '', 'off'),
(18, 'share_reddit_button', 'Share Reddit button', 'social', '8', 'off', 'off'),
(19, 'share_bebo_button', 'Share Bebo button', 'social', '9', 'off', 'off'),
(20, 'share_delicious_button', 'Share Delicious button', 'social', '10', 'off', 'off'),
(21, 'share_odnoklassniki_button', 'Share Odnoklassniki button', 'social', '11', 'off', 'off'),
(22, 'share_qzone_button', 'Share QZone Button', 'social', '12', 'off', 'off'),
(23, 'share_sina_weibo_button', 'Share Sina Weibo Button', 'social', '13', 'off', 'off'),
(24, 'share_renren_button', 'Share Renren Button', 'social', '14', 'off', 'off'),
(25, 'share_n4g_button', 'Share N4G Button', 'social', '15', 'off', 'off'),
(26, 'huge_it_share_button_position_post', 'Share Button Position', '', '', 'center-bottom', 'off'),
(27, 'huge_it_share_size', 'Share Button Size', '', '', '40', 'off'),
(28, 'share_button_type', 'Share Button type', '', '', 'toolbar', 'off'),
(29, 'share_button_icons_style', 'Share Buttons icons style', '', '', '4', 'off'),
(30, 'share_button_margin_between_buttons', 'Margin Between Buttons', '', '', '3', 'off'),
(31, 'share_button_margin_from_content', 'Margin From Content', '', '', '0', 'off'),
(32, 'share_button_buttons_background_padding', 'Buttons Background padding', '', '', '0', 'off'),
(33, 'share_button_buttons_background_color', 'Buttons Background color', '', '', '14CC9B', 'off'),
(34, 'share_button_buttons_border_size', 'Buttons Border Size', '', '', '0', 'off'),
(35, 'share_button_buttons_border_style', 'Buttons border style', '', '', 'ridge', 'off'),
(36, 'share_button_buttons_border_radius', 'Buttons border radius', '', '', '11', 'off'),
(37, 'share_button_buttons_border_color', 'Buttons border color', '', '', 'E6354C', 'off'),
(38, 'share_button_title_text', 'Title Text', '', '', 'Share This:', 'off'),
(39, 'share_button_title_position', 'Title position', '', '', 'top', 'off'),
(40, 'share_button_title_font_size', 'Title font size', '', '', '25', 'off'),
(41, 'share_button_title_color', 'Title Color', '', '', '666666', 'off'),
(42, 'share_button_block_background_color', 'Block background color', '', '', '3BD8FF', 'off'),
(43, 'share_button_block_border_size', 'Block border size', '', '', '0', 'off'),
(44, 'share_button_block_border_color', 'Block border color', '', '', '0FB5D6', 'off'),
(45, 'share_button_block_border_radius', 'Block border radius', '', '', '5', 'off'),
(46, 'share_button_buttons_has_background', 'Buttons has Background', '', '', 'off', 'off'),
(47, 'share_button_block_has_background', 'Block has background', '', '', 'off', 'off'),
(48, 'share_button_title_font_style_family', 'Title font style family', '', '', 'Arial,Helvetica Neue,Helvetica,sans-serif', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_share_params_posts`
--

CREATE TABLE IF NOT EXISTS `wp_huge_it_share_params_posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `share_post_id` text NOT NULL,
  `share_medias` text NOT NULL,
  `share_button_type` text NOT NULL,
  `share_position` text NOT NULL,
  `share_size` text NOT NULL,
  `share_button_style` text NOT NULL,
  `share_active` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_huge_it_share_params_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext,
  `sortorder` longtext NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_ngg_album`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `path` mediumtext,
  `title` mediumtext,
  `galdesc` mediumtext,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'galetija', 'Galetija', '\\wp-content\\gallery\\galetija', 'Galetija', NULL, 0, 1, 1, 130);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_slug` varchar(255) NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL,
  `description` mediumtext,
  `alttext` mediumtext,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, '58bef-andrejevic', 0, 1, '58bef-andrejevic.jpg', '', '58bef-andrejevic', '2016-12-09 18:14:14', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiI1OGJlZi1hbmRyZWpldmljLmpwZyIsIndpZHRoIjoxMDI0LCJoZWlnaHQiOjY4MCwiZ2VuZXJhdGVkIjoiMC43MjUwMjUwMCAxNDgxMzA3MjU0In0sIndpZHRoIjoxMDI0LCJoZWlnaHQiOjY4MCwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo2ODB9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzXzU4YmVmLWFuZHJlamV2aWMuanBnIiwiZ2VuZXJhdGVkIjoiMC45OTIyMzQwMCAxNDgxMzA3MjU0In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 129, 1481307254),
(2, 'images-1', 0, 1, 'images-1.jpg', '', 'images (1)', '2016-12-09 18:14:16', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJpbWFnZXMtMS5qcGciLCJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4MywiZ2VuZXJhdGVkIjoiMC4wNTQ3MzIwMCAxNDgxMzA3MjU2In0sIndpZHRoIjoyNzUsImhlaWdodCI6MTgzLCJmdWxsIjp7IndpZHRoIjoyNzUsImhlaWdodCI6MTgzfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19pbWFnZXMtMS5qcGciLCJnZW5lcmF0ZWQiOiIwLjExNTkzMTAwIDE0ODEzMDcyNTYifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 132, 1481307256),
(3, 'images-2', 0, 1, 'images.jpg', '', 'images', '2016-12-09 18:14:17', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJpbWFnZXMuanBnIiwid2lkdGgiOjI3NSwiaGVpZ2h0IjoxODMsImdlbmVyYXRlZCI6IjAuMTcwMjEwMDAgMTQ4MTMwNzI1NyJ9LCJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4MywiZnVsbCI6eyJ3aWR0aCI6Mjc1LCJoZWlnaHQiOjE4M30sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfaW1hZ2VzLmpwZyIsImdlbmVyYXRlZCI6IjAuMjM1NzcyMDAgMTQ4MTMwNzI1NyJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 134, 1481307257),
(4, 'zaksvikendvencanjaprodavnica1', 0, 1, 'ZaksVikendvencanjaProdavnica1.jpg', '', 'ZaksVikendvencanjaProdavnica1', '2013-03-07 15:28:29', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJaYWtzVmlrZW5kdmVuY2FuamFQcm9kYXZuaWNhMS5qcGciLCJ3aWR0aCI6NjUwLCJoZWlnaHQiOjQyOSwiZ2VuZXJhdGVkIjoiMC4yNzIwNzUwMCAxNDgxMzA3MjU4In0sIndpZHRoIjo2NTAsImhlaWdodCI6NDI5LCJmdWxsIjp7IndpZHRoIjo2NTAsImhlaWdodCI6NDI5fSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19aYWtzVmlrZW5kdmVuY2FuamFQcm9kYXZuaWNhMS5qcGciLCJnZW5lcmF0ZWQiOiIwLjQwOTI0NDAwIDE0ODEzMDcyNTgifSwiYXBlcnR1cmUiOiJGIDQiLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOiJDYW5vbiBFT1MgNUQiLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOjEzNjI2NzAxMDksImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6IjI1IG1tIiwiaXNvIjo4MDAsInNodXR0ZXJfc3BlZWQiOiIxXC84MCBzZWMiLCJmbGFzaCI6IkZpcmVkIiwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 136, 1481307258),
(5, 'zlatara-andrejevic-9', 0, 1, 'zlatara-andrejevic-9.jpg', '', 'zlatara-andrejevic-9', '2016-12-09 18:14:19', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJ6bGF0YXJhLWFuZHJlamV2aWMtOS5qcGciLCJ3aWR0aCI6NjAwLCJoZWlnaHQiOjQ0MywiZ2VuZXJhdGVkIjoiMC40NTU5NTEwMCAxNDgxMzA3MjU5In0sIndpZHRoIjo2MDAsImhlaWdodCI6NDQzLCJmdWxsIjp7IndpZHRoIjo2MDAsImhlaWdodCI6NDQzfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic196bGF0YXJhLWFuZHJlamV2aWMtOS5qcGciLCJnZW5lcmF0ZWQiOiIwLjU3ODY0MzAwIDE0ODEzMDcyNTkifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 138, 1481307259);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=831 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/koral', 'yes'),
(2, 'home', 'http://localhost/koral', 'yes'),
(3, 'blogname', 'Koral', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'koral@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:195:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:15:{i:0;s:59:"contact-form-with-a-meeting-scheduler-by-vcita/Livesite.php";i:1;s:33:"custom-css-editor/freshplugin.php";i:2;s:41:"custom-menu-wizard/custom-menu-wizard.php";i:3;s:29:"nextgen-gallery/nggallery.php";i:4;s:17:"pop-up/pop-up.php";i:5;s:37:"user-role-editor/user-role-editor.php";i:6;s:33:"wd-google-maps/wd-google-maps.php";i:7;s:57:"woocommerce-all-currencies/woocommerce-all-currencies.php";i:8;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:9;s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:24:"wordpress-seo/wp-seo.php";i:12;s:34:"wp-share-buttons/share-buttons.php";i:13;s:27:"wp-super-cache/wp-cache.php";i:14;s:30:"youtube-embed-plus/youtube.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'symbol', 'yes'),
(41, 'stylesheet', 'symbol', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:27:"shareaholic/shareaholic.php";a:2:{i:0;s:11:"Shareaholic";i:1;s:9:"uninstall";}s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '10', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '6', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:149:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"wpseo_bulk_edit";b:1;s:14:"ure_edit_roles";b:1;s:16:"ure_create_roles";b:1;s:16:"ure_delete_roles";b:1;s:23:"ure_create_capabilities";b:1;s:23:"ure_delete_capabilities";b:1;s:18:"ure_manage_options";b:1;s:15:"ure_reset_roles";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:40:{s:12:"create_pages";b:1;s:12:"create_posts";b:1;s:12:"create_users";b:1;s:19:"delete_others_pages";b:1;s:19:"delete_others_posts";b:1;s:12:"delete_pages";b:1;s:12:"delete_posts";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:14:"delete_product";b:1;s:15:"delete_products";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_others_pages";b:1;s:17:"edit_others_posts";b:1;s:10:"edit_pages";b:1;s:10:"edit_posts";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:20:"edit_published_pages";b:1;s:20:"edit_published_posts";b:1;s:7:"level_0";b:1;s:7:"level_1";b:1;s:7:"level_2";b:1;s:7:"level_3";b:1;s:7:"level_4";b:1;s:7:"level_5";b:1;s:7:"level_6";b:1;s:7:"level_7";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:13:"publish_pages";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:119:{s:20:"assign_product_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:12:"create_pages";b:1;s:12:"create_posts";b:1;s:12:"create_users";b:1;s:19:"delete_others_pages";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_others_products";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"delete_others_shop_orders";b:1;s:27:"delete_others_shop_webhooks";b:1;s:12:"delete_pages";b:1;s:12:"delete_posts";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:23:"delete_private_products";b:1;s:27:"delete_private_shop_coupons";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_private_shop_webhooks";b:1;s:14:"delete_product";b:1;s:20:"delete_product_terms";b:1;s:15:"delete_products";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:25:"delete_published_products";b:1;s:29:"delete_published_shop_coupons";b:1;s:28:"delete_published_shop_orders";b:1;s:30:"delete_published_shop_webhooks";b:1;s:18:"delete_shop_coupon";b:1;s:24:"delete_shop_coupon_terms";b:1;s:19:"delete_shop_coupons";b:1;s:17:"delete_shop_order";b:1;s:23:"delete_shop_order_terms";b:1;s:18:"delete_shop_orders";b:1;s:19:"delete_shop_webhook";b:1;s:25:"delete_shop_webhook_terms";b:1;s:20:"delete_shop_webhooks";b:1;s:13:"delete_themes";b:1;s:12:"delete_users";b:1;s:14:"edit_dashboard";b:1;s:17:"edit_others_pages";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_others_products";b:1;s:24:"edit_others_shop_coupons";b:1;s:23:"edit_others_shop_orders";b:1;s:25:"edit_others_shop_webhooks";b:1;s:10:"edit_pages";b:1;s:10:"edit_posts";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:21:"edit_private_products";b:1;s:25:"edit_private_shop_coupons";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_private_shop_webhooks";b:1;s:12:"edit_product";b:1;s:18:"edit_product_terms";b:1;s:13:"edit_products";b:1;s:20:"edit_published_pages";b:1;s:20:"edit_published_posts";b:1;s:23:"edit_published_products";b:1;s:27:"edit_published_shop_coupons";b:1;s:26:"edit_published_shop_orders";b:1;s:28:"edit_published_shop_webhooks";b:1;s:16:"edit_shop_coupon";b:1;s:22:"edit_shop_coupon_terms";b:1;s:17:"edit_shop_coupons";b:1;s:15:"edit_shop_order";b:1;s:21:"edit_shop_order_terms";b:1;s:16:"edit_shop_orders";b:1;s:17:"edit_shop_webhook";b:1;s:23:"edit_shop_webhook_terms";b:1;s:18:"edit_shop_webhooks";b:1;s:11:"edit_themes";b:1;s:10:"edit_users";b:1;s:6:"export";b:1;s:6:"import";b:1;s:15:"install_plugins";b:1;s:14:"install_themes";b:1;s:7:"level_0";b:1;s:7:"level_1";b:1;s:7:"level_2";b:1;s:7:"level_3";b:1;s:7:"level_4";b:1;s:7:"level_5";b:1;s:7:"level_6";b:1;s:7:"level_7";b:1;s:7:"level_8";b:1;s:7:"level_9";b:1;s:10:"list_users";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:20:"manage_product_terms";b:1;s:24:"manage_shop_coupon_terms";b:1;s:23:"manage_shop_order_terms";b:1;s:25:"manage_shop_webhook_terms";b:1;s:18:"manage_woocommerce";b:1;s:17:"moderate_comments";b:1;s:13:"publish_pages";b:1;s:13:"publish_posts";b:1;s:16:"publish_products";b:1;s:20:"publish_shop_coupons";b:1;s:19:"publish_shop_orders";b:1;s:21:"publish_shop_webhooks";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:21:"read_private_products";b:1;s:25:"read_private_shop_coupons";b:1;s:24:"read_private_shop_orders";b:1;s:26:"read_private_shop_webhooks";b:1;s:12:"read_product";b:1;s:16:"read_shop_coupon";b:1;s:15:"read_shop_order";b:1;s:17:"read_shop_webhook";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:24:"view_woocommerce_reports";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:12:"left_sidebar";a:3:{i:0;s:8:"search-2";i:1;s:10:"archives-2";i:2;s:20:"custom-menu-wizard-2";}s:14:"footer_sidebar";a:3:{i:0;s:20:"custom-menu-wizard-3";i:1;s:22:"woocommerce_products-2";i:2;s:22:"huge_it_share_widget-3";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:10:{i:1481308927;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1481310913;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1481328000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1481342381;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1481343264;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1481385590;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1481386277;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1481386464;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1483401600;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(120, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:15:"koral@gmail.com";s:7:"version";s:5:"4.6.1";s:9:"timestamp";i:1481299194;}', 'no'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.7";s:7:"version";s:3:"4.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.7";s:7:"version";s:3:"4.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1481300046;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(142, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481307625;s:7:"checked";a:4:{s:6:"symbol";s:5:"1.0.3";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:2:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no'),
(560, '_site_transient_timeout_theme_roots', '1481308394', 'no'),
(561, '_site_transient_theme_roots', 'a:4:{s:6:"symbol";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(118, '_site_transient_timeout_browser_3a179042b5d9d18726343f8efdf53113', '1481903992', 'no'),
(119, '_site_transient_browser_3a179042b5d9d18726343f8efdf53113', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(702, 'wpseo_sitemap_revision_cache_validator', '5KElM', 'no'),
(825, 'wpseo_sitemap_shop_order_cache_validator', '5Nyq3', 'no'),
(139, '_site_transient_timeout_wporg_theme_feature_list', '1481310102', 'no'),
(140, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(143, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1481299321;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(144, 'current_theme', 'symbol', 'yes'),
(145, 'theme_mods_symbol', 'a:21:{i:0;b:0;s:16:"header_textcolor";s:0:"";s:11:"upload_logo";s:73:"http://localhost/koral/wp-content/uploads/2016/12/jewellery_shop_logo.png";s:11:"theme_color";s:7:"#333333";s:10:"sidebar_bg";s:7:"#efaeae";s:19:"sidebar_title_color";s:7:"#8c0900";s:27:"shop_description_visibility";b:1;s:22:"shop_description_title";s:6:"O nama";s:23:"shop_description_detail";s:286:"Ona otvara kutijicu od pliša i… obrazi joj rumene od iznenađenja i neprikrivenog zadovoljstva: iz kutije presijavaju dragulji utkani u zlatnu ogrlicu neopisive lepote. Na njenom nežnom vratu nakit simboliše više od pažnje: to je ljubav njenog izabranika i zakletva na vernost…";s:17:"footer_link_color";s:7:"#000000";s:18:"nav_menu_locations";a:2:{s:9:"main-menu";i:2;s:8:"top-menu";i:8;}s:28:"contact_info_area_background";s:62:"http://localhost/koral/wp-content/uploads/2016/12/download.jpg";s:10:"shop_title";s:5:"Koral";s:13:"shop_address1";s:27:"Niksicka 5, Beograd, Srbija";s:13:"shop_address3";s:28:"Ponedeljak - Petak : 9am-9pm";s:18:"sidebar_visibility";b:1;s:16:"background_image";s:67:"http://localhost/koral/wp-content/uploads/2016/12/footer_lodyas.jpg";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:6:"center";s:21:"background_attachment";s:5:"fixed";s:15:"header_bg_color";s:7:"#1e1e1e";}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(148, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(149, 'recently_activated', 'a:1:{s:27:"shareaholic/shareaholic.php";i:1481306134;}', 'yes'),
(150, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1481310817', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(151, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6110";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3747";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3738";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3244";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2869";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2546";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2229";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2155";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2089";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2044";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2025";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1965";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1937";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1756";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1653";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1625";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1469";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1380";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1299";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1296";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1152";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1136";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1065";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1027";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1017";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"969";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"964";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"963";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"932";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"929";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"916";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"861";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"851";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"841";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"821";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"788";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"783";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"783";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"770";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"759";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"749";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"743";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"736";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"731";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"725";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"718";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"718";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"710";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"701";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"656";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"652";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"640";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"635";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"629";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"616";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"615";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"614";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"601";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"585";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"585";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"584";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"580";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"563";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"553";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"549";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"546";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"540";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"538";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"534";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"522";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"509";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"507";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"496";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"484";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"471";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"469";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"467";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"462";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"459";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"448";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"447";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"443";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"438";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"436";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"430";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"427";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"426";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"425";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"422";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"417";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"414";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"413";}}', 'no'),
(449, 'wc_ppec_version', '1.1.2', 'yes'),
(155, 'woocommerce_default_country', 'RS', 'yes'),
(156, 'woocommerce_allowed_countries', 'all', 'yes'),
(157, 'woocommerce_all_except_countries', '', 'yes'),
(158, 'woocommerce_specific_allowed_countries', '', 'yes'),
(159, 'woocommerce_ship_to_countries', '', 'yes'),
(160, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(161, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(162, 'woocommerce_calc_taxes', 'yes', 'yes'),
(163, 'woocommerce_demo_store', 'no', 'yes'),
(164, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(165, 'woocommerce_currency', 'RSD', 'yes'),
(166, 'woocommerce_currency_pos', 'left_space', 'yes'),
(167, 'woocommerce_price_thousand_sep', ',', 'yes'),
(168, 'woocommerce_price_decimal_sep', '.', 'yes'),
(169, 'woocommerce_price_num_decimals', '2', 'yes'),
(170, 'woocommerce_weight_unit', 'kg', 'yes'),
(171, 'woocommerce_dimension_unit', 'cm', 'yes'),
(172, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(173, 'woocommerce_review_rating_required', 'yes', 'no'),
(174, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(175, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(176, 'woocommerce_shop_page_id', '14', 'yes'),
(177, 'woocommerce_shop_page_display', '', 'yes'),
(178, 'woocommerce_category_archive_display', '', 'yes'),
(179, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(180, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(181, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(182, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(183, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(184, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(185, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(186, 'woocommerce_manage_stock', 'yes', 'yes'),
(187, 'woocommerce_hold_stock_minutes', '60', 'no'),
(188, 'woocommerce_notify_low_stock', 'yes', 'no'),
(189, 'woocommerce_notify_no_stock', 'yes', 'no'),
(190, 'woocommerce_stock_email_recipient', 'koral@gmail.com', 'no'),
(191, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(192, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(193, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(194, 'woocommerce_stock_format', '', 'yes'),
(195, 'woocommerce_file_download_method', 'force', 'no'),
(196, 'woocommerce_downloads_require_login', 'no', 'no'),
(197, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(198, 'woocommerce_prices_include_tax', 'no', 'yes'),
(199, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(200, 'woocommerce_shipping_tax_class', '', 'yes'),
(201, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(202, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(203, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(204, 'woocommerce_tax_display_cart', 'excl', 'no'),
(205, 'woocommerce_price_display_suffix', '', 'yes'),
(206, 'woocommerce_tax_total_display', 'itemized', 'no'),
(207, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(208, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(209, 'woocommerce_ship_to_destination', 'billing', 'no'),
(210, 'woocommerce_enable_coupons', 'yes', 'yes'),
(211, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(212, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(213, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(214, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(215, 'woocommerce_cart_page_id', '15', 'yes'),
(216, 'woocommerce_checkout_page_id', '16', 'yes'),
(217, 'woocommerce_terms_page_id', '', 'no'),
(218, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(219, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(220, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(221, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(222, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(223, 'woocommerce_myaccount_page_id', '17', 'yes'),
(224, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(225, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(226, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(227, 'woocommerce_registration_generate_username', 'yes', 'no'),
(228, 'woocommerce_registration_generate_password', 'no', 'no'),
(229, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(230, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(231, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(232, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(233, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(234, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(235, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(236, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(237, 'woocommerce_email_from_name', 'Koral', 'no'),
(238, 'woocommerce_email_from_address', 'koral@gmail.com', 'no'),
(239, 'woocommerce_email_header_image', '', 'no'),
(240, 'woocommerce_email_footer_text', 'Koral - Powered by WooCommerce', 'no'),
(241, 'woocommerce_email_base_color', '#557da1', 'no'),
(242, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(243, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(244, 'woocommerce_email_text_color', '#505050', 'no'),
(245, 'woocommerce_api_enabled', 'yes', 'yes'),
(564, 'ossdl_off_exclude', '.php', 'yes'),
(565, 'ossdl_cname', '', 'yes'),
(431, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(249, 'woocommerce_db_version', '2.6.9', 'yes'),
(250, 'woocommerce_version', '2.6.9', 'yes'),
(251, 'woocommerce_admin_notices', 'a:1:{i:2;s:19:"no_shipping_methods";}', 'yes'),
(252, 'woocommerce_currencies_enabled', 'yes', 'yes'),
(253, 'woocommerce_currencies_currency_GBP', '&pound;', 'yes'),
(254, 'woocommerce_currencies_hide_symbol', 'no', 'yes'),
(255, 'woocommerce_currencies_currency_AFN', 'AFN', 'yes'),
(256, 'woocommerce_currencies_currency_ALL', 'ALL', 'yes'),
(257, 'woocommerce_currencies_currency_DZD', 'DZD', 'yes'),
(258, 'woocommerce_currencies_currency_AOA', 'AOA', 'yes'),
(259, 'woocommerce_currencies_currency_ARS', 'ARS', 'yes'),
(260, 'woocommerce_currencies_currency_AMD', 'AMD', 'yes'),
(261, 'woocommerce_currencies_currency_AWG', 'AWG', 'yes'),
(262, 'woocommerce_currencies_currency_AUD', '&#36;', 'yes'),
(263, 'woocommerce_currencies_currency_AZN', 'AZN', 'yes'),
(264, 'woocommerce_currencies_currency_BSD', 'BSD', 'yes'),
(265, 'woocommerce_currencies_currency_BHD', 'BHD', 'yes'),
(266, 'woocommerce_currencies_currency_BDT', '&#2547;&nbsp;', 'yes'),
(267, 'woocommerce_currencies_currency_BBD', 'BBD', 'yes'),
(268, 'woocommerce_currencies_currency_BYR', 'BYR', 'yes'),
(269, 'woocommerce_currencies_currency_BZD', 'BZD', 'yes'),
(270, 'woocommerce_currencies_currency_BTN', 'BTN', 'yes'),
(271, 'woocommerce_currencies_currency_BOB', 'BOB', 'yes'),
(272, 'woocommerce_currencies_currency_BAM', 'BAM', 'yes'),
(273, 'woocommerce_currencies_currency_BWP', 'BWP', 'yes'),
(274, 'woocommerce_currencies_currency_BRL', '&#82;&#36;', 'yes'),
(275, 'woocommerce_currencies_currency_BND', 'BND', 'yes'),
(276, 'woocommerce_currencies_currency_BGN', '&#1083;&#1074;.', 'yes'),
(277, 'woocommerce_currencies_currency_BIF', 'BIF', 'yes'),
(278, 'woocommerce_currencies_currency_KYD', 'KYD', 'yes'),
(279, 'woocommerce_currencies_currency_KHR', 'KHR', 'yes'),
(280, 'woocommerce_currencies_currency_CAD', '&#36;', 'yes'),
(281, 'woocommerce_currencies_currency_CVE', 'CVE', 'yes'),
(282, 'woocommerce_currencies_currency_XAF', 'XAF', 'yes'),
(283, 'woocommerce_currencies_currency_GQE', 'GQE', 'yes'),
(284, 'woocommerce_currencies_currency_XPF', 'XPF', 'yes'),
(285, 'woocommerce_currencies_currency_CLP', '&#36;', 'yes'),
(286, 'woocommerce_currencies_currency_CNY', '&yen;', 'yes'),
(287, 'woocommerce_currencies_currency_COP', '&#36;', 'yes'),
(288, 'woocommerce_currencies_currency_KMF', 'KMF', 'yes'),
(289, 'woocommerce_currencies_currency_CDF', 'CDF', 'yes'),
(290, 'woocommerce_currencies_currency_CRC', 'CRC', 'yes'),
(291, 'woocommerce_currencies_currency_HRK', 'Kn', 'yes'),
(292, 'woocommerce_currencies_currency_CUC', 'CUC', 'yes'),
(293, 'woocommerce_currencies_currency_CZK', '&#75;&#269;', 'yes'),
(294, 'woocommerce_currencies_currency_DKK', 'kr.', 'yes'),
(295, 'woocommerce_currencies_currency_DJF', 'DJF', 'yes'),
(296, 'woocommerce_currencies_currency_DOP', 'RD&#36;', 'yes'),
(297, 'woocommerce_currencies_currency_XCD', 'XCD', 'yes'),
(298, 'woocommerce_currencies_currency_EGP', 'EGP', 'yes'),
(299, 'woocommerce_currencies_currency_ERN', 'ERN', 'yes'),
(300, 'woocommerce_currencies_currency_EEK', 'EEK', 'yes'),
(301, 'woocommerce_currencies_currency_ETB', 'ETB', 'yes'),
(302, 'woocommerce_currencies_currency_EUR', '&euro;', 'yes'),
(303, 'woocommerce_currencies_currency_FKP', 'FKP', 'yes'),
(304, 'woocommerce_currencies_currency_FJD', 'FJD', 'yes'),
(305, 'woocommerce_currencies_currency_GMD', 'GMD', 'yes'),
(306, 'woocommerce_currencies_currency_GEL', 'GEL', 'yes'),
(307, 'woocommerce_currencies_currency_GHS', 'GHS', 'yes'),
(308, 'woocommerce_currencies_currency_GIP', 'GIP', 'yes'),
(309, 'woocommerce_currencies_currency_GTQ', 'GTQ', 'yes'),
(310, 'woocommerce_currencies_currency_GNF', 'GNF', 'yes'),
(311, 'woocommerce_currencies_currency_GYD', 'GYD', 'yes'),
(312, 'woocommerce_currencies_currency_HTG', 'HTG', 'yes'),
(313, 'woocommerce_currencies_currency_HNL', 'HNL', 'yes'),
(314, 'woocommerce_currencies_currency_HKD', '&#36;', 'yes'),
(315, 'woocommerce_currencies_currency_HUF', '&#70;&#116;', 'yes'),
(316, 'woocommerce_currencies_currency_ISK', 'Kr.', 'yes'),
(317, 'woocommerce_currencies_currency_INR', 'Rs.', 'yes'),
(318, 'woocommerce_currencies_currency_IDR', 'Rp', 'yes'),
(319, 'woocommerce_currencies_currency_IRR', 'IRR', 'yes'),
(320, 'woocommerce_currencies_currency_IQD', 'IQD', 'yes'),
(321, 'woocommerce_currencies_currency_ILS', '&#8362;', 'yes'),
(322, 'woocommerce_currencies_currency_YER', 'YER', 'yes'),
(323, 'woocommerce_currencies_currency_JMD', 'JMD', 'yes'),
(324, 'woocommerce_currencies_currency_JPY', '&yen;', 'yes'),
(325, 'woocommerce_currencies_currency_JOD', 'JOD', 'yes'),
(326, 'woocommerce_currencies_currency_KZT', 'KZT', 'yes'),
(327, 'woocommerce_currencies_currency_KES', 'KES', 'yes'),
(328, 'woocommerce_currencies_currency_KGS', 'KGS', 'yes'),
(329, 'woocommerce_currencies_currency_KWD', 'KWD', 'yes'),
(330, 'woocommerce_currencies_currency_KIP', '&#8365;', 'yes'),
(331, 'woocommerce_currencies_currency_LVL', 'LVL', 'yes'),
(332, 'woocommerce_currencies_currency_LBP', 'LBP', 'yes'),
(333, 'woocommerce_currencies_currency_LSL', 'LSL', 'yes'),
(334, 'woocommerce_currencies_currency_LRD', 'LRD', 'yes'),
(335, 'woocommerce_currencies_currency_LYD', 'LYD', 'yes'),
(336, 'woocommerce_currencies_currency_LTL', 'LTL', 'yes'),
(337, 'woocommerce_currencies_currency_MOP', 'MOP', 'yes'),
(338, 'woocommerce_currencies_currency_MKD', 'MKD', 'yes'),
(339, 'woocommerce_currencies_currency_MGA', 'MGA', 'yes'),
(340, 'woocommerce_currencies_currency_MYR', '&#82;&#77;', 'yes'),
(341, 'woocommerce_currencies_currency_MWK', 'MWK', 'yes'),
(342, 'woocommerce_currencies_currency_MVR', 'MVR', 'yes'),
(343, 'woocommerce_currencies_currency_MRO', 'MRO', 'yes'),
(344, 'woocommerce_currencies_currency_MUR', 'MUR', 'yes'),
(345, 'woocommerce_currencies_currency_MXN', '&#36;', 'yes'),
(346, 'woocommerce_currencies_currency_MMK', 'MMK', 'yes'),
(347, 'woocommerce_currencies_currency_MDL', 'MDL', 'yes'),
(348, 'woocommerce_currencies_currency_MNT', 'MNT', 'yes'),
(349, 'woocommerce_currencies_currency_MAD', 'MAD', 'yes'),
(350, 'woocommerce_currencies_currency_MZM', 'MZM', 'yes'),
(351, 'woocommerce_currencies_currency_NAD', 'NAD', 'yes'),
(352, 'woocommerce_currencies_currency_NPR', 'Rs.', 'yes'),
(353, 'woocommerce_currencies_currency_ANG', 'ANG', 'yes'),
(354, 'woocommerce_currencies_currency_TWD', '&#78;&#84;&#36;', 'yes'),
(355, 'woocommerce_currencies_currency_NZD', '&#36;', 'yes'),
(356, 'woocommerce_currencies_currency_NIO', 'NIO', 'yes'),
(357, 'woocommerce_currencies_currency_NGN', '&#8358;', 'yes'),
(358, 'woocommerce_currencies_currency_KPW', 'KPW', 'yes'),
(359, 'woocommerce_currencies_currency_NOK', '&#107;&#114;', 'yes'),
(360, 'woocommerce_currencies_currency_OMR', 'OMR', 'yes'),
(361, 'woocommerce_currencies_currency_TOP', 'TOP', 'yes'),
(362, 'woocommerce_currencies_currency_PKR', 'PKR', 'yes'),
(363, 'woocommerce_currencies_currency_PAB', 'PAB', 'yes'),
(364, 'woocommerce_currencies_currency_PGK', 'PGK', 'yes'),
(365, 'woocommerce_currencies_currency_PYG', '&#8370;', 'yes'),
(366, 'woocommerce_currencies_currency_PEN', 'PEN', 'yes'),
(367, 'woocommerce_currencies_currency_PHP', '&#8369;', 'yes'),
(368, 'woocommerce_currencies_currency_PLN', '&#122;&#322;', 'yes'),
(369, 'woocommerce_currencies_currency_QAR', 'QAR', 'yes'),
(370, 'woocommerce_currencies_currency_RON', 'lei', 'yes'),
(371, 'woocommerce_currencies_currency_RUB', '&#1088;&#1091;&#1073;.', 'yes'),
(372, 'woocommerce_currencies_currency_RWF', 'RWF', 'yes'),
(373, 'woocommerce_currencies_currency_SHP', 'SHP', 'yes'),
(374, 'woocommerce_currencies_currency_WST', 'WST', 'yes'),
(375, 'woocommerce_currencies_currency_STD', 'STD', 'yes'),
(376, 'woocommerce_currencies_currency_SAR', 'SAR', 'yes'),
(377, 'woocommerce_currencies_currency_SCR', 'SCR', 'yes'),
(378, 'woocommerce_currencies_currency_RSD', 'RSD', 'yes'),
(379, 'woocommerce_currencies_currency_SLL', 'SLL', 'yes'),
(380, 'woocommerce_currencies_currency_SGD', '&#36;', 'yes'),
(381, 'woocommerce_currencies_currency_SYP', 'SYP', 'yes'),
(382, 'woocommerce_currencies_currency_SKK', 'SKK', 'yes'),
(383, 'woocommerce_currencies_currency_SBD', 'SBD', 'yes'),
(384, 'woocommerce_currencies_currency_SOS', 'SOS', 'yes'),
(385, 'woocommerce_currencies_currency_ZAR', '&#82;', 'yes'),
(386, 'woocommerce_currencies_currency_KRW', '&#8361;', 'yes'),
(387, 'woocommerce_currencies_currency_XDR', 'XDR', 'yes'),
(388, 'woocommerce_currencies_currency_LKR', 'LKR', 'yes'),
(389, 'woocommerce_currencies_currency_SDG', 'SDG', 'yes'),
(390, 'woocommerce_currencies_currency_SRD', 'SRD', 'yes'),
(391, 'woocommerce_currencies_currency_SZL', 'SZL', 'yes'),
(392, 'woocommerce_currencies_currency_SEK', '&#107;&#114;', 'yes'),
(393, 'woocommerce_currencies_currency_CHF', '&#67;&#72;&#70;', 'yes'),
(394, 'woocommerce_currencies_currency_TJS', 'TJS', 'yes'),
(395, 'woocommerce_currencies_currency_TZS', 'TZS', 'yes'),
(396, 'woocommerce_currencies_currency_THB', '&#3647;', 'yes'),
(397, 'woocommerce_currencies_currency_TTD', 'TTD', 'yes'),
(398, 'woocommerce_currencies_currency_TND', 'TND', 'yes'),
(399, 'woocommerce_currencies_currency_TRY', '&#8378;', 'yes'),
(400, 'woocommerce_currencies_currency_TMM', 'TMM', 'yes'),
(401, 'woocommerce_currencies_currency_AED', 'د.إ', 'yes'),
(402, 'woocommerce_currencies_currency_UGX', 'UGX', 'yes'),
(403, 'woocommerce_currencies_currency_UAH', '&#8372;', 'yes'),
(404, 'woocommerce_currencies_currency_USD', '&#36;', 'yes'),
(405, 'woocommerce_currencies_currency_UYU', 'UYU', 'yes'),
(406, 'woocommerce_currencies_currency_UZS', 'UZS', 'yes'),
(407, 'woocommerce_currencies_currency_VUV', 'VUV', 'yes'),
(408, 'woocommerce_currencies_currency_VEF', 'VEF', 'yes'),
(409, 'woocommerce_currencies_currency_VND', '&#8363;', 'yes'),
(410, 'woocommerce_currencies_currency_XOF', 'XOF', 'yes'),
(411, 'woocommerce_currencies_currency_ZMK', 'ZMK', 'yes'),
(412, 'woocommerce_currencies_currency_ZWD', 'ZWD', 'yes'),
(413, 'woocommerce_currencies_currency_RMB', '&yen;', 'yes'),
(416, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(417, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(418, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(419, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(420, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(421, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(422, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(423, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:"title";s:8:"Products";s:6:"number";i:2;s:4:"show";s:8:"featured";s:7:"orderby";s:4:"date";s:5:"order";s:4:"desc";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(424, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(425, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(426, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(427, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(439, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(440, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(441, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:15:"koral@gmail.com";}', 'yes'),
(442, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(443, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(444, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(450, 'wc_gateway_ppce_bootstrap_warning_message', 'WooCommerce Gateway PayPal Express Checkout requires cURL to be installed on your server', 'yes'),
(476, 'product_cat_children', 'a:1:{i:9;a:3:{i:0;i:14;i:1;i:18;i:2;i:19;}}', 'yes'),
(491, 'category_children', 'a:0:{}', 'yes'),
(621, 'ngg_run_freemius', '1', 'yes'),
(622, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:24:"nextgen-gallery/freemius";O:8:"stdClass":3:{s:7:"version";s:5:"1.2.1";s:9:"timestamp";i:1481307100;s:11:"plugin_path";s:9:"hello.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:9:"hello.php";s:8:"sdk_path";s:24:"nextgen-gallery/freemius";s:7:"version";s:5:"1.2.1";s:13:"in_activation";b:1;s:9:"timestamp";i:1481307100;}}', 'yes'),
(623, 'fs_debug_mode', '', 'yes'),
(624, 'fs_accounts', 'a:4:{s:11:"plugin_data";a:1:{s:15:"nextgen-gallery";a:13:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:70:"C:/xampp/htdocs/koral/wp-content/plugins/nextgen-gallery/nggallery.php";}s:17:"install_timestamp";i:1481307100;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"1.2.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"2.1.60";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:0;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:0;s:9:"timestamp";i:1481307100;s:7:"version";s:6:"2.1.60";}s:17:"was_plugin_loaded";b:1;}}s:13:"file_slug_map";a:1:{s:29:"nextgen-gallery/nggallery.php";s:15:"nextgen-gallery";}s:7:"plugins";a:1:{s:15:"nextgen-gallery";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:15:"NextGEN Gallery";s:4:"slug";s:15:"nextgen-gallery";s:4:"file";s:29:"nextgen-gallery/nggallery.php";s:7:"version";s:6:"2.1.60";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_009356711cd548837f074e1ef60a4";s:10:"secret_key";N;s:2:"id";s:3:"266";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:1;}}s:9:"unique_id";s:32:"46bf4c5463b4a43bce41c631ea8477d2";}', 'yes'),
(625, 'fs_api_cache', 'a:0:{}', 'yes'),
(648, 'wpseo_sitemap_display_type_cache_validator', '5JAuA', 'no'),
(495, 'livesite_plugin_settings', 'a:6:{s:11:"main_module";s:12:"form_builder";s:15:"plugin_upgraded";b:0;s:7:"modules";a:4:{s:12:"form_builder";a:12:{s:6:"active";b:1;s:4:"path";s:24:"modules\\form_builder.php";s:4:"icon";s:14:"icon-File-Edit";s:5:"title";s:12:"Contact Form";s:10:"main_title";s:12:"Contact Form";s:4:"text";s:61:"Create beautiful forms using a simple Drag &amp; Drop editor.";s:4:"slug";s:5:"ls_cf";s:14:"custom_page_id";i:98;s:17:"custom_page_title";s:10:"Contact Us";s:19:"custom_page_content";a:4:{i:0;s:126:"<strong>Fill in the form below and we will get in touch as soon as we can.</strong> [livesite-contact title="Contact request"]";i:1;s:278:"<strong>We are always interested to hear from anyone who wishes to get in touch with us. Please fill up the contact form below and we''ll get back to you soon. A confirmation email will be sent to you once the message was sent.</strong> [livesite-contact title="Contact request"]";i:2;s:163:"<strong>Feel free to contact our team with your inquiries, by using the contact management software form below:</strong> [livesite-contact title="Contact request"]";i:3;s:130:"<strong>Please complete the contact form below to schedule time with our team.</strong> [livesite-contact title="Contact request"]";}s:30:"custom_page_previously_created";b:1;s:16:"module_tray_text";a:2:{s:6:"active";s:27:"Customize your contact form";s:8:"disabled";s:31:"Add a contact form to your site";}}s:15:"livesite_widget";a:10:{s:6:"active";b:1;s:4:"path";s:27:"modules\\livesite_widget.php";s:4:"icon";s:13:"icon-Livesite";s:5:"title";s:15:"LiveSite Widget";s:10:"main_title";s:15:"Livesite Widget";s:4:"text";s:65:"Encourage clients to take actions and capture twice as many leads";s:4:"slug";s:5:"ls_lw";s:14:"custom_page_id";b:0;s:13:"show_livesite";b:1;s:16:"module_tray_text";a:2:{s:6:"active";s:36:"Customize your lead capturing widget";s:8:"disabled";s:0:"";}}s:8:"payments";a:12:{s:6:"active";b:0;s:4:"path";s:20:"modules\\payments.php";s:4:"icon";s:10:"icon-Money";s:5:"title";s:15:"Payments Button";s:10:"main_title";s:15:"Online Payments";s:4:"text";s:56:"Offer your clients a simple way to pay for your services";s:4:"slug";s:5:"ls_pm";s:14:"custom_page_id";b:0;s:17:"custom_page_title";s:10:"Pay Online";s:19:"custom_page_content";a:4:{i:0;s:134:"<strong>You are invited to securely pay online using any Credit Card or PayPal. Simply fill in the form below.</strong> [livesite-pay]";i:1;s:243:"<p>We accept online payments!</p><p>You may pay securely using any Credit Card or PayPal account.<br>Please use the form below to complete your payment. A confirmation email will be sent to you once the charge has been made.</p> [livesite-pay]";i:2;s:101:"<strong>Make a payment using our secure and convenient online payment system.</strong> [livesite-pay]";i:3;s:128:"<strong>We invite you to make a secure online payment.<br>To get started, please fill up the form below:</strong> [livesite-pay]";}s:30:"custom_page_previously_created";b:0;s:16:"module_tray_text";a:2:{s:6:"active";s:27:"Customize your payment form";s:8:"disabled";s:39:"Add online payment options to your site";}}s:9:"scheduler";a:12:{s:6:"active";b:0;s:4:"path";s:21:"modules\\scheduler.php";s:4:"icon";s:13:"icon-Calendar";s:5:"title";s:9:"Scheduler";s:10:"main_title";s:21:"Appointment Scheduler";s:4:"text";s:52:"Self service appointment scheduling for your clients";s:4:"slug";s:5:"ls_sc";s:14:"custom_page_id";b:0;s:17:"custom_page_title";s:16:"Book Appointment";s:19:"custom_page_content";a:4:{i:0;s:179:"<strong>We invite you to schedule an appointment online. See our available time below and pick a time that works best for you.</strong> [livesite-schedule title="Contact request"]";i:1;s:114:"<strong>Use this calendar to schedule an appointment with us.</strong> [livesite-schedule title="Contact request"]";i:2;s:114:"<strong>Please use the below CRM Software to reach out to us.</strong> [livesite-schedule title="Contact request"]";i:3;s:158:"<strong>Use our Online Scheduling system to book an appointment, request a service or schedule a meeting.</strong> [livesite-schedule title="Contact request"]";}s:30:"custom_page_previously_created";b:0;s:16:"module_tray_text";a:2:{s:6:"active";s:33:"Customize your scheduling options";s:8:"disabled";s:34:"Add online scheduling to your site";}}}s:15:"vcita_connected";b:1;s:12:"vcita_params";a:10:{s:7:"success";s:1:"1";s:3:"uid";s:16:"hqthbuaqbsodsju4";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:5:"title";s:0:"";s:18:"confirmation_token";s:20:"SDRSVCdWGeRxZT_BJdU8";s:9:"confirmed";s:4:"true";s:12:"engage_delay";s:1:"5";s:18:"implementation_key";s:20:"6668b2b50a70a65825cd";s:5:"email";s:15:"koral@gmail.com";}s:26:"plugin_initially_activated";b:1;}', 'yes'),
(783, 'ffpf_caching_dir_9be39b438dfd17e3f0ac46ae3d540a09', 'a:2:{s:3:"md5";s:32:"9f9b5a275ec1ec0a5213aa5bf281d74a";s:15:"dependent_files";a:1:{i:0;a:2:{s:4:"path";s:123:"C:/xampp/htdocs/koral/wp-content/plugins/custom-css-editor/fresh-framework/framework/adminScreens/assets/css/ff-mixins.less";s:8:"modified";i:1481198257;}}}', 'yes'),
(501, 'ffpf_caching_dir_632bf84353702a935b9559af1897bc4f', 'a:2:{s:3:"md5";s:32:"0a2ab5cf419a682ed4a9e84d008dddcc";s:15:"dependent_files";a:0:{}}', 'yes'),
(630, 'ngg_options', 'a:70:{s:11:"gallerypath";s:19:"wp-content\\gallery\\";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";i:240;s:11:"thumbheight";i:160;s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:5:"Koral";s:7:"wmColor";s:6:"000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:28:"always_enable_frontend_logic";b:0;s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1481307219;}', 'yes'),
(502, 'widget_custom-menu-wizard', 'a:3:{i:2;a:50:{s:14:"allow_all_root";i:0;s:17:"depth_rel_current";i:0;s:16:"fallback_ci_lifo";i:0;s:18:"fallback_ci_parent";i:0;s:17:"fallback_siblings";i:0;s:11:"flat_output";i:0;s:10:"hide_title";i:0;s:8:"siblings";i:0;s:12:"title_linked";i:0;s:7:"ol_root";i:0;s:6:"ol_sub";i:0;s:10:"fs_filters";i:1;s:12:"fs_fallbacks";i:1;s:9:"fs_output";i:1;s:12:"fs_container";i:1;s:10:"fs_classes";i:1;s:8:"fs_links";i:1;s:14:"fs_alternative";i:1;s:9:"ancestors";i:0;s:17:"ancestor_siblings";i:0;s:5:"depth";i:0;s:6:"branch";i:0;s:4:"menu";i:2;s:5:"level";i:1;s:14:"fallback_depth";i:0;s:5:"title";s:10:"Mapa Sajta";s:6:"filter";s:0:"";s:12:"branch_start";s:0:"";s:10:"start_mode";s:0:"";s:12:"title_branch";s:0:"";s:13:"title_current";s:0:"";s:16:"contains_current";s:0:"";s:9:"container";s:3:"div";s:12:"container_id";s:0:"";s:15:"container_class";s:0:"";s:13:"exclude_level";s:0:"";s:8:"fallback";s:0:"";s:13:"include_level";s:0:"";s:9:"switch_if";s:0:"";s:9:"switch_at";s:0:"";s:9:"switch_to";s:0:"";s:10:"menu_class";s:11:"menu-widget";s:12:"widget_class";s:0:"";s:4:"cmwv";s:5:"3.3.0";s:6:"before";s:0:"";s:5:"after";s:0:"";s:11:"link_before";s:0:"";s:10:"link_after";s:0:"";s:7:"exclude";s:0:"";s:5:"items";s:0:"";}i:3;a:50:{s:14:"allow_all_root";i:0;s:17:"depth_rel_current";i:0;s:16:"fallback_ci_lifo";i:0;s:18:"fallback_ci_parent";i:0;s:17:"fallback_siblings";i:0;s:11:"flat_output";i:0;s:10:"hide_title";i:0;s:8:"siblings";i:0;s:12:"title_linked";i:0;s:7:"ol_root";i:0;s:6:"ol_sub";i:0;s:10:"fs_filters";i:1;s:12:"fs_fallbacks";i:1;s:9:"fs_output";i:1;s:12:"fs_container";i:1;s:10:"fs_classes";i:1;s:8:"fs_links";i:1;s:14:"fs_alternative";i:1;s:9:"ancestors";i:0;s:17:"ancestor_siblings";i:0;s:5:"depth";i:0;s:6:"branch";i:0;s:4:"menu";i:8;s:5:"level";i:1;s:14:"fallback_depth";i:0;s:5:"title";s:10:"Mapa sajta";s:6:"filter";s:0:"";s:12:"branch_start";s:0:"";s:10:"start_mode";s:0:"";s:12:"title_branch";s:0:"";s:13:"title_current";s:0:"";s:16:"contains_current";s:0:"";s:9:"container";s:3:"div";s:12:"container_id";s:0:"";s:15:"container_class";s:0:"";s:13:"exclude_level";s:0:"";s:8:"fallback";s:0:"";s:13:"include_level";s:0:"";s:9:"switch_if";s:0:"";s:9:"switch_at";s:0:"";s:9:"switch_to";s:0:"";s:10:"menu_class";s:11:"menu-widget";s:12:"widget_class";s:0:"";s:4:"cmwv";s:5:"3.3.0";s:6:"before";s:0:"";s:5:"after";s:0:"";s:11:"link_before";s:0:"";s:10:"link_after";s:0:"";s:7:"exclude";s:0:"";s:5:"items";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(509, 'gmwd_pro', 'no', 'no'),
(510, 'gmwd_version', '1.0.27', 'no'),
(511, 'gmwd_do_activation_set_up_redirect', '0', 'yes'),
(512, 'gmwd_download_markers', '0', 'yes'),
(513, 'widget_gmwd_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(514, 'gmwd_admin_notice', 'a:2:{s:15:"two_week_review";a:2:{s:5:"start";s:10:"12/23/2016";s:3:"int";i:14;}s:16:"one_week_support";a:2:{s:5:"start";s:10:"12/16/2016";s:3:"int";i:7;}}', 'yes'),
(515, 'chch-pu-up-to110', 'yes', 'yes'),
(517, 'shareaholic_activate_timestamp', '1481306006', 'no'),
(629, 'ngg_transient_groups', 'a:7:{s:9:"__counter";i:7;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:15:"col_in_wp_posts";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:19:"col_in_wp_ngg_album";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:22:"col_in_wp_ngg_pictures";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:7;s:7:"enabled";b:1;}}', 'yes'),
(637, 'pope_module_list', 'a:34:{i:0;s:17:"photocrati-fs|0.6";i:1;s:19:"photocrati-i18n|0.3";i:2;s:25:"photocrati-validation|0.2";i:3;s:21:"photocrati-router|0.9";i:4;s:32:"photocrati-wordpress_routing|0.8";i:5;s:23:"photocrati-security|0.3";i:6;s:32:"photocrati-nextgen_settings|0.15";i:7;s:18:"photocrati-mvc|0.8";i:8;s:20:"photocrati-ajax|0.10";i:9;s:26:"photocrati-datamapper|0.10";i:10;s:30:"photocrati-nextgen-legacy|0.18";i:11;s:28:"photocrati-nextgen-data|0.14";i:12;s:33:"photocrati-dynamic_thumbnails|0.7";i:13;s:29:"photocrati-nextgen_admin|0.11";i:14;s:39:"photocrati-nextgen_gallery_display|0.16";i:15;s:34:"photocrati-frame_communication|0.5";i:16;s:30:"photocrati-attach_to_post|0.17";i:17;s:38:"photocrati-nextgen_addgallery_page|0.9";i:18;s:36:"photocrati-nextgen_other_options|0.9";i:19;s:33:"photocrati-nextgen_pagination|0.4";i:20;s:33:"photocrati-dynamic_stylesheet|0.4";i:21;s:34:"photocrati-nextgen_pro_upgrade|0.6";i:22;s:20:"photocrati-cache|0.2";i:23;s:24:"photocrati-lightbox|0.17";i:24;s:38:"photocrati-nextgen_basic_templates|0.7";i:25;s:37:"photocrati-nextgen_basic_gallery|0.16";i:26;s:42:"photocrati-nextgen_basic_imagebrowser|0.13";i:27;s:39:"photocrati-nextgen_basic_singlepic|0.14";i:28;s:38:"photocrati-nextgen_basic_tagcloud|0.15";i:29;s:35:"photocrati-nextgen_basic_album|0.17";i:30;s:21:"photocrati-widget|0.6";i:31;s:33:"photocrati-third_party_compat|0.6";i:32;s:29:"photocrati-nextgen_xmlrpc|0.6";i:33;s:20:"photocrati-wpcli|0.2";}', 'yes'),
(555, 'youtubeprefs_alloptions', 'a:70:{s:7:"version";s:4:"11.5";s:9:"centervid";i:0;s:6:"glance";i:1;s:8:"autoplay";i:0;s:14:"cc_load_policy";i:0;s:14:"iv_load_policy";i:1;s:4:"loop";i:0;s:14:"modestbranding";i:0;s:3:"rel";i:1;s:8:"showinfo";i:1;s:11:"playsinline";i:0;s:6:"origin";i:0;s:8:"autohide";i:2;s:5:"html5";i:0;s:2:"hl";s:0:"";s:4:"dohl";i:0;s:5:"theme";s:4:"dark";s:5:"color";s:3:"red";s:5:"wmode";s:6:"opaque";s:2:"vq";s:0:"";s:3:"pro";s:0:"";s:3:"ssl";i:0;s:8:"nocookie";i:0;s:13:"playlistorder";i:0;s:8:"acctitle";i:0;s:7:"ogvideo";i:0;s:7:"migrate";i:0;s:15:"migrate_youtube";i:0;s:22:"migrate_embedplusvideo";i:0;s:8:"controls";i:2;s:10:"oldspacing";i:0;s:10:"responsive";i:0;s:14:"responsive_all";i:1;s:9:"widgetfit";i:1;s:16:"evselector_light";i:0;s:9:"schemaorg";i:0;s:9:"ftpostimg";i:0;s:4:"spdc";i:0;s:7:"spdcexp";i:24;s:6:"spdcab";i:1;s:7:"dynload";i:0;s:7:"dyntype";s:0:"";s:11:"defaultdims";i:0;s:5:"width";s:0:"";s:6:"height";s:0:"";s:10:"defaultvol";i:0;s:3:"vol";s:0:"";s:6:"apikey";s:0:"";s:15:"gallery_columns";i:3;s:21:"gallery_collapse_grid";i:0;s:28:"gallery_collapse_grid_breaks";a:1:{i:0;a:2:{s:2:"bp";a:2:{s:3:"min";i:0;s:3:"max";i:767;}s:4:"cols";i:1;}}s:20:"gallery_scrolloffset";i:20;s:17:"gallery_showtitle";i:1;s:18:"gallery_showpaging";i:1;s:16:"gallery_autonext";i:0;s:17:"gallery_thumbplay";i:1;s:18:"gallery_channelsub";i:0;s:22:"gallery_channelsublink";s:0:"";s:22:"gallery_channelsubtext";s:23:"Subscribe to my channel";s:20:"gallery_customarrows";i:0;s:18:"gallery_customnext";s:4:"Next";s:18:"gallery_customprev";s:4:"Prev";s:15:"gallery_showdsc";i:0;s:13:"gallery_style";s:4:"grid";s:17:"gallery_thumbcrop";s:3:"box";s:16:"gallery_disptype";s:7:"default";s:16:"gallery_pagesize";i:15;s:9:"debugmode";i:0;s:17:"admin_off_scripts";i:0;s:17:"old_script_method";i:0;}', 'yes'),
(523, 'shareaholic_has_accepted_tos', '1', 'yes'),
(581, 'wpseo_sitemap_product_cache_validator', '5I39C', 'no'),
(582, 'wpseo_sitemap_product_type_cache_validator', '5I39F', 'no'),
(583, 'wpseo_sitemap_product_cat_cache_validator', '5I39I', 'no'),
(554, 'widget_huge_it_share_widget', 'a:2:{i:3;a:2:{s:16:"share_buttons_id";s:0:"";s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(556, 'embed_autourls', '1', 'yes'),
(562, 'ossdl_off_cdn_url', 'http://localhost/koral', 'yes'),
(563, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(620, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1481307094;s:7:"checked";a:17:{s:19:"akismet/akismet.php";s:6:"3.1.11";s:57:"woocommerce-all-currencies/woocommerce-all-currencies.php";s:5:"2.0.2";s:59:"contact-form-with-a-meeting-scheduler-by-vcita/Livesite.php";s:5:"4.5.3";s:33:"custom-css-editor/freshplugin.php";s:5:"1.4.0";s:41:"custom-menu-wizard/custom-menu-wizard.php";s:5:"3.3.0";s:33:"wd-google-maps/wd-google-maps.php";s:6:"1.0.27";s:9:"hello.php";s:3:"1.6";s:29:"nextgen-gallery/nggallery.php";s:6:"2.1.60";s:17:"pop-up/pop-up.php";s:5:"2.1.1";s:34:"wp-share-buttons/share-buttons.php";s:5:"1.3.2";s:37:"user-role-editor/user-role-editor.php";s:4:"4.30";s:27:"woocommerce/woocommerce.php";s:5:"2.6.9";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:5:"1.1.2";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:5:"3.0.6";s:27:"wp-super-cache/wp-cache.php";s:5:"1.4.8";s:24:"wordpress-seo/wp-seo.php";s:3:"3.9";s:30:"youtube-embed-plus/youtube.php";s:4:"11.5";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";s:6:"tested";s:3:"4.7";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:16:{s:57:"woocommerce-all-currencies/woocommerce-all-currencies.php";O:8:"stdClass":6:{s:2:"id";s:5:"39920";s:4:"slug";s:26:"woocommerce-all-currencies";s:6:"plugin";s:57:"woocommerce-all-currencies/woocommerce-all-currencies.php";s:11:"new_version";s:5:"2.0.2";s:3:"url";s:57:"https://wordpress.org/plugins/woocommerce-all-currencies/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-all-currencies.2.0.2.zip";}s:59:"contact-form-with-a-meeting-scheduler-by-vcita/Livesite.php";O:8:"stdClass":6:{s:2:"id";s:5:"26078";s:4:"slug";s:46:"contact-form-with-a-meeting-scheduler-by-vcita";s:6:"plugin";s:59:"contact-form-with-a-meeting-scheduler-by-vcita/Livesite.php";s:11:"new_version";s:5:"4.5.3";s:3:"url";s:77:"https://wordpress.org/plugins/contact-form-with-a-meeting-scheduler-by-vcita/";s:7:"package";s:95:"https://downloads.wordpress.org/plugin/contact-form-with-a-meeting-scheduler-by-vcita.4.5.3.zip";}s:33:"custom-css-editor/freshplugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"63836";s:4:"slug";s:17:"custom-css-editor";s:6:"plugin";s:33:"custom-css-editor/freshplugin.php";s:11:"new_version";s:5:"1.4.0";s:3:"url";s:48:"https://wordpress.org/plugins/custom-css-editor/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/custom-css-editor.zip";}s:41:"custom-menu-wizard/custom-menu-wizard.php";O:8:"stdClass":7:{s:2:"id";s:5:"39058";s:4:"slug";s:18:"custom-menu-wizard";s:6:"plugin";s:41:"custom-menu-wizard/custom-menu-wizard.php";s:11:"new_version";s:5:"3.3.0";s:3:"url";s:49:"https://wordpress.org/plugins/custom-menu-wizard/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/custom-menu-wizard.3.3.0.zip";s:14:"upgrade_notice";s:300:"! Important ! : Minimum WordPress version is now 3.9.\n! Possible Breaker ! : Fixed bug with incorrect determination of current item when a &quot;current menu item&quot; has\na duplicate of itself as an ancestor. If this changes your menu, toggle the Fallback option\nfor If more than 1 possible Current";}s:33:"wd-google-maps/wd-google-maps.php";O:8:"stdClass":6:{s:2:"id";s:5:"71305";s:4:"slug";s:14:"wd-google-maps";s:6:"plugin";s:33:"wd-google-maps/wd-google-maps.php";s:11:"new_version";s:6:"1.0.27";s:3:"url";s:45:"https://wordpress.org/plugins/wd-google-maps/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/wd-google-maps.1.0.27.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:6:"2.1.60";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.60.zip";}s:17:"pop-up/pop-up.php";O:8:"stdClass":6:{s:2:"id";s:5:"57316";s:4:"slug";s:6:"pop-up";s:6:"plugin";s:17:"pop-up/pop-up.php";s:11:"new_version";s:5:"2.1.1";s:3:"url";s:37:"https://wordpress.org/plugins/pop-up/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/pop-up.2.1.1.zip";}s:34:"wp-share-buttons/share-buttons.php";O:8:"stdClass":6:{s:2:"id";s:5:"55295";s:4:"slug";s:16:"wp-share-buttons";s:6:"plugin";s:34:"wp-share-buttons/share-buttons.php";s:11:"new_version";s:5:"1.3.2";s:3:"url";s:47:"https://wordpress.org/plugins/wp-share-buttons/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/wp-share-buttons.1.3.2.zip";}s:37:"user-role-editor/user-role-editor.php";O:8:"stdClass":6:{s:2:"id";s:5:"13697";s:4:"slug";s:16:"user-role-editor";s:6:"plugin";s:37:"user-role-editor/user-role-editor.php";s:11:"new_version";s:4:"4.30";s:3:"url";s:47:"https://wordpress.org/plugins/user-role-editor/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/user-role-editor.4.30.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.6.9";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.6.9.zip";}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":6:{s:2:"id";s:5:"70549";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.1.2.zip";}s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";O:8:"stdClass":7:{s:2:"id";s:5:"72276";s:4:"slug";s:26:"woocommerce-gateway-stripe";s:6:"plugin";s:57:"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php";s:11:"new_version";s:5:"3.0.6";s:3:"url";s:57:"https://wordpress.org/plugins/woocommerce-gateway-stripe/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.3.0.6.zip";s:14:"upgrade_notice";s:300:"Fix - When adding declined cards, fatal error is thrown.\nFix - After a failed/declined process, valid cards are not accepted.\nFix - When paying via pay order page/link, billing info is not sent.\nFix - Account for all types of errors for proper localization.\nFix - Correctly reference Stripe fees/net ";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.8.zip";s:14:"upgrade_notice";s:38:"Removed malware URL in a code comment.";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"3.9";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.3.9.zip";}s:30:"youtube-embed-plus/youtube.php";O:8:"stdClass":6:{s:2:"id";s:5:"37263";s:4:"slug";s:18:"youtube-embed-plus";s:6:"plugin";s:30:"youtube-embed-plus/youtube.php";s:11:"new_version";s:4:"11.5";s:3:"url";s:49:"https://wordpress.org/plugins/youtube-embed-plus/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/youtube-embed-plus.11.5.zip";}}}', 'no'),
(575, 'wpseo_sitemap_1_cache_validator', '5NypY', 'no'),
(627, 'widget_ngg-mrssw', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(628, 'widget_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(567, 'wpseo', 'a:21:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"3.9";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";b:0;s:16:"environment_type";s:0:"";s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1481306678;}', 'yes'),
(568, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(569, 'wpseo_titles', 'a:82:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:23:"content-analysis-active";b:1;s:23:"keyword-analysis-active";b:1;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:13:"title-product";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:16:"metadesc-product";s:0:"";s:15:"metakey-product";s:0:"";s:15:"noindex-product";b:0;s:16:"showdate-product";b:0;s:19:"hideeditbox-product";b:0;s:23:"title-ptarchive-product";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:26:"metadesc-ptarchive-product";s:0:"";s:25:"metakey-ptarchive-product";s:0:"";s:25:"bctitle-ptarchive-product";s:0:"";s:25:"noindex-ptarchive-product";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;s:21:"title-tax-product_cat";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_cat";s:0:"";s:23:"metakey-tax-product_cat";s:0:"";s:27:"hideeditbox-tax-product_cat";b:0;s:23:"noindex-tax-product_cat";b:0;s:21:"title-tax-product_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_tag";s:0:"";s:23:"metakey-tax-product_tag";s:0:"";s:27:"hideeditbox-tax-product_tag";b:0;s:23:"noindex-tax-product_tag";b:0;s:32:"title-tax-product_shipping_class";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:35:"metadesc-tax-product_shipping_class";s:0:"";s:34:"metakey-tax-product_shipping_class";s:0:"";s:38:"hideeditbox-tax-product_shipping_class";b:0;s:34:"noindex-tax-product_shipping_class";b:0;}', 'yes'),
(570, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"23521a06c1ef3fe922a2009e4fc5b80d";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(571, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(572, 'wpseo_internallinks', 'a:14:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;s:26:"post_types-product-maintax";i:0;s:29:"taxonomy-product_cat-ptparent";i:0;s:29:"taxonomy-product_tag-ptparent";i:0;s:40:"taxonomy-product_shipping_class-ptparent";i:0;}', 'yes'),
(573, 'wpseo_xml', 'a:22:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:33:"user_role-customer-not_in_sitemap";b:0;s:37:"user_role-shop_manager-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:33:"post_types-product-not_in_sitemap";b:0;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;s:37:"taxonomies-product_cat-not_in_sitemap";b:0;s:37:"taxonomies-product_tag-not_in_sitemap";b:0;s:48:"taxonomies-product_shipping_class-not_in_sitemap";b:0;}', 'yes'),
(574, 'wpseo_flush_rewrite', '1', 'yes'),
(576, 'wpseo_sitemap_page_cache_validator', '5KElJ', 'no'),
(584, 'user_role_editor', 'a:1:{s:11:"ure_version";s:4:"4.30";}', 'yes'),
(587, 'wp_backup_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'no'),
(588, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(626, 'widget_ngg-images', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(591, 'wpseo_sitemap_author_cache_validator', 'tLNw', 'no'),
(600, '_site_transient_timeout_ure_caps_readable', '1481307587', 'no'),
(601, '_site_transient_ure_caps_readable', '', 'no'),
(634, 'ngg_db_version', '1.8.1', 'yes'),
(633, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(604, '_site_transient_timeout_ure_caps_columns_quant', '1481307587', 'no'),
(605, '_site_transient_ure_caps_columns_quant', '1', 'no'),
(632, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(608, 'ure_role_additional_options_values', 'a:2:{s:12:"shop_manager";a:0:{}s:6:"editor";a:0:{}}', 'yes'),
(713, 'wpseo_sitemap_ngg_gallery_cache_validator', 'tVsX', 'no'),
(714, 'wpseo_sitemap_ngg_pictures_cache_validator', '5KhHi', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1155 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(948, 116, '_wp_page_template', 'template-fullwidth.php'),
(4, 5, '_wp_attached_file', '2016/12/coral-logo.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:197;s:6:"height";i:150;s:4:"file";s:22:"2016/12/coral-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"coral-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 6, '_wp_attached_file', '2016/12/cropped-coral-logo.png'),
(7, 6, '_wp_attachment_context', 'site-icon'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:30:"2016/12/cropped-coral-logo.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"cropped-coral-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-coral-logo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"cropped-coral-logo-200x200.png";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:11:"slider-item";a:4:{s:4:"file";s:30:"cropped-coral-logo-512x480.png";s:5:"width";i:512;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:10:"post-thumb";a:4:{s:4:"file";s:30:"cropped-coral-logo-420x350.png";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}s:15:"post-full-image";a:4:{s:4:"file";s:30:"cropped-coral-logo-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:30:"cropped-coral-logo-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:30:"cropped-coral-logo-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:30:"cropped-coral-logo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:28:"cropped-coral-logo-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 5, '_edit_lock', '1481299487:1'),
(10, 5, '_edit_last', '1'),
(11, 7, '_wp_attached_file', '2016/12/coral-logo-1.png'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:90;s:4:"file";s:24:"2016/12/coral-logo-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 8, '_edit_last', '1'),
(14, 8, '_edit_lock', '1481299749:1'),
(15, 8, '_wp_page_template', 'template-homepage.php'),
(16, 10, '_edit_last', '1'),
(17, 10, '_wp_page_template', 'default'),
(18, 10, '_edit_lock', '1481299762:1'),
(19, 12, '_menu_item_type', 'post_type'),
(20, 12, '_menu_item_menu_item_parent', '0'),
(21, 12, '_menu_item_object_id', '10'),
(22, 12, '_menu_item_object', 'page'),
(23, 12, '_menu_item_target', ''),
(24, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 12, '_menu_item_xfn', ''),
(26, 12, '_menu_item_url', ''),
(37, 19, '_menu_item_type', 'post_type'),
(28, 13, '_menu_item_type', 'post_type'),
(29, 13, '_menu_item_menu_item_parent', '0'),
(30, 13, '_menu_item_object_id', '8'),
(31, 13, '_menu_item_object', 'page'),
(32, 13, '_menu_item_target', ''),
(33, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 13, '_menu_item_xfn', ''),
(35, 13, '_menu_item_url', ''),
(38, 19, '_menu_item_menu_item_parent', '0'),
(39, 19, '_menu_item_object_id', '17'),
(40, 19, '_menu_item_object', 'page'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', ''),
(46, 20, '_menu_item_type', 'post_type'),
(47, 20, '_menu_item_menu_item_parent', '21'),
(48, 20, '_menu_item_object_id', '16'),
(49, 20, '_menu_item_object', 'page'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', ''),
(116, 27, '_menu_item_url', ''),
(55, 21, '_menu_item_type', 'post_type'),
(56, 21, '_menu_item_menu_item_parent', '22'),
(57, 21, '_menu_item_object_id', '15'),
(58, 21, '_menu_item_object', 'page'),
(59, 21, '_menu_item_target', ''),
(60, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 21, '_menu_item_xfn', ''),
(62, 21, '_menu_item_url', ''),
(115, 27, '_menu_item_xfn', ''),
(64, 22, '_menu_item_type', 'post_type'),
(65, 22, '_menu_item_menu_item_parent', '0'),
(66, 22, '_menu_item_object_id', '14'),
(67, 22, '_menu_item_object', 'page'),
(68, 22, '_menu_item_target', ''),
(69, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 22, '_menu_item_xfn', ''),
(71, 22, '_menu_item_url', ''),
(114, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 27, '_menu_item_target', ''),
(112, 27, '_menu_item_object', 'page'),
(111, 27, '_menu_item_object_id', '16'),
(110, 27, '_menu_item_menu_item_parent', '0'),
(109, 27, '_menu_item_type', 'post_type'),
(128, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:666;s:4:"file";s:48:"2016/12/295315_451214708306134_1891369303_n1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-768x568.jpg";s:5:"width";i:768;s:6:"height";i:568;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-900x480.jpg";s:5:"width";i:900;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-676x500.jpg";s:5:"width";i:676;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:48:"295315_451214708306134_1891369303_n1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 26, '_menu_item_url', ''),
(106, 26, '_menu_item_xfn', ''),
(105, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 26, '_menu_item_target', ''),
(103, 26, '_menu_item_object', 'page'),
(102, 26, '_menu_item_object_id', '17'),
(101, 26, '_menu_item_menu_item_parent', '0'),
(100, 26, '_menu_item_type', 'post_type'),
(118, 28, '_menu_item_type', 'post_type'),
(119, 28, '_menu_item_menu_item_parent', '0'),
(120, 28, '_menu_item_object_id', '15'),
(121, 28, '_menu_item_object', 'page'),
(122, 28, '_menu_item_target', ''),
(123, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 28, '_menu_item_xfn', ''),
(125, 28, '_menu_item_url', ''),
(127, 30, '_wp_attached_file', '2016/12/295315_451214708306134_1891369303_n1.jpg'),
(129, 31, '_wp_attached_file', '2016/12/Filigranski_nakit_01.jpg'),
(130, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2758;s:6:"height";i:1920;s:4:"file";s:32:"2016/12/Filigranski_nakit_01.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-768x535.jpg";s:5:"width";i:768;s:6:"height";i:535;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"Filigranski_nakit_01-1024x713.jpg";s:5:"width";i:1024;s:6:"height";i:713;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:33:"Filigranski_nakit_01-1600x480.jpg";s:5:"width";i:1600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-718x500.jpg";s:5:"width";i:718;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:32:"Filigranski_nakit_01-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:14:"SLAVICA_PANOVA";s:6:"camera";s:11:"NIKON D7000";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1384615336";s:9:"copyright";s:14:"SLAVICA_PANOVA";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 32, '_wp_attached_file', '2016/12/sector-satovi.jpg'),
(132, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:940;s:6:"height";i:360;s:4:"file";s:25:"2016/12/sector-satovi.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sector-satovi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"sector-satovi-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sector-satovi-768x294.jpg";s:5:"width";i:768;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sector-satovi-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:25:"sector-satovi-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"sector-satovi-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"sector-satovi-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"sector-satovi-600x360.jpg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 33, '_edit_last', '1'),
(134, 33, '_edit_lock', '1481300887:1'),
(135, 18, '_edit_last', '1'),
(136, 18, '_edit_lock', '1481301178:1'),
(137, 18, '_product_attributes', 'a:1:{s:19:"narukvica-materijal";a:6:{s:4:"name";s:21:"Narukvica - Materijal";s:5:"value";s:21:"Koza | Metal | PLatno";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(138, 34, 'attribute_narukvica-materijal', 'PLatno'),
(139, 34, '_stock_status', 'instock'),
(140, 35, 'attribute_narukvica-materijal', 'Metal'),
(141, 35, '_stock_status', 'instock'),
(142, 36, 'attribute_narukvica-materijal', 'Koza'),
(143, 36, '_stock_status', 'instock'),
(144, 36, '_sku', ''),
(145, 36, '_thumbnail_id', '0'),
(146, 36, '_virtual', 'no'),
(147, 36, '_downloadable', 'no'),
(148, 36, '_weight', ''),
(149, 36, '_length', ''),
(150, 36, '_width', ''),
(151, 36, '_height', ''),
(152, 36, '_manage_stock', 'yes'),
(153, 36, '_backorders', 'no'),
(154, 36, '_stock', '25.000000'),
(155, 18, '_downloadable', 'no'),
(156, 18, '_virtual', 'no'),
(157, 18, '_min_variation_price', '120000'),
(158, 18, '_max_variation_price', '130000'),
(159, 18, '_min_price_variation_id', '34'),
(160, 18, '_max_price_variation_id', '35'),
(161, 18, '_min_variation_regular_price', '120000'),
(162, 18, '_max_variation_regular_price', '160000'),
(163, 18, '_min_regular_price_variation_id', '34'),
(164, 18, '_max_regular_price_variation_id', '35'),
(165, 18, '_min_variation_sale_price', '125000'),
(166, 18, '_max_variation_sale_price', '130000'),
(167, 18, '_min_sale_price_variation_id', '36'),
(168, 18, '_max_sale_price_variation_id', '35'),
(255, 18, '_price', '130000'),
(171, 36, '_regular_price', '140000'),
(172, 36, '_sale_price', '125000'),
(173, 36, '_sale_price_dates_from', '1481241600'),
(174, 36, '_sale_price_dates_to', '1483142400'),
(175, 36, '_price', '125000'),
(176, 36, '_download_limit', ''),
(177, 36, '_download_expiry', ''),
(178, 36, '_downloadable_files', ''),
(179, 36, '_variation_description', ''),
(180, 35, '_sku', ''),
(181, 35, '_thumbnail_id', '0'),
(182, 35, '_virtual', 'no'),
(183, 35, '_downloadable', 'no'),
(184, 35, '_weight', ''),
(185, 35, '_length', ''),
(186, 35, '_width', ''),
(187, 35, '_height', ''),
(188, 35, '_manage_stock', 'yes'),
(189, 35, '_backorders', 'no'),
(190, 35, '_stock', '15.000000'),
(254, 18, '_price', '120000'),
(193, 35, '_regular_price', '160000'),
(194, 35, '_sale_price', '130000'),
(195, 35, '_sale_price_dates_from', '1481241600'),
(196, 35, '_sale_price_dates_to', '1483142400'),
(197, 35, '_price', '130000'),
(198, 35, '_download_limit', ''),
(199, 35, '_download_expiry', ''),
(200, 35, '_downloadable_files', ''),
(201, 35, '_variation_description', ''),
(202, 34, '_sku', ''),
(203, 34, '_thumbnail_id', '0'),
(204, 34, '_virtual', 'no'),
(205, 34, '_downloadable', 'no'),
(206, 34, '_weight', ''),
(207, 34, '_length', ''),
(208, 34, '_width', ''),
(209, 34, '_height', ''),
(210, 34, '_manage_stock', 'no'),
(211, 34, '_regular_price', '120000'),
(212, 34, '_sale_price', ''),
(213, 34, '_sale_price_dates_from', ''),
(214, 34, '_sale_price_dates_to', ''),
(215, 34, '_price', '120000'),
(216, 34, '_download_limit', ''),
(217, 34, '_download_expiry', ''),
(218, 34, '_downloadable_files', ''),
(219, 34, '_variation_description', ''),
(222, 18, '_default_attributes', 'a:0:{}'),
(223, 37, '_wp_attached_file', '2016/12/V1-01-1-256x256.jpg'),
(224, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:27:"2016/12/V1-01-1-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"V1-01-1-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"V1-01-1-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"V1-01-1-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 38, '_wp_attached_file', '2016/12/V1-01-1-485x485.jpg'),
(226, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:485;s:4:"file";s:27:"2016/12/V1-01-1-485x485.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"V1-01-1-485x485-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"V1-01-1-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"V1-01-1-485x485-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:27:"V1-01-1-485x485-485x480.jpg";s:5:"width";i:485;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:27:"V1-01-1-485x485-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"V1-01-1-485x485-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"V1-01-1-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 18, '_visibility', 'visible'),
(228, 18, '_thumbnail_id', '37'),
(229, 18, 'total_sales', '0'),
(230, 18, '_tax_status', 'taxable'),
(231, 18, '_tax_class', ''),
(232, 18, '_purchase_note', ''),
(233, 18, '_featured', 'yes'),
(234, 18, '_weight', ''),
(235, 18, '_length', ''),
(236, 18, '_width', ''),
(237, 18, '_height', ''),
(238, 18, '_sku', ''),
(239, 18, '_regular_price', ''),
(240, 18, '_sale_price', ''),
(241, 18, '_sale_price_dates_from', ''),
(242, 18, '_sale_price_dates_to', ''),
(243, 18, '_sold_individually', ''),
(244, 18, '_manage_stock', 'no'),
(245, 18, '_backorders', 'no'),
(246, 18, '_stock', ''),
(247, 18, '_upsell_ids', 'a:0:{}'),
(248, 18, '_crosssell_ids', 'a:0:{}'),
(251, 18, '_stock_status', 'instock'),
(252, 18, '_product_version', '2.6.9'),
(253, 18, '_product_image_gallery', '37,38'),
(256, 39, '_wp_attached_file', '2016/12/download.jpg'),
(257, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:284;s:6:"height";i:177;s:4:"file";s:20:"2016/12/download.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"download-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"download-200x177.jpg";s:5:"width";i:200;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"download-180x177.jpg";s:5:"width";i:180;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(258, 33, '_wp_trash_meta_status', 'draft'),
(259, 33, '_wp_trash_meta_time', '1481301159'),
(260, 33, '_wp_desired_post_slug', ''),
(261, 40, '_edit_last', '1'),
(262, 40, '_edit_lock', '1481301250:1'),
(263, 41, '_wp_attached_file', '2016/12/AL-525B4S6B-256x256.jpg'),
(264, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:31:"2016/12/AL-525B4S6B-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"AL-525B4S6B-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"AL-525B4S6B-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"AL-525B4S6B-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(265, 40, '_visibility', 'visible'),
(266, 40, '_stock_status', 'instock'),
(267, 40, '_thumbnail_id', '41'),
(268, 40, 'total_sales', '0'),
(269, 40, '_downloadable', 'no'),
(270, 40, '_virtual', 'no'),
(271, 40, '_tax_status', 'taxable'),
(272, 40, '_tax_class', ''),
(273, 40, '_purchase_note', ''),
(274, 40, '_featured', 'no'),
(275, 40, '_weight', ''),
(276, 40, '_length', ''),
(277, 40, '_width', ''),
(278, 40, '_height', ''),
(279, 40, '_sku', '121341352345'),
(280, 40, '_product_attributes', 'a:0:{}'),
(281, 40, '_regular_price', '149000'),
(282, 40, '_sale_price', ''),
(283, 40, '_sale_price_dates_from', ''),
(284, 40, '_sale_price_dates_to', ''),
(285, 40, '_price', '149000'),
(286, 40, '_sold_individually', ''),
(287, 40, '_manage_stock', 'yes'),
(288, 40, '_backorders', 'no'),
(290, 40, '_upsell_ids', 'a:0:{}'),
(289, 40, '_stock', '150.000000'),
(291, 40, '_crosssell_ids', 'a:0:{}'),
(292, 40, '_product_version', '2.6.9'),
(293, 40, '_product_image_gallery', ''),
(294, 42, '_edit_last', '1'),
(295, 42, '_edit_lock', '1481301306:1'),
(296, 42, '_visibility', 'visible'),
(297, 42, '_stock_status', 'instock'),
(298, 42, 'total_sales', '1'),
(299, 42, '_downloadable', 'no'),
(300, 42, '_virtual', 'no'),
(301, 42, '_tax_status', 'taxable'),
(302, 42, '_tax_class', ''),
(303, 42, '_purchase_note', ''),
(304, 42, '_featured', 'no'),
(305, 42, '_weight', ''),
(306, 42, '_length', ''),
(307, 42, '_width', ''),
(308, 42, '_height', ''),
(309, 42, '_sku', ''),
(310, 42, '_product_attributes', 'a:0:{}'),
(311, 42, '_regular_price', '120000'),
(312, 42, '_sale_price', '100000'),
(313, 42, '_sale_price_dates_from', '1481241600'),
(314, 42, '_sale_price_dates_to', '1483142400'),
(315, 42, '_price', '100000'),
(316, 42, '_sold_individually', ''),
(317, 42, '_manage_stock', 'no'),
(318, 42, '_backorders', 'no'),
(319, 42, '_stock', ''),
(320, 42, '_upsell_ids', 'a:0:{}'),
(321, 42, '_crosssell_ids', 'a:0:{}'),
(322, 42, '_product_version', '2.6.9'),
(323, 42, '_product_image_gallery', ''),
(324, 43, '_wp_attached_file', '2016/12/AL-372GR4FBS6-256x256.jpg'),
(325, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:33:"2016/12/AL-372GR4FBS6-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"AL-372GR4FBS6-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"AL-372GR4FBS6-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"AL-372GR4FBS6-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(326, 42, '_thumbnail_id', '43'),
(327, 44, '_edit_last', '1'),
(328, 44, '_edit_lock', '1481301430:1'),
(329, 45, '_wp_attached_file', '2016/12/seiko-snxl72k.jpg'),
(330, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:25:"2016/12/seiko-snxl72k.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"seiko-snxl72k-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"seiko-snxl72k-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"seiko-snxl72k-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"seiko-snxl72k-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:25:"seiko-snxl72k-800x480.jpg";s:5:"width";i:800;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:25:"seiko-snxl72k-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:25:"seiko-snxl72k-667x500.jpg";s:5:"width";i:667;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"seiko-snxl72k-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"seiko-snxl72k-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"seiko-snxl72k-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(331, 44, '_visibility', 'visible'),
(332, 44, '_stock_status', 'instock'),
(333, 44, '_thumbnail_id', '45'),
(334, 44, 'total_sales', '0'),
(335, 44, '_downloadable', 'no'),
(336, 44, '_virtual', 'no'),
(337, 44, '_tax_status', 'taxable'),
(338, 44, '_tax_class', ''),
(339, 44, '_purchase_note', ''),
(340, 44, '_featured', 'no'),
(341, 44, '_weight', ''),
(342, 44, '_length', ''),
(343, 44, '_width', ''),
(344, 44, '_height', ''),
(345, 44, '_sku', ''),
(346, 44, '_product_attributes', 'a:0:{}'),
(347, 44, '_regular_price', '120000'),
(348, 44, '_sale_price', ''),
(349, 44, '_sale_price_dates_from', '1481241600'),
(350, 44, '_sale_price_dates_to', '1483142400'),
(351, 44, '_price', '120000'),
(352, 44, '_sold_individually', ''),
(353, 44, '_manage_stock', 'no'),
(354, 44, '_backorders', 'no'),
(355, 44, '_stock', ''),
(356, 44, '_upsell_ids', 'a:0:{}'),
(357, 44, '_crosssell_ids', 'a:0:{}'),
(358, 44, '_product_version', '2.6.9'),
(359, 44, '_product_image_gallery', ''),
(360, 46, '_edit_last', '1'),
(361, 46, '_edit_lock', '1481301503:1'),
(362, 47, '_wp_attached_file', '2016/12/P2-01-256x256.jpg'),
(363, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:25:"2016/12/P2-01-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"P2-01-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"P2-01-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"P2-01-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(364, 46, '_visibility', 'visible'),
(365, 46, '_stock_status', 'instock'),
(366, 46, '_thumbnail_id', '47'),
(367, 46, 'total_sales', '0'),
(368, 46, '_downloadable', 'no'),
(369, 46, '_virtual', 'no'),
(370, 46, '_tax_status', 'taxable'),
(371, 46, '_tax_class', ''),
(372, 46, '_purchase_note', ''),
(373, 46, '_featured', 'no'),
(374, 46, '_weight', ''),
(375, 46, '_length', ''),
(376, 46, '_width', ''),
(377, 46, '_height', ''),
(378, 46, '_sku', ''),
(379, 46, '_product_attributes', 'a:0:{}'),
(380, 46, '_regular_price', '135000'),
(381, 46, '_sale_price', ''),
(382, 46, '_sale_price_dates_from', ''),
(383, 46, '_sale_price_dates_to', ''),
(384, 46, '_price', '135000'),
(385, 46, '_sold_individually', ''),
(386, 46, '_manage_stock', 'no'),
(387, 46, '_backorders', 'no'),
(388, 46, '_stock', ''),
(389, 46, '_upsell_ids', 'a:0:{}'),
(390, 46, '_crosssell_ids', 'a:0:{}'),
(391, 46, '_product_version', '2.6.9'),
(392, 46, '_product_image_gallery', ''),
(393, 48, '_edit_last', '1'),
(394, 48, '_edit_lock', '1481301611:1'),
(395, 49, '_wp_attached_file', '2016/12/AL-725LB4V26-256x256.jpg'),
(396, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:32:"2016/12/AL-725LB4V26-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"AL-725LB4V26-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:32:"AL-725LB4V26-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"AL-725LB4V26-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(397, 48, '_visibility', 'visible'),
(398, 48, '_stock_status', 'instock'),
(399, 48, '_thumbnail_id', '49'),
(400, 48, 'total_sales', '0'),
(401, 48, '_downloadable', 'no'),
(402, 48, '_virtual', 'no'),
(403, 48, '_tax_status', 'taxable'),
(404, 48, '_tax_class', ''),
(405, 48, '_purchase_note', ''),
(406, 48, '_featured', 'no'),
(407, 48, '_weight', ''),
(408, 48, '_length', ''),
(409, 48, '_width', ''),
(410, 48, '_height', ''),
(411, 48, '_sku', ''),
(412, 48, '_product_attributes', 'a:0:{}'),
(413, 48, '_regular_price', '125000'),
(414, 48, '_sale_price', ''),
(415, 48, '_sale_price_dates_from', ''),
(416, 48, '_sale_price_dates_to', ''),
(417, 48, '_price', '125000'),
(418, 48, '_sold_individually', ''),
(419, 48, '_manage_stock', 'no'),
(420, 48, '_backorders', 'no'),
(421, 48, '_stock', ''),
(422, 48, '_upsell_ids', 'a:0:{}'),
(423, 48, '_crosssell_ids', 'a:0:{}'),
(424, 48, '_product_version', '2.6.9'),
(425, 48, '_product_image_gallery', ''),
(426, 42, '_wc_rating_count', 'a:0:{}'),
(427, 42, '_wc_average_rating', '0'),
(428, 40, '_wc_rating_count', 'a:0:{}'),
(429, 40, '_wc_average_rating', '0'),
(430, 48, '_wc_rating_count', 'a:0:{}'),
(431, 48, '_wc_average_rating', '0'),
(432, 44, '_wc_rating_count', 'a:0:{}'),
(433, 44, '_wc_average_rating', '0'),
(434, 46, '_wc_rating_count', 'a:0:{}'),
(435, 46, '_wc_average_rating', '0'),
(436, 18, '_wc_rating_count', 'a:0:{}'),
(437, 18, '_wc_average_rating', '0'),
(438, 50, '_edit_last', '1'),
(439, 50, '_edit_lock', '1481301989:1'),
(440, 51, '_wp_attached_file', '2016/12/AL-525VG4E6-485x485.jpg'),
(441, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:485;s:4:"file";s:31:"2016/12/AL-525VG4E6-485x485.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-485x480.jpg";s:5:"width";i:485;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"AL-525VG4E6-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(442, 50, '_visibility', 'visible'),
(443, 50, '_stock_status', 'instock'),
(444, 50, '_thumbnail_id', '51'),
(445, 50, 'total_sales', '0'),
(446, 50, '_downloadable', 'no'),
(447, 50, '_virtual', 'no'),
(448, 50, '_tax_status', 'taxable'),
(449, 50, '_tax_class', ''),
(450, 50, '_purchase_note', ''),
(451, 50, '_featured', 'yes'),
(452, 50, '_weight', ''),
(453, 50, '_length', ''),
(454, 50, '_width', ''),
(455, 50, '_height', ''),
(456, 50, '_sku', ''),
(457, 50, '_product_attributes', 'a:0:{}'),
(458, 50, '_regular_price', '128000'),
(459, 50, '_sale_price', '110000'),
(460, 50, '_sale_price_dates_from', ''),
(461, 50, '_sale_price_dates_to', ''),
(462, 50, '_price', '110000'),
(463, 50, '_sold_individually', ''),
(464, 50, '_manage_stock', 'no'),
(465, 50, '_backorders', 'no'),
(466, 50, '_stock', ''),
(467, 50, '_upsell_ids', 'a:0:{}'),
(468, 50, '_crosssell_ids', 'a:0:{}'),
(469, 50, '_product_version', '2.6.9'),
(470, 50, '_product_image_gallery', ''),
(471, 50, '_wc_rating_count', 'a:0:{}'),
(472, 50, '_wc_average_rating', '0'),
(473, 52, '_wp_attached_file', '2016/12/xkp0220-2-256x256.jpg'),
(474, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:29:"2016/12/xkp0220-2-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"xkp0220-2-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"xkp0220-2-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"xkp0220-2-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(475, 53, '_edit_last', '1'),
(476, 53, '_edit_lock', '1481301962:1'),
(477, 53, '_visibility', 'visible'),
(478, 53, '_stock_status', 'instock'),
(479, 53, '_thumbnail_id', '52'),
(480, 53, 'total_sales', '0'),
(481, 53, '_downloadable', 'no'),
(482, 53, '_virtual', 'no'),
(483, 53, '_tax_status', 'taxable'),
(484, 53, '_tax_class', ''),
(485, 53, '_purchase_note', ''),
(486, 53, '_featured', 'yes'),
(487, 53, '_weight', ''),
(488, 53, '_length', ''),
(489, 53, '_width', ''),
(490, 53, '_height', ''),
(491, 53, '_sku', ''),
(492, 53, '_product_attributes', 'a:0:{}'),
(493, 53, '_regular_price', '140000'),
(494, 53, '_sale_price', '120000'),
(495, 53, '_sale_price_dates_from', '1481241600'),
(496, 53, '_sale_price_dates_to', '1483142400'),
(497, 53, '_price', '120000'),
(498, 53, '_sold_individually', ''),
(499, 53, '_manage_stock', 'no'),
(500, 53, '_backorders', 'no'),
(501, 53, '_stock', ''),
(502, 53, '_upsell_ids', 'a:0:{}'),
(503, 53, '_crosssell_ids', 'a:0:{}'),
(504, 53, '_product_version', '2.6.9'),
(505, 53, '_product_image_gallery', ''),
(506, 53, '_wc_rating_count', 'a:0:{}'),
(507, 53, '_wc_average_rating', '0'),
(508, 54, '_edit_last', '1'),
(509, 54, '_edit_lock', '1481301925:1'),
(510, 55, '_wp_attached_file', '2016/12/Beatrice-xmp357b-White-2-485x485.jpg'),
(511, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:485;s:4:"file";s:44:"2016/12/Beatrice-xmp357b-White-2-485x485.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-485x480.jpg";s:5:"width";i:485;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"Beatrice-xmp357b-White-2-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(512, 54, '_visibility', 'visible'),
(513, 54, '_stock_status', 'instock'),
(514, 54, '_thumbnail_id', '55'),
(515, 54, 'total_sales', '0'),
(516, 54, '_downloadable', 'no'),
(517, 54, '_virtual', 'no'),
(518, 54, '_tax_status', 'taxable'),
(519, 54, '_tax_class', ''),
(520, 54, '_purchase_note', ''),
(521, 54, '_featured', 'no'),
(522, 54, '_weight', ''),
(523, 54, '_length', ''),
(524, 54, '_width', ''),
(525, 54, '_height', ''),
(526, 54, '_sku', ''),
(527, 54, '_product_attributes', 'a:0:{}'),
(528, 54, '_regular_price', '125000'),
(529, 54, '_sale_price', ''),
(530, 54, '_sale_price_dates_from', ''),
(531, 54, '_sale_price_dates_to', ''),
(532, 54, '_price', '125000'),
(533, 54, '_sold_individually', ''),
(534, 54, '_manage_stock', 'no'),
(535, 54, '_backorders', 'no'),
(536, 54, '_stock', ''),
(537, 54, '_upsell_ids', 'a:0:{}'),
(538, 54, '_crosssell_ids', 'a:0:{}'),
(539, 54, '_product_version', '2.6.9'),
(540, 54, '_product_image_gallery', ''),
(541, 56, '_edit_last', '1'),
(542, 56, '_edit_lock', '1481302137:1'),
(543, 57, '_wp_attached_file', '2016/12/Celestina1-128x128.jpg'),
(544, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:30:"2016/12/Celestina1-128x128.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(545, 58, '_wp_attached_file', '2016/12/Celestina2-128x128.jpg'),
(546, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:30:"2016/12/Celestina2-128x128.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(547, 59, '_wp_attached_file', '2016/12/Celestina3-128x128.jpg'),
(548, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:30:"2016/12/Celestina3-128x128.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(549, 60, '_wp_attached_file', '2016/12/Celestina-485x485.jpg'),
(550, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:485;s:4:"file";s:29:"2016/12/Celestina-485x485.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Celestina-485x485-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"Celestina-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"Celestina-485x485-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:29:"Celestina-485x485-485x480.jpg";s:5:"width";i:485;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:29:"Celestina-485x485-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"Celestina-485x485-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"Celestina-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(551, 61, '_wp_attached_file', '2016/12/Celestina-485x485-1.jpg'),
(552, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:485;s:4:"file";s:31:"2016/12/Celestina-485x485-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Celestina-485x485-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"Celestina-485x485-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"Celestina-485x485-1-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:31:"Celestina-485x485-1-485x480.jpg";s:5:"width";i:485;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:31:"Celestina-485x485-1-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"Celestina-485x485-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"Celestina-485x485-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(553, 56, '_visibility', 'visible'),
(554, 56, '_stock_status', 'instock'),
(555, 56, '_thumbnail_id', '60'),
(556, 56, 'total_sales', '0'),
(557, 56, '_downloadable', 'no'),
(558, 56, '_virtual', 'no'),
(559, 56, '_tax_status', 'taxable'),
(560, 56, '_tax_class', ''),
(561, 56, '_purchase_note', ''),
(562, 56, '_featured', 'no'),
(563, 56, '_weight', ''),
(564, 56, '_length', ''),
(565, 56, '_width', ''),
(566, 56, '_height', ''),
(567, 56, '_sku', '12414314111'),
(568, 56, '_product_attributes', 'a:0:{}'),
(569, 56, '_regular_price', '115000'),
(570, 56, '_sale_price', ''),
(571, 56, '_sale_price_dates_from', ''),
(572, 56, '_sale_price_dates_to', ''),
(573, 56, '_price', '115000'),
(574, 56, '_sold_individually', ''),
(575, 56, '_manage_stock', 'yes'),
(576, 56, '_backorders', 'no'),
(578, 56, '_upsell_ids', 'a:0:{}'),
(577, 56, '_stock', '20.000000'),
(579, 56, '_crosssell_ids', 'a:0:{}'),
(580, 56, '_product_version', '2.6.9'),
(581, 56, '_product_image_gallery', '59,58,57,60'),
(582, 54, '_wc_rating_count', 'a:0:{}'),
(583, 54, '_wc_average_rating', '0'),
(584, 56, '_wc_rating_count', 'a:0:{}'),
(585, 56, '_wc_average_rating', '0'),
(586, 56, '_wc_review_count', '0'),
(587, 62, '_edit_last', '1'),
(588, 62, '_edit_lock', '1481302223:1'),
(589, 63, '_wp_attached_file', '2016/12/BK00200-256x256.jpg'),
(590, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:27:"2016/12/BK00200-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"BK00200-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"BK00200-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"BK00200-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(591, 62, '_visibility', 'visible'),
(592, 62, '_stock_status', 'instock'),
(593, 62, '_thumbnail_id', '63'),
(594, 62, 'total_sales', '0'),
(595, 62, '_downloadable', 'no'),
(596, 62, '_virtual', 'no'),
(597, 62, '_tax_status', 'taxable'),
(598, 62, '_tax_class', ''),
(599, 62, '_purchase_note', ''),
(600, 62, '_featured', 'no'),
(601, 62, '_weight', ''),
(602, 62, '_length', ''),
(603, 62, '_width', ''),
(604, 62, '_height', ''),
(605, 62, '_sku', ''),
(606, 62, '_product_attributes', 'a:0:{}'),
(607, 62, '_regular_price', '100000'),
(608, 62, '_sale_price', ''),
(609, 62, '_sale_price_dates_from', ''),
(610, 62, '_sale_price_dates_to', ''),
(611, 62, '_price', '100000'),
(612, 62, '_sold_individually', ''),
(613, 62, '_manage_stock', 'no'),
(614, 62, '_backorders', 'no'),
(615, 62, '_stock', ''),
(616, 62, '_upsell_ids', 'a:0:{}'),
(617, 62, '_crosssell_ids', 'a:0:{}'),
(618, 62, '_product_version', '2.6.9'),
(619, 62, '_product_image_gallery', ''),
(620, 62, '_wc_rating_count', 'a:0:{}'),
(621, 62, '_wc_average_rating', '0'),
(622, 64, '_edit_last', '1'),
(623, 64, '_edit_lock', '1481302363:1'),
(624, 64, '_visibility', 'visible'),
(625, 64, '_stock_status', 'instock'),
(626, 64, 'total_sales', '0'),
(627, 64, '_downloadable', 'no'),
(628, 64, '_virtual', 'no'),
(629, 64, '_tax_status', 'taxable'),
(630, 64, '_tax_class', ''),
(631, 64, '_purchase_note', ''),
(632, 64, '_featured', 'no'),
(633, 64, '_weight', ''),
(634, 64, '_length', ''),
(635, 64, '_width', ''),
(636, 64, '_height', ''),
(637, 64, '_sku', ''),
(638, 64, '_product_attributes', 'a:0:{}'),
(639, 64, '_regular_price', '125000'),
(640, 64, '_sale_price', ''),
(641, 64, '_sale_price_dates_from', ''),
(642, 64, '_sale_price_dates_to', ''),
(643, 64, '_price', '125000'),
(644, 64, '_sold_individually', ''),
(645, 64, '_manage_stock', 'no'),
(646, 64, '_backorders', 'no'),
(647, 64, '_stock', ''),
(648, 64, '_upsell_ids', 'a:0:{}'),
(649, 64, '_crosssell_ids', 'a:0:{}'),
(650, 64, '_product_version', '2.6.9'),
(651, 64, '_product_image_gallery', ''),
(652, 64, '_wc_rating_count', 'a:0:{}'),
(653, 64, '_wc_average_rating', '0'),
(654, 65, '_wp_attached_file', '2016/12/BXA008Y701-256x256.jpg'),
(655, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:30:"2016/12/BXA008Y701-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"BXA008Y701-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"BXA008Y701-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"BXA008Y701-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(656, 64, '_thumbnail_id', '65'),
(657, 67, '_wp_attached_file', '2016/12/xko2016-256x256.jpg'),
(658, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:27:"2016/12/xko2016-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"xko2016-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"xko2016-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"xko2016-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(659, 68, '_edit_last', '1'),
(660, 68, '_edit_lock', '1481302511:1'),
(661, 68, '_visibility', 'visible'),
(662, 68, '_stock_status', 'instock'),
(663, 68, '_thumbnail_id', '67'),
(664, 68, 'total_sales', '0'),
(665, 68, '_downloadable', 'no'),
(666, 68, '_virtual', 'no'),
(667, 68, '_tax_status', 'taxable'),
(668, 68, '_tax_class', ''),
(669, 68, '_purchase_note', ''),
(670, 68, '_featured', 'no'),
(671, 68, '_weight', ''),
(672, 68, '_length', ''),
(673, 68, '_width', ''),
(674, 68, '_height', ''),
(675, 68, '_sku', ''),
(676, 68, '_product_attributes', 'a:0:{}'),
(677, 68, '_regular_price', '200000'),
(678, 68, '_sale_price', ''),
(679, 68, '_sale_price_dates_from', ''),
(680, 68, '_sale_price_dates_to', ''),
(681, 68, '_price', '200000'),
(682, 68, '_sold_individually', ''),
(683, 68, '_manage_stock', 'no'),
(684, 68, '_backorders', 'no'),
(685, 68, '_stock', ''),
(686, 68, '_upsell_ids', 'a:0:{}'),
(687, 68, '_crosssell_ids', 'a:0:{}'),
(688, 68, '_product_version', '2.6.9'),
(689, 68, '_product_image_gallery', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(690, 69, '_edit_last', '1'),
(691, 69, '_edit_lock', '1481302682:1'),
(692, 70, '_wp_attached_file', '2016/12/xko0004bsa-256x256.jpg'),
(693, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:30:"2016/12/xko0004bsa-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"xko0004bsa-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"xko0004bsa-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"xko0004bsa-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(694, 69, '_product_attributes', 'a:1:{s:11:"boja-kamena";a:6:{s:4:"name";s:11:"Boja Kamena";s:5:"value";s:14:"Plava | Crvena";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:0;}}'),
(695, 71, 'attribute_boja-kamena', 'Crvena'),
(696, 71, '_stock_status', 'instock'),
(697, 72, 'attribute_boja-kamena', 'Plava'),
(698, 72, '_stock_status', 'instock'),
(699, 72, '_sku', ''),
(700, 72, '_thumbnail_id', '0'),
(701, 72, '_virtual', 'no'),
(702, 72, '_downloadable', 'no'),
(703, 72, '_weight', ''),
(704, 72, '_length', ''),
(705, 72, '_width', ''),
(706, 72, '_height', ''),
(707, 72, '_manage_stock', 'no'),
(708, 72, '_regular_price', '250000'),
(709, 72, '_sale_price', ''),
(710, 72, '_sale_price_dates_from', ''),
(711, 72, '_sale_price_dates_to', ''),
(712, 72, '_price', '250000'),
(713, 72, '_download_limit', ''),
(714, 72, '_download_expiry', ''),
(715, 72, '_downloadable_files', ''),
(716, 72, '_variation_description', ''),
(717, 71, '_sku', ''),
(718, 71, '_thumbnail_id', '0'),
(719, 71, '_virtual', 'no'),
(720, 71, '_downloadable', 'no'),
(721, 71, '_weight', ''),
(722, 71, '_length', ''),
(723, 71, '_width', ''),
(724, 71, '_height', ''),
(725, 71, '_manage_stock', 'no'),
(726, 71, '_regular_price', '270000'),
(727, 71, '_sale_price', ''),
(728, 71, '_sale_price_dates_from', ''),
(729, 71, '_sale_price_dates_to', ''),
(730, 71, '_price', '270000'),
(731, 71, '_download_limit', ''),
(732, 71, '_download_expiry', ''),
(733, 71, '_downloadable_files', ''),
(734, 71, '_variation_description', ''),
(735, 69, '_downloadable', 'no'),
(736, 69, '_virtual', 'no'),
(737, 69, '_min_variation_price', '250000'),
(738, 69, '_max_variation_price', '270000'),
(739, 69, '_min_price_variation_id', '72'),
(740, 69, '_max_price_variation_id', '71'),
(741, 69, '_min_variation_regular_price', '250000'),
(742, 69, '_max_variation_regular_price', '270000'),
(743, 69, '_min_regular_price_variation_id', '72'),
(744, 69, '_max_regular_price_variation_id', '71'),
(745, 69, '_min_variation_sale_price', NULL),
(746, 69, '_max_variation_sale_price', NULL),
(747, 69, '_min_sale_price_variation_id', NULL),
(748, 69, '_max_sale_price_variation_id', NULL),
(775, 69, '_price', '270000'),
(774, 69, '_price', '250000'),
(751, 69, '_default_attributes', 'a:0:{}'),
(752, 69, '_visibility', 'visible'),
(753, 69, '_thumbnail_id', '70'),
(754, 69, 'total_sales', '0'),
(755, 69, '_tax_status', 'taxable'),
(756, 69, '_tax_class', ''),
(757, 69, '_purchase_note', ''),
(758, 69, '_featured', 'no'),
(759, 69, '_weight', ''),
(760, 69, '_length', ''),
(761, 69, '_width', ''),
(762, 69, '_height', ''),
(763, 69, '_sku', ''),
(764, 69, '_regular_price', ''),
(765, 69, '_sale_price', ''),
(766, 69, '_sale_price_dates_from', ''),
(767, 69, '_sale_price_dates_to', ''),
(768, 69, '_sold_individually', ''),
(769, 69, '_manage_stock', 'no'),
(770, 69, '_backorders', 'no'),
(771, 69, '_stock', ''),
(772, 69, '_upsell_ids', 'a:0:{}'),
(773, 69, '_crosssell_ids', 'a:0:{}'),
(776, 69, '_stock_status', 'instock'),
(777, 69, '_product_version', '2.6.9'),
(778, 69, '_product_image_gallery', ''),
(779, 73, '_edit_last', '1'),
(780, 73, '_edit_lock', '1481302728:1'),
(781, 74, '_wp_attached_file', '2016/12/xmv0350b-14000-485x485.jpg'),
(782, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:485;s:4:"file";s:34:"2016/12/xmv0350b-14000-485x485.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-485x480.jpg";s:5:"width";i:485;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"xmv0350b-14000-485x485-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(783, 75, '_wp_attached_file', '2016/12/xso0002-256x256.jpg'),
(784, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:27:"2016/12/xso0002-256x256.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"xso0002-256x256-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"xso0002-256x256-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"xso0002-256x256-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(785, 73, '_visibility', 'visible'),
(786, 73, '_stock_status', 'instock'),
(787, 73, '_thumbnail_id', '74'),
(788, 73, 'total_sales', '0'),
(789, 73, '_downloadable', 'no'),
(790, 73, '_virtual', 'no'),
(791, 73, '_tax_status', 'taxable'),
(792, 73, '_tax_class', ''),
(793, 73, '_purchase_note', ''),
(794, 73, '_featured', 'no'),
(795, 73, '_weight', ''),
(796, 73, '_length', ''),
(797, 73, '_width', ''),
(798, 73, '_height', ''),
(799, 73, '_sku', ''),
(800, 73, '_product_attributes', 'a:0:{}'),
(801, 73, '_regular_price', '120000'),
(802, 73, '_sale_price', ''),
(803, 73, '_sale_price_dates_from', ''),
(804, 73, '_sale_price_dates_to', ''),
(805, 73, '_price', '120000'),
(806, 73, '_sold_individually', ''),
(807, 73, '_manage_stock', 'no'),
(808, 73, '_backorders', 'no'),
(809, 73, '_stock', ''),
(810, 73, '_upsell_ids', 'a:0:{}'),
(811, 73, '_crosssell_ids', 'a:0:{}'),
(812, 73, '_product_version', '2.6.9'),
(813, 73, '_product_image_gallery', ''),
(814, 76, '_edit_last', '1'),
(815, 76, '_edit_lock', '1481306611:1'),
(816, 76, '_visibility', 'visible'),
(817, 76, '_stock_status', 'instock'),
(818, 76, '_thumbnail_id', '75'),
(819, 76, 'total_sales', '0'),
(820, 76, '_downloadable', 'no'),
(821, 76, '_virtual', 'no'),
(822, 76, '_tax_status', 'taxable'),
(823, 76, '_tax_class', ''),
(824, 76, '_purchase_note', ''),
(825, 76, '_featured', 'no'),
(826, 76, '_weight', ''),
(827, 76, '_length', ''),
(828, 76, '_width', ''),
(829, 76, '_height', ''),
(830, 76, '_sku', ''),
(831, 76, '_product_attributes', 'a:0:{}'),
(832, 76, '_regular_price', '125000'),
(833, 76, '_sale_price', ''),
(834, 76, '_sale_price_dates_from', ''),
(835, 76, '_sale_price_dates_to', ''),
(836, 76, '_price', '125000'),
(837, 76, '_sold_individually', ''),
(838, 76, '_manage_stock', 'no'),
(839, 76, '_backorders', 'no'),
(840, 76, '_stock', ''),
(841, 76, '_upsell_ids', 'a:0:{}'),
(842, 76, '_crosssell_ids', 'a:0:{}'),
(843, 76, '_product_version', '2.6.9'),
(844, 76, '_product_image_gallery', ''),
(845, 76, '_wc_rating_count', 'a:0:{}'),
(846, 76, '_wc_average_rating', '0'),
(847, 73, '_wc_rating_count', 'a:0:{}'),
(848, 73, '_wc_average_rating', '0'),
(849, 68, '_wc_rating_count', 'a:0:{}'),
(850, 68, '_wc_average_rating', '0'),
(851, 77, '_edit_last', '1'),
(852, 77, '_edit_lock', '1481303025:1'),
(853, 78, '_wp_attached_file', '2016/12/295315_451214708306134_1891369303_n1-1.jpg'),
(854, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:666;s:4:"file";s:50:"2016/12/295315_451214708306134_1891369303_n1-1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-768x568.jpg";s:5:"width";i:768;s:6:"height";i:568;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-900x480.jpg";s:5:"width";i:900;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-676x500.jpg";s:5:"width";i:676;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:50:"295315_451214708306134_1891369303_n1-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(855, 79, '_wp_attached_file', '2016/12/11212597_1620495608166673_3583474306426967178_o.jpg'),
(856, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:384;s:4:"file";s:59:"2016/12/11212597_1620495608166673_3583474306426967178_o.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"11212597_1620495608166673_3583474306426967178_o-600x384.jpg";s:5:"width";i:600;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(857, 80, '_wp_attached_file', '2016/12/Filigranski_nakit_01-1.jpg'),
(858, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2758;s:6:"height";i:1920;s:4:"file";s:34:"2016/12/Filigranski_nakit_01-1.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-768x535.jpg";s:5:"width";i:768;s:6:"height";i:535;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"Filigranski_nakit_01-1-1024x713.jpg";s:5:"width";i:1024;s:6:"height";i:713;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:35:"Filigranski_nakit_01-1-1600x480.jpg";s:5:"width";i:1600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-718x500.jpg";s:5:"width";i:718;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:34:"Filigranski_nakit_01-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:14:"SLAVICA_PANOVA";s:6:"camera";s:11:"NIKON D7000";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1384615336";s:9:"copyright";s:14:"SLAVICA_PANOVA";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(859, 81, '_wp_attached_file', '2016/12/High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High.jpg'),
(860, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:543;s:6:"height";i:543;s:4:"file";s:116:"2016/12/High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-543x480.jpg";s:5:"width";i:543;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:116:"High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(861, 82, '_wp_attached_file', '2016/12/prsten.jpg'),
(862, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:438;s:6:"height";i:438;s:4:"file";s:18:"2016/12/prsten.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"prsten-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"prsten-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"prsten-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:18:"prsten-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"prsten-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"prsten-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(865, 77, '_thumbnail_id', '81'),
(869, 84, '_edit_lock', '1481303205:1'),
(868, 84, '_edit_last', '1'),
(870, 84, '_thumbnail_id', '80'),
(874, 86, '_edit_lock', '1481306245:1'),
(873, 86, '_edit_last', '1'),
(875, 87, '_wp_attached_file', '2016/12/124020_py2a8717-2_630x0.jpg'),
(876, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:630;s:6:"height";i:420;s:4:"file";s:35:"2016/12/124020_py2a8717-2_630x0.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"124020_py2a8717-2_630x0-600x420.jpg";s:5:"width";i:600;s:6:"height";i:420;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(877, 86, '_thumbnail_id', '87'),
(881, 89, '_edit_lock', '1481303333:1'),
(880, 89, '_edit_last', '1'),
(884, 91, '_wp_attached_file', '2016/12/96830_profimedia0256873459_630x0.jpg'),
(885, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:630;s:6:"height";i:396;s:4:"file";s:44:"2016/12/96830_profimedia0256873459_630x0.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-300x189.jpg";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:44:"96830_profimedia0256873459_630x0-600x396.jpg";s:5:"width";i:600;s:6:"height";i:396;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(886, 89, '_thumbnail_id', '91'),
(890, 92, '_edit_lock', '1481303402:1'),
(889, 92, '_edit_last', '1'),
(891, 92, '_thumbnail_id', '51'),
(895, 94, '_edit_lock', '1481303467:1'),
(894, 94, '_edit_last', '1'),
(896, 95, '_wp_attached_file', '2016/12/36604_slika-03_iff.jpg'),
(897, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:630;s:6:"height";i:784;s:4:"file";s:30:"2016/12/36604_slika-03_iff.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"36604_slika-03_iff-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"36604_slika-03_iff-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"36604_slika-03_iff-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:30:"36604_slika-03_iff-630x480.jpg";s:5:"width";i:630;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:30:"36604_slika-03_iff-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:30:"36604_slika-03_iff-402x500.jpg";s:5:"width";i:402;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"36604_slika-03_iff-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"36604_slika-03_iff-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:30:"36604_slika-03_iff-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(898, 94, '_thumbnail_id', '95'),
(903, 1, '_wp_trash_meta_status', 'publish'),
(904, 1, '_wp_trash_meta_time', '1481303615'),
(905, 1, '_wp_desired_post_slug', 'hello-world'),
(906, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(907, 98, '_edit_lock', '1481305713:1'),
(908, 98, '_edit_last', '1'),
(909, 98, '_wp_page_template', 'default'),
(910, 100, '_menu_item_type', 'post_type'),
(911, 100, '_menu_item_menu_item_parent', '0'),
(912, 100, '_menu_item_object_id', '98'),
(913, 100, '_menu_item_object', 'page'),
(914, 100, '_menu_item_target', ''),
(915, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(916, 100, '_menu_item_xfn', ''),
(917, 100, '_menu_item_url', ''),
(924, 107, '_wp_attached_file', '2016/12/footer_lodyas.jpg'),
(918, 102, '_edit_last', '1'),
(919, 102, '_edit_lock', '1481305523:1'),
(920, 102, 'customcode_type', 'a:1:{s:5:"radio";a:1:{s:4:"type";s:3:"css";}}'),
(921, 102, 'customcode_placement', 'a:1:{s:5:"radio";a:3:{s:11:"extern_file";s:6:"inline";s:9:"placement";s:6:"header";s:8:"priority";s:1:"5";}}'),
(922, 102, 'customcode_code', 'a:1:{s:4:"code";a:1:{s:4:"code";s:962:".mainmenu ul li a {\r\n    color: #FFFFFF;\r\n    font-size: 15px;\r\n}\r\n.onsale {\r\n    background: #333 none repeat scroll 0 0;\r\n    color: #fff;\r\n    padding: 15px;\r\n    position: absolute;\r\n    right: 0;\r\n    z-index: 99;\r\n}\r\n.woocommerce span.onsale {\r\n    min-height: 3.236em;\r\n    min-width: 3.236em;\r\n    padding: .202em;\r\n    font-weight: 700;\r\n    position: absolute;\r\n    text-align: center;\r\n    line-height: 3.236;\r\n    top: -.5em;\r\n    left: -.5em;\r\n    margin: 0;\r\n    border-radius: 100%;\r\n    background-color: #333;\r\n    color: #fff;\r\n    font-size: .857em;\r\n    -webkit-font-smoothing: antialiased;\r\n}\r\n.woocommerce ul.products li.product .price {\r\n    color: #337ab7;\r\n    display: block;\r\n    font-weight: 400;\r\n    margin-bottom: .5em;\r\n    font-size: 15px;\r\n}\r\n.woocommerce ul.products li.product h3 {\r\n    padding: .5em 0;\r\n    margin: 0;\r\n    font-size: 20px;\r\n    font-weight: bold;\r\n}\r\n.footer .single_footer ul li a {\r\n    color: #d04a3d;\r\n}";}}'),
(923, 102, 'customcode_logic', 'a:2:{s:16:"logic-use-or-not";a:1:{s:16:"logic_use_or_not";s:1:"0";}s:8:"logic-or";a:1:{s:12:"0-|-logic-or";a:1:{s:8:"logic-or";a:1:{s:9:"logic-and";a:1:{s:13:"0-|-logic-and";a:1:{s:9:"logic-and";a:3:{s:12:"content_type";s:14:"tax-|-category";s:5:"equal";s:5:"equal";s:10:"content_id";s:0:"";}}}}}}}'),
(925, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:546;s:4:"file";s:25:"2016/12/footer_lodyas.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"footer_lodyas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"footer_lodyas-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"footer_lodyas-768x349.jpg";s:5:"width";i:768;s:6:"height";i:349;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"footer_lodyas-1024x466.jpg";s:5:"width";i:1024;s:6:"height";i:466;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"footer_lodyas-200x200.jpg";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"slider-item";a:4:{s:4:"file";s:26:"footer_lodyas-1200x480.jpg";s:5:"width";i:1200;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post-thumb";a:4:{s:4:"file";s:25:"footer_lodyas-420x350.jpg";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:15:"post-full-image";a:4:{s:4:"file";s:26:"footer_lodyas-1099x500.jpg";s:5:"width";i:1099;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"footer_lodyas-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"footer_lodyas-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"footer_lodyas-600x546.jpg";s:5:"width";i:600;s:6:"height";i:546;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(926, 107, '_wp_attachment_is_custom_background', 'symbol'),
(927, 108, '_wp_attached_file', '2016/12/jewellery_shop_logo.png'),
(928, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:389;s:6:"height";i:346;s:4:"file";s:31:"2016/12/jewellery_shop_logo.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"jewellery_shop_logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"jewellery_shop_logo-300x267.png";s:5:"width";i:300;s:6:"height";i:267;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"jewellery_shop_logo-200x200.png";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"jewellery_shop_logo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"jewellery_shop_logo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(929, 110, '_edit_last', '1'),
(930, 110, '_chch_pop_up_newsletter', 'yes'),
(931, 110, '_Email_data', 'a:3:{s:5:"email";s:0:"";s:13:"email_message";s:99:"Hello,\r\n\r\nA new user has subscribed through: http://localhost/koral.\r\n\r\nSubscriber''s email: {email}";s:6:"fields";a:1:{i:0;a:3:{s:4:"type";s:5:"email";s:2:"id";s:5:"email";s:4:"name";s:5:"Email";}}}'),
(932, 110, '_chch_pop_up_status', 'yes'),
(933, 110, '_chch_pop_up_timer', '0'),
(934, 110, '_chch_pop_up_show_once_per', 'refresh'),
(935, 110, '_chch_pop_up_close_timer', '0'),
(936, 110, '_chch_pop_up_role', 'all'),
(937, 110, '_chch_lpf_template', 'black-5'),
(938, 110, '_black-5_template_data', 'a:4:{s:4:"size";a:1:{s:4:"size";s:13:"chch-free-big";}s:8:"contents";a:8:{s:6:"header";s:102:"<h2 style="text-align: center">&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;</h2>";s:9:"subheader";s:36:"<h3 style="text-align: center"></h3>";s:7:"content";s:0:"";s:15:"privacy_message";s:46:"&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;";s:12:"privacy_link";s:4:"#url";s:18:"privacy_link_label";s:0:"";s:9:"thank_you";s:10:"Thank you!";s:17:"already_subscribe";s:28:"You have already subscribed!";}s:6:"button";a:1:{s:4:"text";s:6:"Submit";}s:10:"background";a:5:{s:5:"color";s:7:"#090909";s:4:"type";s:5:"image";s:5:"image";s:62:"http://localhost/koral/wp-content/uploads/2016/12/Picture3.png";s:7:"pattern";s:0:"";s:6:"repeat";s:6:"repeat";}}'),
(949, 118, '_menu_item_type', 'post_type'),
(946, 116, '_edit_last', '1'),
(947, 116, '_edit_lock', '1481307258:1'),
(939, 110, '_edit_lock', '1481305853:1'),
(940, 111, '_wp_attached_file', '2016/12/Picture3.png'),
(941, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:601;s:6:"height";i:477;s:4:"file";s:20:"2016/12/Picture3.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Picture3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Picture3-300x238.png";s:5:"width";i:300;s:6:"height";i:238;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"Picture3-200x200.png";s:5:"width";i:200;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:10:"post-thumb";a:4:{s:4:"file";s:20:"Picture3-420x350.png";s:5:"width";i:420;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Picture3-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Picture3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"Picture3-600x477.png";s:5:"width";i:600;s:6:"height";i:477;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(950, 118, '_menu_item_menu_item_parent', '0'),
(951, 118, '_menu_item_object_id', '116'),
(952, 118, '_menu_item_object', 'page'),
(953, 118, '_menu_item_target', ''),
(954, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(955, 118, '_menu_item_xfn', ''),
(956, 118, '_menu_item_url', ''),
(957, 116, '_yoast_wpseo_focuskw_text_input', 'koral, zlatara, satovi, nakit, prstenje, ogrlice, narukvice'),
(958, 116, '_yoast_wpseo_focuskw', 'koral, zlatara, satovi, nakit, prstenje, ogrlice, narukvice'),
(959, 116, '_yoast_wpseo_linkdex', '57'),
(960, 116, '_yoast_wpseo_content_score', '30'),
(961, 76, '_yoast_wpseo_primary_product_cat', ''),
(962, 76, '_yoast_wpseo_focuskw_text_input', 'oglica, leptir, roze, zlatara'),
(963, 76, '_yoast_wpseo_focuskw', 'oglica, leptir, roze, zlat'),
(964, 76, '_yoast_wpseo_linkdex', '22'),
(965, 76, '_yoast_wpseo_content_score', '30'),
(966, 119, 'title', 'NextGEN Basic Thumbnails'),
(967, 119, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\thumb_preview.jpg'),
(968, 119, 'default_source', 'galleries'),
(969, 119, 'view_order', '10000'),
(970, 119, 'name', 'photocrati-nextgen_basic_thumbnails'),
(971, 119, 'installed_at_version', '2.1.60'),
(972, 119, 'hidden_from_ui', ''),
(973, 119, 'hidden_from_igw', ''),
(974, 119, '__defaults_set', '1'),
(975, 119, 'filter', 'raw'),
(976, 119, 'entity_types', 'WyJpbWFnZSJd'),
(977, 119, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(978, 119, 'id_field', 'ID'),
(979, 119, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(980, 120, 'title', 'NextGEN Basic Slideshow'),
(981, 120, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\slideshow_preview.jpg'),
(982, 120, 'default_source', 'galleries'),
(983, 120, 'view_order', '10010'),
(984, 120, 'name', 'photocrati-nextgen_basic_slideshow'),
(985, 120, 'installed_at_version', '2.1.60'),
(986, 120, 'hidden_from_ui', ''),
(987, 120, 'hidden_from_igw', ''),
(988, 120, '__defaults_set', '1'),
(989, 120, 'filter', 'raw'),
(990, 120, 'entity_types', 'WyJpbWFnZSJd'),
(991, 120, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(992, 120, 'id_field', 'ID'),
(993, 120, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(994, 121, 'title', 'NextGEN Basic ImageBrowser'),
(995, 121, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_imagebrowser\\static\\preview.jpg'),
(996, 121, 'default_source', 'galleries'),
(997, 121, 'view_order', '10020'),
(998, 121, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(999, 121, 'installed_at_version', '2.1.60'),
(1000, 121, 'hidden_from_ui', ''),
(1001, 121, 'hidden_from_igw', ''),
(1002, 121, '__defaults_set', '1'),
(1003, 121, 'filter', 'raw'),
(1004, 121, 'entity_types', 'WyJpbWFnZSJd'),
(1005, 121, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(1006, 121, 'id_field', 'ID'),
(1007, 121, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1008, 122, 'title', 'NextGEN Basic SinglePic'),
(1009, 122, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_singlepic\\static\\preview.gif'),
(1010, 122, 'default_source', 'galleries'),
(1011, 122, 'view_order', '10060'),
(1012, 122, 'hidden_from_ui', '1'),
(1013, 122, 'hidden_from_igw', '1'),
(1014, 122, 'name', 'photocrati-nextgen_basic_singlepic'),
(1015, 122, 'installed_at_version', '2.1.60'),
(1016, 122, '__defaults_set', '1'),
(1017, 122, 'filter', 'raw'),
(1018, 122, 'entity_types', 'WyJpbWFnZSJd'),
(1019, 122, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(1020, 122, 'id_field', 'ID'),
(1021, 122, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(1022, 123, 'title', 'NextGEN Basic TagCloud'),
(1023, 123, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_tagcloud\\static\\preview.gif'),
(1024, 123, 'default_source', 'tags'),
(1025, 123, 'view_order', '10100'),
(1026, 123, 'name', 'photocrati-nextgen_basic_tagcloud'),
(1027, 123, 'installed_at_version', '2.1.60'),
(1028, 123, 'hidden_from_ui', ''),
(1029, 123, 'hidden_from_igw', ''),
(1030, 123, '__defaults_set', '1'),
(1031, 123, 'filter', 'raw'),
(1032, 123, 'entity_types', 'WyJpbWFnZSJd'),
(1033, 123, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(1034, 123, 'id_field', 'ID'),
(1035, 123, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(1036, 124, 'title', 'NextGEN Basic Compact Album'),
(1037, 124, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\compact_preview.jpg'),
(1038, 124, 'default_source', 'albums'),
(1039, 124, 'view_order', '10200'),
(1040, 124, 'name', 'photocrati-nextgen_basic_compact_album'),
(1041, 124, 'installed_at_version', '2.1.60'),
(1042, 124, 'hidden_from_ui', ''),
(1043, 124, 'hidden_from_igw', ''),
(1044, 124, '__defaults_set', '1'),
(1045, 124, 'filter', 'raw'),
(1046, 124, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(1047, 124, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(1048, 124, 'id_field', 'ID'),
(1049, 124, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1050, 125, 'title', 'NextGEN Basic Extended Album'),
(1051, 125, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\extended_preview.jpg'),
(1052, 125, 'default_source', 'albums'),
(1053, 125, 'view_order', '10210'),
(1054, 125, 'name', 'photocrati-nextgen_basic_extended_album'),
(1055, 125, 'installed_at_version', '2.1.60'),
(1056, 125, 'hidden_from_ui', ''),
(1057, 125, 'hidden_from_igw', ''),
(1058, 125, '__defaults_set', '1'),
(1059, 125, 'filter', 'raw'),
(1060, 125, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(1061, 125, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(1062, 125, 'id_field', 'ID'),
(1063, 125, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6dHJ1ZSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(1064, 127, '__defaults_set', '1'),
(1065, 127, 'filter', 'raw'),
(1066, 127, 'id_field', 'ID'),
(1067, 128, '__defaults_set', '1'),
(1068, 128, 'filter', 'raw'),
(1069, 128, 'id_field', 'ID'),
(1074, 129, 'filter', 'raw'),
(1073, 129, '__defaults_set', '1'),
(1075, 129, 'id_field', 'ID'),
(1076, 130, '__defaults_set', '1'),
(1077, 130, 'filter', 'raw'),
(1078, 130, 'id_field', 'ID'),
(1079, 131, '__defaults_set', '1'),
(1080, 131, 'filter', 'raw'),
(1081, 131, 'id_field', 'ID'),
(1086, 132, 'filter', 'raw'),
(1085, 132, '__defaults_set', '1'),
(1087, 132, 'id_field', 'ID'),
(1088, 133, '__defaults_set', '1'),
(1089, 133, 'filter', 'raw'),
(1090, 133, 'id_field', 'ID'),
(1095, 134, 'filter', 'raw'),
(1094, 134, '__defaults_set', '1'),
(1096, 134, 'id_field', 'ID'),
(1097, 135, '__defaults_set', '1'),
(1098, 135, 'filter', 'raw'),
(1099, 135, 'id_field', 'ID'),
(1104, 136, 'filter', 'raw'),
(1103, 136, '__defaults_set', '1'),
(1105, 136, 'id_field', 'ID'),
(1106, 137, '__defaults_set', '1'),
(1107, 137, 'filter', 'raw'),
(1108, 137, 'id_field', 'ID'),
(1113, 138, 'filter', 'raw'),
(1112, 138, '__defaults_set', '1'),
(1114, 138, 'id_field', 'ID'),
(1115, 140, '_order_key', 'wc_order_584af76074475'),
(1116, 140, '_order_currency', 'RSD'),
(1117, 140, '_prices_include_tax', 'no'),
(1118, 140, '_customer_ip_address', '::1'),
(1119, 140, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36'),
(1120, 140, '_customer_user', '4'),
(1121, 140, '_created_via', 'checkout'),
(1122, 140, '_cart_hash', 'db9defbbdd1a75a1b1e8183eaff08dff'),
(1123, 140, '_order_version', '2.6.9'),
(1124, 140, '_billing_first_name', 'Ljiljna'),
(1125, 140, '_billing_last_name', 'Jovicic'),
(1126, 140, '_billing_company', ''),
(1127, 140, '_billing_email', 'ljiljana@gmail.com'),
(1128, 140, '_billing_phone', '0640882402'),
(1129, 140, '_billing_country', 'RS'),
(1130, 140, '_billing_address_1', 'Tosin Bunar'),
(1131, 140, '_billing_address_2', '132'),
(1132, 140, '_billing_city', 'Beograd'),
(1133, 140, '_billing_state', 'Srbija'),
(1134, 140, '_billing_postcode', '11000'),
(1135, 140, '_shipping_first_name', 'Ljiljna'),
(1136, 140, '_shipping_last_name', 'Jovicic'),
(1137, 140, '_shipping_company', ''),
(1138, 140, '_shipping_country', 'RS'),
(1139, 140, '_shipping_address_1', 'Tosin Bunar'),
(1140, 140, '_shipping_address_2', '132'),
(1141, 140, '_shipping_city', 'Beograd'),
(1142, 140, '_shipping_state', 'Srbija'),
(1143, 140, '_shipping_postcode', '11000'),
(1144, 140, '_payment_method', 'cod'),
(1145, 140, '_payment_method_title', 'Cash on Delivery'),
(1146, 140, '_order_shipping', ''),
(1147, 140, '_cart_discount', '0'),
(1148, 140, '_cart_discount_tax', '0'),
(1149, 140, '_order_tax', '20000'),
(1150, 140, '_order_shipping_tax', '0'),
(1151, 140, '_order_total', '120000.00'),
(1152, 140, '_download_permissions_granted', '1'),
(1153, 140, '_recorded_sales', 'yes'),
(1154, 140, '_order_stock_reduced', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-12-09 15:59:41', '2016-12-09 15:59:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2016-12-09 17:13:35', '2016-12-09 17:13:35', '', 0, 'http://localhost/koral/?p=1', 0, 'post', '', 1),
(2, 1, '2016-12-09 15:59:41', '2016-12-09 15:59:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/koral/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-12-09 15:59:41', '2016-12-09 15:59:41', '', 0, 'http://localhost/koral/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-12-09 15:59:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-09 15:59:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/koral/?p=3', 0, 'post', '', 0),
(117, 1, '2016-12-09 18:03:01', '2016-12-09 18:03:01', 'Kada je beogradski zlatar Andrej dobio sina Kostu, zaradovao se što će jednog dana svoju umetnost i svoju zlatarsku radnju imati kome da preda. Njega je, pak, u tajne zlatarstva, pre Drugog svetskog rata, uveo čuveni Stojan Oreščanin, u ono doba jedan od najznačajnijih zlatara Balkana.\r\n\r\nPrva pitanja Kostina i očevi odgovori su: kako je važnija ljubav prema poslu i poštenje nego zarada, kako se lepota kuje i brusi i kako traži celog čoveka i celu porodicu i ceo život. Prvi Kostini pokušaji, zatim više decenija potpune predanosti i – zanat je ispečen. “Da bi se otac ponosio mnome! Da se čast imena ne izbriše!” U čuvenoj beogradskoj ulici, Bulevaru kralja Aleksandra, u broju 130, smeštena je zlatarska radnja iznad koje već 70 godina blješti firma “Koral”.\r\n\r\nNjen sadašnji vlasnik, zlatar Kosta Andrejević je tradicionalista i čovek modernog doba: u “umetnost Andrejevića” uneo je sopstvenu inventivnost, uneo praćenje svetskih kreativnih trendova i nove tehnologije, a i znanje stečeno u italijanskom gradu Vićenci, evropskom ogranku najprestižnije na svetu škole pri <a href="https://www.gia.edu/">Gemološkom institutu Amerike – GIA</a>.\r\n\r\nTradicija se nastavlja tako da se porodičnim poslom, juvelirstvom, sada bavi i treća generacija, unuci Andreja i Aleksandar, oboje diplomirani GIA stručnjaci za drago kamenje i dijamante.\r\n\r\nMalo bismo znali o svojoj prošlosti da nije potrebe čovekove da kuje nakit i da ga poklanja ženi. Nakitom se bogovima obraćalo, zbog dragog kamenja padali su i poljupci i glave… Nema bajke u kojoj se dobrota i ljubav ne nagrađuju draguljima… Oni koji prolaze pored izloga sa znakom “AK” , u najvećem beogradskom bulevaru, zastaju privučeni svetlucavim vilinskim svetom a da i nisu svesni čarolije.\r\n\r\nautor teksta Lidija Kovač\r\n\r\n-Zlatara Andrejević je u nezavisnom istraživanju za 2014. godine dobila laskavu titulu <a href="http://www.zlatara.net/srp8297/aktuelno/Zlatara-Andrejevic-je-Top-Serbian-Brand.html">TOP SERBIAN BRAND</a>\r\n\r\n-Zlatara Andrejević je dobila takođe vredno priznanje kao jedna od 13 najboljih porodičnih firmi u Srbiji 2014. godine. <a href="http://nakit4yu.com/nagrada-za-zlataru-andrejevic/">VIP BizParter 2014</a> je priznanje koje tradicionalno dodeljuje specijalni žiri a organizatori su Privredna komora Srbije, VIP mobile i agencija Chapter4.\r\n-Zlatara Koralje ušla u <a href="http://www.ekapija.com/website/sr/page/1348756/Predstavljamo-vam-kandidate-za-nagradu-EY-Preduzetnik-godine-u-Srbiji" target="_blank">najuži izbor</a> za <a href="http://www.ey.com/cs/en/home/ey-serbia-eoy" target="_blank">EY Preduzetnik godine 2015</a>.\r\n\r\n[embedyt] http://www.youtube.com/watch?v=yX_ZIvS4Rqw[/embedyt]', 'O nama', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2016-12-09 18:03:01', '2016-12-09 18:03:01', '', 116, 'http://localhost/koral/2016/12/09/116-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-12-09 16:05:12', '2016-12-09 16:05:12', '', 'coral-logo', '', 'inherit', 'open', 'closed', '', 'coral-logo', '', '', '2016-12-09 16:05:54', '2016-12-09 16:05:54', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/coral-logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2016-12-09 16:05:17', '2016-12-09 16:05:17', 'http://localhost/koral/wp-content/uploads/2016/12/cropped-coral-logo.png', 'cropped-coral-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-coral-logo-png', '', '', '2016-12-09 16:05:17', '2016-12-09 16:05:17', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/cropped-coral-logo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2016-12-09 16:07:16', '2016-12-09 16:07:16', '', 'coral-logo', '', 'inherit', 'open', 'closed', '', 'coral-logo-2', '', '', '2016-12-09 16:07:16', '2016-12-09 16:07:16', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/coral-logo-1.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2016-12-09 16:11:31', '2016-12-09 16:11:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-09 16:11:31', '2016-12-09 16:11:31', '', 0, 'http://localhost/koral/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-12-09 16:11:31', '2016-12-09 16:11:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-09 16:11:31', '2016-12-09 16:11:31', '', 8, 'http://localhost/koral/2016/12/09/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-09 16:11:40', '2016-12-09 16:11:40', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-12-09 16:11:40', '2016-12-09 16:11:40', '', 0, 'http://localhost/koral/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-12-09 16:11:40', '2016-12-09 16:11:40', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-09 16:11:40', '2016-12-09 16:11:40', '', 10, 'http://localhost/koral/2016/12/09/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-12-09 16:12:20', '2016-12-09 16:12:20', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2016-12-09 16:12:20', '2016-12-09 16:12:20', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2016-12-09 16:16:12', '2016-12-09 16:16:12', '', 0, 'http://localhost/koral/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2016-12-09 16:14:44', '2016-12-09 16:14:44', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-12-09 16:14:44', '2016-12-09 16:14:44', '', 0, 'http://localhost/koral/shop/', 0, 'page', '', 0),
(15, 1, '2016-12-09 16:14:44', '2016-12-09 16:14:44', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-12-09 16:14:44', '2016-12-09 16:14:44', '', 0, 'http://localhost/koral/cart/', 0, 'page', '', 0),
(16, 1, '2016-12-09 16:14:44', '2016-12-09 16:14:44', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-12-09 16:14:44', '2016-12-09 16:14:44', '', 0, 'http://localhost/koral/checkout/', 0, 'page', '', 0),
(17, 1, '2016-12-09 16:14:44', '2016-12-09 16:14:44', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-12-09 16:14:44', '2016-12-09 16:14:44', '', 0, 'http://localhost/koral/my-account/', 0, 'page', '', 0),
(18, 1, '2016-12-09 16:29:01', '2016-12-09 16:29:01', '<div class="row">\r\n<div class="col-sm-4">\r\n<div class="product_technical__item skrollable skrollable-after" data-bottom-top="transform:translateY(150px);opacity:0;" data--150-bottom="transform:translateY(0px);opacity:1;">\r\n<div class="product_technical__item_text">\r\n<div class="product_technical__item_sup">Kućište je dimenzija 44,3 x 49,7 mm (53,2 mm uklučujući i krunu). Debljina kućišta je 11,3 mm i ono je napravljeno od nerđajućeg čelika sa fino poliranom gornjom maskom. Interejs Sevenfriday V-Series V1/01 sata funkcioniše po principu dodavanja indikator sati od 120° na skali od 0–4, sa rotirajućim centralnim diskom koji pokazuje 0+, 4+, 8+, pored ovoga, displej ima beli i teget dvanaestočasovni dnevni i noćni indikator.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<div class="product_technical__item skrollable skrollable-after" data-bottom-top="transform:translateY(150px);opacity:0;" data--150-bottom="transform:translateY(0px);opacity:1;">\r\n<div class="product_technical__item_text">\r\n<div class="product_technical__item_icon icon--technical-1"></div>\r\n<div class="product_technical__item_sup">Slojevi se sastoje od 12 galvanski izdubljenih ploča na 4 nivoa sa različitim teksturama – srebro grublje teksture, mat rodijum, srebro sa belim odsjajem i srebro sa opalescentnim odsjajem, uz brojčanik od sjajnog metala.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="col-sm-4">\r\n<div class="product_technical__item skrollable skrollable-after" data-bottom-top="transform:translateY(150px);opacity:0;" data--150-bottom="transform:translateY(0px);opacity:1;">\r\n<div class="product_technical__item_text">\r\n<div class="product_technical__item_sup">Mehanizam je automatski Miyota 82S7 sa 40 sati rezerve energije.</div>\r\n<div class="product_technical__item_sup">Kaišić je od crne, meke mat kože sa crnim štepom sa mehanizmom za laku zamenu sa leve strane kućišta. Specijalno čvrsto mineralno staklo i NFC tehnološki čip koji je ugrađen za povezivanje sa Sevenfriday aplikacijom su šlag na torti kada je ovaj sat u pitanju, kao i otpornost na vodu do 3ATM (30 metara).</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'SEVENFRIDAY V-SERIES V1/01', '<div class="row">\r\n<div class="col-sm-4">\r\n<div class="product_technical__item skrollable skrollable-after" data-bottom-top="transform:translateY(150px);opacity:0;" data--150-bottom="transform:translateY(0px);opacity:1;">\r\n<div class="product_technical__item_text">\r\n<div class="product_technical__item_sup">Kućište je dimenzija 44,3 x 49,7 mm (53,2 mm uklučujući i krunu). Debljina kućišta je 11,3 mm i ono je napravljeno od nerđajućeg čelika sa fino poliranom gornjom maskom. Interejs Sevenfriday V-Series V1/01 sata funkcioniše po principu dodavanja indikator sati od 120° na skali od 0–4, sa rotirajućim centralnim diskom koji pokazuje 0+, 4+, 8+, pored ovoga, displej ima beli i teget dvanaestočasovni dnevni i noćni indikator.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="row"></div>', 'publish', 'open', 'closed', '', 'sevenfriday-v-series-v101', '', '', '2016-12-09 16:32:58', '2016-12-09 16:32:58', '', 0, 'http://localhost/koral/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2016-12-09 16:16:12', '2016-12-09 16:16:12', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/?p=19', 7, 'nav_menu_item', '', 0),
(20, 1, '2016-12-09 16:16:12', '2016-12-09 16:16:12', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/?p=20', 6, 'nav_menu_item', '', 0),
(21, 1, '2016-12-09 16:16:12', '2016-12-09 16:16:12', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2016-12-09 16:16:12', '2016-12-09 16:16:12', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/?p=22', 4, 'nav_menu_item', '', 0),
(29, 1, '2016-12-09 16:20:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-12-09 16:20:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/koral/?post_type=product&p=29', 0, 'product', '', 0),
(27, 1, '2016-12-09 16:19:39', '2016-12-09 16:19:39', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-12-09 16:19:39', '2016-12-09 16:19:39', '', 0, 'http://localhost/koral/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2016-12-09 16:19:39', '2016-12-09 16:19:39', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-12-09 16:19:39', '2016-12-09 16:19:39', '', 0, 'http://localhost/koral/?p=28', 3, 'nav_menu_item', '', 0),
(26, 1, '2016-12-09 16:19:39', '2016-12-09 16:19:39', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-12-09 16:19:39', '2016-12-09 16:19:39', '', 0, 'http://localhost/koral/?p=26', 1, 'nav_menu_item', '', 0),
(30, 1, '2016-12-09 16:22:39', '2016-12-09 16:22:39', '', '295315_451214708306134_1891369303_n1', '', 'inherit', 'open', 'closed', '', '295315_451214708306134_1891369303_n1', '', '', '2016-12-09 16:22:39', '2016-12-09 16:22:39', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/295315_451214708306134_1891369303_n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2016-12-09 16:22:41', '2016-12-09 16:22:41', '', 'filigranski_nakit_01', '', 'inherit', 'open', 'closed', '', 'filigranski_nakit_01', '', '', '2016-12-09 16:22:41', '2016-12-09 16:22:41', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/Filigranski_nakit_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2016-12-09 16:22:48', '2016-12-09 16:22:48', '', 'sector-satovi', '', 'inherit', 'open', 'closed', '', 'sector-satovi', '', '', '2016-12-09 16:22:48', '2016-12-09 16:22:48', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/sector-satovi.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-12-09 16:28:07', '2016-12-09 16:28:07', '', 'SEVENFRIDAY V-SERIES V1/01', '<p><br data-mce-bogus="1"></p>', 'trash', 'open', 'closed', '', '__trashed', '', '', '2016-12-09 16:32:39', '2016-12-09 16:32:39', '', 0, 'http://localhost/koral/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2016-12-09 16:25:55', '2016-12-09 16:25:55', '', 'Variation #34 of ', '', 'publish', 'closed', 'closed', '', 'product-18-variation', '', '', '2016-12-09 16:27:20', '2016-12-09 16:27:20', '', 18, 'http://localhost/koral/?post_type=product&p=18', 0, 'product_variation', '', 0),
(35, 1, '2016-12-09 16:25:55', '2016-12-09 16:25:55', '', 'Variation #35 of ', '', 'publish', 'closed', 'closed', '', 'product-18-variation-2', '', '', '2016-12-09 16:27:20', '2016-12-09 16:27:20', '', 18, 'http://localhost/koral/?post_type=product&p=18', 0, 'product_variation', '', 0),
(36, 1, '2016-12-09 16:25:55', '2016-12-09 16:25:55', '', 'Variation #36 of ', '', 'publish', 'closed', 'closed', '', 'product-18-variation-3', '', '', '2016-12-09 16:27:20', '2016-12-09 16:27:20', '', 18, 'http://localhost/koral/?post_type=product&p=18', 0, 'product_variation', '', 0),
(37, 1, '2016-12-09 16:27:30', '2016-12-09 16:27:30', '', 'v1-01-1-256x256', '', 'inherit', 'open', 'closed', '', 'v1-01-1-256x256', '', '', '2016-12-09 16:27:30', '2016-12-09 16:27:30', '', 18, 'http://localhost/koral/wp-content/uploads/2016/12/V1-01-1-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-12-09 16:27:31', '2016-12-09 16:27:31', '', 'v1-01-1-485x485', '', 'inherit', 'open', 'closed', '', 'v1-01-1-485x485', '', '', '2016-12-09 16:27:31', '2016-12-09 16:27:31', '', 18, 'http://localhost/koral/wp-content/uploads/2016/12/V1-01-1-485x485.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-12-09 16:31:15', '2016-12-09 16:31:15', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2016-12-09 16:31:15', '2016-12-09 16:31:15', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-12-09 16:35:43', '2016-12-09 16:35:43', '<p class="entry-title"></p>\r\nAlpina automatski mehanizam AL-525\r\n\r\nFunkcije: sati, minuti, sekunde, datum;\r\n\r\nKućište i narukvica su od nerđajućeg čelika, staklo je otporno na ogrebotine.', 'ALPINA - AL-525B4S6B', 'Alpina automatski mehanizam AL-525\r\n\r\nFunkcije: sati, minuti, sekunde, datum;\r\n\r\nKućište i narukvica su od nerđajućeg čelika, staklo je otporno na ogrebotine.', 'publish', 'open', 'closed', '', 'alpina-al-525b4s6b', '', '', '2016-12-09 16:35:43', '2016-12-09 16:35:43', '', 0, 'http://localhost/koral/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2016-12-09 16:34:47', '2016-12-09 16:34:47', '', 'al-525b4s6b-256x256', '', 'inherit', 'open', 'closed', '', 'al-525b4s6b-256x256', '', '', '2016-12-09 16:34:47', '2016-12-09 16:34:47', '', 40, 'http://localhost/koral/wp-content/uploads/2016/12/AL-525B4S6B-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-12-09 16:36:53', '2016-12-09 16:36:53', 'AL-372 visoko precizni kvarcni hronograf kalibar;\r\n\r\nFunkcije: sati, minuti, sekunde, veliki datum, hronograf;\r\n\r\nKućište je od nerđajućeg čelika sa crnim PDV slojem, staklo je otporno na ogrebotine, kaiš od prave kože.', 'ALPINA - AL-372GR4FBS6', 'Funkcije: sati, minuti, sekunde, veliki datum, hronograf;\r\n\r\nKućište je od nerđajućeg čelika sa crnim PDV slojem, staklo je otporno na ogrebotine, kaiš od prave kože.', 'publish', 'open', 'closed', '', 'alpina-al-372gr4fbs6', '', '', '2016-12-09 16:37:25', '2016-12-09 16:37:25', '', 0, 'http://localhost/koral/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2016-12-09 16:37:15', '2016-12-09 16:37:15', '', 'al-372gr4fbs6-256x256', '', 'inherit', 'open', 'closed', '', 'al-372gr4fbs6-256x256', '', '', '2016-12-09 16:37:15', '2016-12-09 16:37:15', '', 42, 'http://localhost/koral/wp-content/uploads/2016/12/AL-372GR4FBS6-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-12-09 16:39:10', '2016-12-09 16:39:10', '<header class="entry-header">\r\n<h2 class="entry-title"></h2>\r\n</header>\r\n<div class="entry-excerpt">\r\n<div>AL-372 kvarcni hronograf kalibar visoke preciznosti;</div>\r\n<div></div>\r\nFunkcije – sati, minuti, sekundi, veliki datum, hronograf;\r\n\r\nKućište od nerđajućeg čelika, staklo otporno na grebanje i narukvica od nerđajućeg čelika.\r\n\r\n</div>', 'ALPINA – AL-372B4S6B', 'Funkcije – sati, minuti, sekundi, veliki datum, hronograf;\r\n\r\nKućište od nerđajućeg čelika, staklo otporno na grebanje i narukvica od nerđajućeg čelika.', 'publish', 'open', 'closed', '', 'alpina-al-372b4s6b', '', '', '2016-12-09 16:39:10', '2016-12-09 16:39:10', '', 0, 'http://localhost/koral/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2016-12-09 16:38:56', '2016-12-09 16:38:56', '', 'seiko-snxl72k', '', 'inherit', 'open', 'closed', '', 'seiko-snxl72k', '', '', '2016-12-09 16:38:56', '2016-12-09 16:38:56', '', 44, 'http://localhost/koral/wp-content/uploads/2016/12/seiko-snxl72k.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-12-09 16:40:30', '2016-12-09 16:40:30', '<ul>\r\n 	<li>\r\n<p class="entry-title"></p>\r\n<p class="entry-title">Sevenfriday P-Series P2/01 model ima disk koji prikazuje 24 sata, disk za sekunde i otvoreni pogled na mehanizam. Tamno sivi i ledeno sivi interfejs čini 11 elemenata koji su složeni u 5 slojeva i svaki ima drugačiju teksturu –  opalinsku, mat, dijamantsku, satensku i bakarnu. Kazaljke za sate i minute su dizajnirane kao ekstenzija pokretačkog mehanizma. Dimenzije ispoliranog kućišta od nerđajućeg čelika su 47 x 47,6 mm a sat pokreće Miyota 82S7 automatski mehanizam. Staklo je posebno čvrsto i anti-refleksno.</p>\r\n\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<div class="product_technical__item skrollable skrollable-between" data-bottom-top="transform:translateY(150px);opacity:0;" data--150-bottom="transform:translateY(0px);opacity:1;">\r\n<div class="product_technical__item_text">\r\n<div class="product_technical__item_icon icon--technical-7"> Kaiš je odbraon fine kože braon štepom a ovaj model je otporan na vodu do 3ATM (30 metara).</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="row"></div></li>\r\n</ul>', 'SEVENFRIDAY P-SERIES P2/01', '<p class="entry-title">Sevenfriday P-Series P2/01 model ima disk koji prikazuje 24 sata, disk za sekunde i otvoreni pogled na mehanizam. Tamno sivi i ledeno sivi interfejs čini 11 elemenata koji su složeni u 5 slojeva i svaki ima drugačiju teksturu –  opalinsku, mat, dijamantsku, satensku i bakarnu. Kazaljke za sate i minute su dizajnirane kao ekstenzija pokretačkog mehanizma. Dimenzije ispoliranog kućišta od nerđajućeg čelika su 47 x 47,6 mm a sat pokreće Miyota 82S7 automatski mehanizam. Staklo je posebno čvrsto i anti-refleksno.</p>\r\n\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<div class="product_technical__item skrollable skrollable-between" data-bottom-top="transform:translateY(150px);opacity:0;" data--150-bottom="transform:translateY(0px);opacity:1;">\r\n<div class="product_technical__item_text">\r\n<div class="product_technical__item_icon icon--technical-7"> Kaiš je odbraon fine kože braon štepom a ovaj model je otporan na vodu do 3ATM (30 metara).</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'publish', 'open', 'closed', '', 'sevenfriday-p-series-p201', '', '', '2016-12-09 16:40:30', '2016-12-09 16:40:30', '', 0, 'http://localhost/koral/?post_type=product&#038;p=46', 0, 'product', '', 0),
(47, 1, '2016-12-09 16:40:25', '2016-12-09 16:40:25', '', 'p2-01-256x256', '', 'inherit', 'open', 'closed', '', 'p2-01-256x256', '', '', '2016-12-09 16:40:25', '2016-12-09 16:40:25', '', 46, 'http://localhost/koral/wp-content/uploads/2016/12/P2-01-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-12-09 16:41:29', '2016-12-09 16:41:29', '<hr />\r\n\r\n\r\n\r\n<hr />\r\n<p class="entry-title"></p>\r\nAL-525 Alpina automatik mehanizam;\r\n\r\nFunkcije: otporan na vodu do 300 metara dubine, sati, minuti, sekunde, datum, rotirajuća maska za ronjenje;\r\n\r\nKućište od nerđajućeg čelika, sa gumenom narukvicom i staklom otpornim na ogrebotine.', 'ALPINA - AL-725LB4V26', 'AL-525 Alpina automatik mehanizam;\r\n\r\nFunkcije: otporan na vodu do 300 metara dubine, sati, minuti, sekunde, datum, rotirajuća maska za ronjenje;\r\n\r\nKućište od nerđajućeg čelika, sa gumenom narukvicom i staklom otpornim na ogrebotine.', 'publish', 'open', 'closed', '', 'alpina-al-725lb4v26', '', '', '2016-12-09 16:41:29', '2016-12-09 16:41:29', '', 0, 'http://localhost/koral/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2016-12-09 16:41:24', '2016-12-09 16:41:24', '', 'al-725lb4v26-256x256', '', 'inherit', 'open', 'closed', '', 'al-725lb4v26-256x256', '', '', '2016-12-09 16:41:24', '2016-12-09 16:41:24', '', 48, 'http://localhost/koral/wp-content/uploads/2016/12/AL-725LB4V26-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-12-09 16:43:13', '2016-12-09 16:43:13', '<p class="entry-title"></p>\r\nAlpina automatski mehanizam AL-525\r\n\r\nFunkcije: sati, minuti, sekunde, datum;\r\n\r\nKućište je od nerđajućeg čelika, staklo je otporno na ogrebotine a kaiš od prave kože.\r\n<div class="entry-meta"><i class="fa fa-folder"></i><a href="https://www.zlatara.net/kategorija/satovi/" rel="tag">SATOVI</a> <i class="fa fa-certificate"></i><a href="https://www.zlatara.net/brend/alpina/" rel="tag">ALPINA</a></div>', 'ALPINA - AL-525VG4E6', 'Alpina automatski mehanizam AL-525\r\n\r\nFunkcije: sati, minuti, sekunde, datum;\r\n\r\nKućište je od nerđajućeg čelika, staklo je otporno na ogrebotine a kaiš od prave kože.', 'publish', 'open', 'closed', '', 'alpina-al-525vg4e6', '', '', '2016-12-09 16:46:29', '2016-12-09 16:46:29', '', 0, 'http://localhost/koral/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2016-12-09 16:43:01', '2016-12-09 16:43:01', '', 'al-525vg4e6-485x485', '', 'inherit', 'open', 'closed', '', 'al-525vg4e6-485x485', '', '', '2016-12-09 16:43:01', '2016-12-09 16:43:01', '', 50, 'http://localhost/koral/wp-content/uploads/2016/12/AL-525VG4E6-485x485.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-12-09 16:44:09', '2016-12-09 16:44:09', '', 'xkp0220-2-256x256', '', 'inherit', 'open', 'closed', '', 'xkp0220-2-256x256', '', '', '2016-12-09 16:44:09', '2016-12-09 16:44:09', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/xkp0220-2-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-12-09 16:45:48', '2016-12-09 16:45:48', '<p class="entry-title"></p>\r\nKomad koji je dostojan bakine škrinje i koji se nasleđuje generacijama… Bernadetta prsten pleni svojim vintage šarmom i toplom lepotom.', 'BERNADETTA PRSTEN', 'Komad koji je dostojan bakine škrinje i koji se nasleđuje generacijama… Bernadetta prsten pleni svojim vintage šarmom i toplom lepotom.', 'publish', 'open', 'closed', '', 'bernadetta-prsten', '', '', '2016-12-09 16:46:02', '2016-12-09 16:46:02', '', 0, 'http://localhost/koral/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2016-12-09 16:47:45', '2016-12-09 16:47:45', '<p class="entry-title"></p>\r\nPrefinjen kao i samo njegovo ime, a svedenog dizajna, Beatrice prsten može da se kombinuje uz druge komade nakita ali i da bude verenički prsten koji zavetuje na ljubav.', 'BEATRICE PRSTEN', 'Prefinjen kao i samo njegovo ime, a svedenog dizajna, Beatrice prsten može da se kombinuje uz druge komade nakita ali i da bude verenički prsten koji zavetuje na ljubav.', 'publish', 'open', 'closed', '', 'beatrice-prsten', '', '', '2016-12-09 16:47:45', '2016-12-09 16:47:45', '', 0, 'http://localhost/koral/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2016-12-09 16:47:35', '2016-12-09 16:47:35', '', 'beatrice-xmp357b-white-2-485x485', '', 'inherit', 'open', 'closed', '', 'beatrice-xmp357b-white-2-485x485', '', '', '2016-12-09 16:47:35', '2016-12-09 16:47:35', '', 54, 'http://localhost/koral/wp-content/uploads/2016/12/Beatrice-xmp357b-White-2-485x485.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-12-09 16:50:23', '2016-12-09 16:50:23', 'Zaista upečatljiv komad nakita, veoma minimalističkog dizajna. Ono što Celestina narukvici iz Tutti Frutti 11 linije daje njenu lepotu jeste 11 vrsta dragog kamenja koji će zglobu koji ponese ovaj komad dati neprikosnoven pečat stila.', 'CELESTINA NARUKVICA', 'Zaista upečatljiv komad nakita, veoma minimalističkog dizajna. Ono što Celestina narukvici iz Tutti Frutti 11 linije daje njenu lepotu jeste 11 vrsta dragog kamenja koji će zglobu koji ponese ovaj komad dati neprikosnoven pečat stila.', 'publish', 'open', 'closed', '', 'celestina-narukvica', '', '', '2016-12-09 16:50:29', '2016-12-09 16:50:29', '', 0, 'http://localhost/koral/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2016-12-09 16:49:35', '2016-12-09 16:49:35', '', 'celestina1-128x128', '', 'inherit', 'open', 'closed', '', 'celestina1-128x128', '', '', '2016-12-09 16:49:35', '2016-12-09 16:49:35', '', 56, 'http://localhost/koral/wp-content/uploads/2016/12/Celestina1-128x128.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-12-09 16:49:36', '2016-12-09 16:49:36', '', 'celestina2-128x128', '', 'inherit', 'open', 'closed', '', 'celestina2-128x128', '', '', '2016-12-09 16:49:36', '2016-12-09 16:49:36', '', 56, 'http://localhost/koral/wp-content/uploads/2016/12/Celestina2-128x128.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-12-09 16:49:36', '2016-12-09 16:49:36', '', 'celestina3-128x128', '', 'inherit', 'open', 'closed', '', 'celestina3-128x128', '', '', '2016-12-09 16:49:36', '2016-12-09 16:49:36', '', 56, 'http://localhost/koral/wp-content/uploads/2016/12/Celestina3-128x128.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2016-12-09 16:49:37', '2016-12-09 16:49:37', '', 'celestina-485x485', '', 'inherit', 'open', 'closed', '', 'celestina-485x485', '', '', '2016-12-09 16:49:37', '2016-12-09 16:49:37', '', 56, 'http://localhost/koral/wp-content/uploads/2016/12/Celestina-485x485.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2016-12-09 16:50:04', '2016-12-09 16:50:04', '', 'celestina-485x485', '', 'inherit', 'open', 'closed', '', 'celestina-485x485-2', '', '', '2016-12-09 16:50:04', '2016-12-09 16:50:04', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/Celestina-485x485-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2016-12-09 16:52:08', '2016-12-09 16:52:08', '<p class="entry-title"></p>\r\nOva narukvica ima taj upečatljivi šarm Versace kreacija sa vrhunca njegove slave. Luxenter – BK00200 je savršen komad da date završni pečat svom stilu.', 'LUXENTER - BK00200', '', 'publish', 'open', 'closed', '', 'luxenter-bk00200', '', '', '2016-12-09 16:52:08', '2016-12-09 16:52:08', '', 0, 'http://localhost/koral/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2016-12-09 16:52:04', '2016-12-09 16:52:04', '', 'bk00200-256x256', '', 'inherit', 'open', 'closed', '', 'bk00200-256x256', '', '', '2016-12-09 16:52:04', '2016-12-09 16:52:04', '', 62, 'http://localhost/koral/wp-content/uploads/2016/12/BK00200-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-12-09 16:53:14', '2016-12-09 16:53:14', 'Moćna niska crnih bisera za damu koja voli da dominira gde god da se pojavi. Luxenter – BXA008Y701 narukvica garantuje glamurozan efekat.', 'LUXENTER - BXA008Y701', 'Moćna niska crnih bisera za damu koja voli da dominira gde god da se pojavi. Luxenter – BXA008Y701 narukvica garantuje glamurozan efekat.', 'publish', 'open', 'closed', '', 'luxenter-bxa008y701', '', '', '2016-12-09 16:53:46', '2016-12-09 16:53:46', '', 0, 'http://localhost/koral/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2016-12-09 16:53:42', '2016-12-09 16:53:42', '', 'bxa008y701-256x256', '', 'inherit', 'open', 'closed', '', 'bxa008y701-256x256', '', '', '2016-12-09 16:53:42', '2016-12-09 16:53:42', '', 64, 'http://localhost/koral/wp-content/uploads/2016/12/BXA008Y701-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2016-12-09 16:55:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-12-09 16:55:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/koral/?post_type=product&p=66', 0, 'product', '', 0),
(67, 1, '2016-12-09 16:55:40', '2016-12-09 16:55:40', '', 'xko2016-256x256', '', 'inherit', 'open', 'closed', '', 'xko2016-256x256', '', '', '2016-12-09 16:55:40', '2016-12-09 16:55:40', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/xko2016-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2016-12-09 16:57:15', '2016-12-09 16:57:15', '<p class="entry-title"></p>\r\nPrefinjena u svojoj svedenoj lepoti, Exelsinia ogrlica odiše glamurom. Ovo je idealan komad za sve svečane i elegantne prilike, jer uz ovakvu ogrlicu, drugi nakit skoro da Vam ni neće biti potreban.', 'EXELSINIA OGRLICA', 'Prefinjena u svojoj svedenoj lepoti, Exelsinia ogrlica odiše glamurom. Ovo je idealan komad za sve svečane i elegantne prilike, jer uz ovakvu ogrlicu, drugi nakit skoro da Vam ni neće biti potreban.', 'publish', 'open', 'closed', '', 'exelsinia-ogrlica', '', '', '2016-12-09 16:57:15', '2016-12-09 16:57:15', '', 0, 'http://localhost/koral/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2016-12-09 16:59:53', '0000-00-00 00:00:00', '<p class="entry-title"></p>\r\nIstinski primerak kraljevskog dizajna, raskošna Serafina ogrlica je komad koji se nosi u izuzetnim prilikama i nasleđuje generacijama.', 'SERAFINA OGRLICA', 'Istinski primerak kraljevskog dizajna, raskošna Serafina ogrlica je komad koji se nosi u izuzetnim prilikama i nasleđuje generacijama.', 'draft', 'open', 'closed', '', '', '', '', '2016-12-09 16:59:53', '2016-12-09 16:59:53', '', 0, 'http://localhost/koral/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2016-12-09 16:58:05', '2016-12-09 16:58:05', '', 'xko0004bsa-256x256', '', 'inherit', 'open', 'closed', '', 'xko0004bsa-256x256', '', '', '2016-12-09 16:58:05', '2016-12-09 16:58:05', '', 69, 'http://localhost/koral/wp-content/uploads/2016/12/xko0004bsa-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2016-12-09 16:59:35', '2016-12-09 16:59:35', '', 'Variation #71 of SERAFINA OGRLICA', '', 'publish', 'closed', 'closed', '', 'product-69-variation', '', '', '2016-12-09 16:59:52', '2016-12-09 16:59:52', '', 69, 'http://localhost/koral/?post_type=product&p=69', 0, 'product_variation', '', 0),
(72, 1, '2016-12-09 16:59:35', '2016-12-09 16:59:35', '', 'Variation #72 of SERAFINA OGRLICA', '', 'publish', 'closed', 'closed', '', 'product-69-variation-2', '', '', '2016-12-09 16:59:52', '2016-12-09 16:59:52', '', 69, 'http://localhost/koral/?post_type=product&p=69', 0, 'product_variation', '', 0),
(73, 1, '2016-12-09 17:00:58', '2016-12-09 17:00:58', 'Moćno oko od dragog kamena u centru Brendivina priveska uvek će paziti osobu koja je nosi i budno bdeti nad njom, bilo da je blizu ili daleko. Napomena: istaknuta cena važi za privezak dok se lanac naplaćuje posebno.', 'BRENDIVINA Ogrlica', 'Moćno oko od dragog kamena u centru Brendivina priveska uvek će paziti osobu koja je nosi i budno bdeti nad njom, bilo da je blizu ili daleko. Napomena: istaknuta cena važi za privezak dok se lanac naplaćuje posebno.', 'publish', 'open', 'closed', '', 'brendivina-privezak', '', '', '2016-12-09 17:01:10', '2016-12-09 17:01:10', '', 0, 'http://localhost/koral/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2016-12-09 17:00:50', '2016-12-09 17:00:50', '', 'xmv0350b-14000-485x485', '', 'inherit', 'open', 'closed', '', 'xmv0350b-14000-485x485', '', '', '2016-12-09 17:00:50', '2016-12-09 17:00:50', '', 73, 'http://localhost/koral/wp-content/uploads/2016/12/xmv0350b-14000-485x485.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2016-12-09 17:00:51', '2016-12-09 17:00:51', '', 'xso0002-256x256', '', 'inherit', 'open', 'closed', '', 'xso0002-256x256', '', '', '2016-12-09 17:00:51', '2016-12-09 17:00:51', '', 73, 'http://localhost/koral/wp-content/uploads/2016/12/xso0002-256x256.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2016-12-09 17:01:46', '2016-12-09 17:01:46', 'Ljupka igra dva leptira na Sansia ogrlici prosto mame nasmejane poglede i oduševljenje. Divan poklon devojčicu ili ženu koja voli finiji nakit!', 'SANSIA OGRLICA', 'Ljupka igra dva leptira na Sansia ogrlici prosto mame nasmejane poglede i oduševljenje. Divan poklon devojčicu ili ženu koja voli finiji nakit!', 'publish', 'open', 'closed', '', 'sansia-ogrlica', '', '', '2016-12-09 18:05:51', '2016-12-09 18:05:51', '', 0, 'http://localhost/koral/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2016-12-09 17:05:16', '2016-12-09 17:05:16', '<h1></h1>\r\nNakit krasi ljudsko telo od kako je sveta i veka. Posebna pažnja posvećivala se nakitu koji je krasio važne državnike, kraljeve i kraljice, njihove krune, prstenje i skiptare.\r\nU prošlosti, nakit je bio dostupan samo imućnijim slojevima, ali danas ga svi mogu priuštiti. To znači da prosečna osoba ne mora da izdvoji stotine ili hiljade evra ili dolara kako bi se ukrasila nekim lepim šljaštećim komadom nakita na vratu, ruci ili ušima. U tome može pomoći <b><strong>repromaterijal </strong></b>za izradu nakita.\r\n\r\n<img class="alignnone size-medium wp-image-78" src="http://localhost/koral/wp-content/uploads/2016/12/295315_451214708306134_1891369303_n1-1-300x222.jpg" alt="295315_451214708306134_1891369303_n1" width="300" height="222" />\r\n<h3>Repromaterijal</h3>\r\n<em>Repromaterijal za izradu nakita</em>\r\n\r\nRepromaterijal služi za izradu nakita, svih boja, oblika i dimenzija, kao na primer:\r\n<ul>\r\n 	<li>\r\n<h3>Minđuše</h3>\r\n</li>\r\n</ul>\r\nMinđuše su vrsta nakita koji se kači na uši, koje za tu priliku mogu biti probušene ili neprobušene. Mogu se izraditi ručno u raznim oblicima, veličinama, od raznih repromaterijala i za brojne prilike - počevši od svakodnevnih, preko poluformalnih, pa sve do svečanih i ekstravagantnih.\r\n\r\n<em>Biserne minđuše za svaku priliku</em>\r\n<ul>\r\n 	<li>\r\n<h3>Ogrlice</h3>\r\n</li>\r\n</ul>\r\nOglice služe kao ukras na vratu. Kao što i sam naziv kaže, dobile su ime po tome što se kače oko grla. Mogu se izraditi na različite načine, poput kačenja bisera ili ukrasa na lanac od plemenitih materijala, ili nizanjem perli na različite načine.\r\n\r\n<em>Elizabet Tejlor nosi biser <b><strong>La Peregrina, </strong></b>čija je prethodna vlasnica bila čak i Meri Tjudor, kraljica Škota</em>\r\n\r\n<img class="alignnone size-medium wp-image-80" src="http://localhost/koral/wp-content/uploads/2016/12/Filigranski_nakit_01-1-300x209.jpg" alt="filigranski_nakit_01" width="300" height="209" />\r\n<ul>\r\n 	<li>\r\n<h3>Prstenje</h3>\r\n</li>\r\n</ul>\r\nPrstenje se od pamtiveka koristi kao simbol ljubavi na koju se obavezuje dvoje ljudi. Međutim, prstenje služi i kao najlepši ukras ženske (pa i muške) ruke, te stoga i ne čudi što se proizvodi u toliko velikom broju.\r\n\r\n<em>Prsten napravljen od repromaterijala (kliknite na sliku)</em>\r\n<ul>\r\n 	<li>\r\n<h3>Prstenje za nožne prste i nanogice (narukvice za noge)</h3>\r\n</li>\r\n</ul>\r\nU mnogim kulturama, poput indijske ili mnogih afričkih, nakit se ne nosi samo na ušima, rukama ili prstima, nego i na nogama. U nožni nakit spada prstenje za nožne prste, kao i nanogice (narukvice za stopala), a često se viđa i pedikir sa raznim ukrasima od perli.\r\n\r\n<em>Prstenje za nožne prste i nanoguce</em>\r\n<ul>\r\n 	<li>\r\n<h3>Narukvice</h3>\r\n</li>\r\n</ul>\r\nNarukvice su vrsta nakita koji se nosi oko ručnog zgloba, mada postoje i narukvice koje se nose oko bicepsa. Koriste se kao ukras ili simbol prijateljstva, ljubavi, kao zaštita, i čak u religijske svrhe.\r\n\r\n<em>Šarena narukvica u indijskom stilu sastavljena od bisera i perli</em>\r\n<ul>\r\n 	<li>\r\n<h3>Ukrasi za kosu</h3>\r\n</li>\r\n</ul>\r\nUkrasi za kosu podrazumevaju dekorativne šnale i ukosnice sa perlama. Zanimljivo je to da se čak i na <a href="https://en.wikipedia.org/wiki/Venus_of_Willendorf">Vilendorfskoj Veneri</a>, za koju se smatra da je nastala u periodu između 28,000 i 25,000 god. p.n.e., vide ukrasi u kosi koji liče na ukosnice.\r\n\r\n<em>Ukosnice iz ~600 god. p.n.e.</em>\r\n<ul>\r\n 	<li>\r\n<h3>Obuća</h3>\r\n</li>\r\n</ul>\r\n<h3>Obuća se takođe može ukrasiti perlama i biserima. Postoje posebno stilizovane cipele na štiklu, baletanke ili sandale, koje mnoge žene nose u svečanim prilikama.</h3>\r\n<img class="alignnone size-medium wp-image-81" src="http://localhost/koral/wp-content/uploads/2016/12/High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-300x300.jpg" alt="high-platform-pearl-beaded-ivory-wedding-shoes-14cm-high-heel-bridal-shoes-handmade-genuine-leather-high" width="300" height="300" />\r\n\r\n<em>Cipele na štiklu ukrašene biserima</em>', 'Repromaterijal Za Izradu Nakita', '', 'publish', 'open', 'open', '', 'repromaterijal-za-izradu-nakita', '', '', '2016-12-09 17:05:25', '2016-12-09 17:05:25', '', 0, 'http://localhost/koral/?p=77', 0, 'post', '', 0),
(78, 1, '2016-12-09 17:04:24', '2016-12-09 17:04:24', '', '295315_451214708306134_1891369303_n1', '', 'inherit', 'open', 'closed', '', '295315_451214708306134_1891369303_n1-2', '', '', '2016-12-09 17:04:24', '2016-12-09 17:04:24', '', 77, 'http://localhost/koral/wp-content/uploads/2016/12/295315_451214708306134_1891369303_n1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2016-12-09 17:04:26', '2016-12-09 17:04:26', '', '11212597_1620495608166673_3583474306426967178_o', '', 'inherit', 'open', 'closed', '', '11212597_1620495608166673_3583474306426967178_o', '', '', '2016-12-09 17:04:26', '2016-12-09 17:04:26', '', 77, 'http://localhost/koral/wp-content/uploads/2016/12/11212597_1620495608166673_3583474306426967178_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2016-12-09 17:04:27', '2016-12-09 17:04:27', '', 'filigranski_nakit_01', '', 'inherit', 'open', 'closed', '', 'filigranski_nakit_01-2', '', '', '2016-12-09 17:04:27', '2016-12-09 17:04:27', '', 77, 'http://localhost/koral/wp-content/uploads/2016/12/Filigranski_nakit_01-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2016-12-09 17:04:35', '2016-12-09 17:04:35', '', 'high-platform-pearl-beaded-ivory-wedding-shoes-14cm-high-heel-bridal-shoes-handmade-genuine-leather-high', '', 'inherit', 'open', 'closed', '', 'high-platform-pearl-beaded-ivory-wedding-shoes-14cm-high-heel-bridal-shoes-handmade-genuine-leather-high', '', '', '2016-12-09 17:04:35', '2016-12-09 17:04:35', '', 77, 'http://localhost/koral/wp-content/uploads/2016/12/High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2016-12-09 17:04:36', '2016-12-09 17:04:36', '', 'prsten', '', 'inherit', 'open', 'closed', '', 'prsten', '', '', '2016-12-09 17:04:36', '2016-12-09 17:04:36', '', 77, 'http://localhost/koral/wp-content/uploads/2016/12/prsten.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2016-12-09 17:05:16', '2016-12-09 17:05:16', '<h1></h1>\r\nNakit krasi ljudsko telo od kako je sveta i veka. Posebna pažnja posvećivala se nakitu koji je krasio važne državnike, kraljeve i kraljice, njihove krune, prstenje i skiptare.\r\nU prošlosti, nakit je bio dostupan samo imućnijim slojevima, ali danas ga svi mogu priuštiti. To znači da prosečna osoba ne mora da izdvoji stotine ili hiljade evra ili dolara kako bi se ukrasila nekim lepim šljaštećim komadom nakita na vratu, ruci ili ušima. U tome može pomoći <b><strong>repromaterijal </strong></b>za izradu nakita.\r\n\r\n<img class="alignnone size-medium wp-image-78" src="http://localhost/koral/wp-content/uploads/2016/12/295315_451214708306134_1891369303_n1-1-300x222.jpg" alt="295315_451214708306134_1891369303_n1" width="300" height="222" />\r\n<h3>Repromaterijal</h3>\r\n<em>Repromaterijal za izradu nakita</em>\r\n\r\nRepromaterijal služi za izradu nakita, svih boja, oblika i dimenzija, kao na primer:\r\n<ul>\r\n 	<li>\r\n<h3>Minđuše</h3>\r\n</li>\r\n</ul>\r\nMinđuše su vrsta nakita koji se kači na uši, koje za tu priliku mogu biti probušene ili neprobušene. Mogu se izraditi ručno u raznim oblicima, veličinama, od raznih repromaterijala i za brojne prilike - počevši od svakodnevnih, preko poluformalnih, pa sve do svečanih i ekstravagantnih.\r\n\r\n<em>Biserne minđuše za svaku priliku</em>\r\n<ul>\r\n 	<li>\r\n<h3>Ogrlice</h3>\r\n</li>\r\n</ul>\r\nOglice služe kao ukras na vratu. Kao što i sam naziv kaže, dobile su ime po tome što se kače oko grla. Mogu se izraditi na različite načine, poput kačenja bisera ili ukrasa na lanac od plemenitih materijala, ili nizanjem perli na različite načine.\r\n\r\n<em>Elizabet Tejlor nosi biser <b><strong>La Peregrina, </strong></b>čija je prethodna vlasnica bila čak i Meri Tjudor, kraljica Škota</em>\r\n\r\n<img class="alignnone size-medium wp-image-80" src="http://localhost/koral/wp-content/uploads/2016/12/Filigranski_nakit_01-1-300x209.jpg" alt="filigranski_nakit_01" width="300" height="209" />\r\n<ul>\r\n 	<li>\r\n<h3>Prstenje</h3>\r\n</li>\r\n</ul>\r\nPrstenje se od pamtiveka koristi kao simbol ljubavi na koju se obavezuje dvoje ljudi. Međutim, prstenje služi i kao najlepši ukras ženske (pa i muške) ruke, te stoga i ne čudi što se proizvodi u toliko velikom broju.\r\n\r\n<em>Prsten napravljen od repromaterijala (kliknite na sliku)</em>\r\n<ul>\r\n 	<li>\r\n<h3>Prstenje za nožne prste i nanogice (narukvice za noge)</h3>\r\n</li>\r\n</ul>\r\nU mnogim kulturama, poput indijske ili mnogih afričkih, nakit se ne nosi samo na ušima, rukama ili prstima, nego i na nogama. U nožni nakit spada prstenje za nožne prste, kao i nanogice (narukvice za stopala), a često se viđa i pedikir sa raznim ukrasima od perli.\r\n\r\n<em>Prstenje za nožne prste i nanoguce</em>\r\n<ul>\r\n 	<li>\r\n<h3>Narukvice</h3>\r\n</li>\r\n</ul>\r\nNarukvice su vrsta nakita koji se nosi oko ručnog zgloba, mada postoje i narukvice koje se nose oko bicepsa. Koriste se kao ukras ili simbol prijateljstva, ljubavi, kao zaštita, i čak u religijske svrhe.\r\n\r\n<em>Šarena narukvica u indijskom stilu sastavljena od bisera i perli</em>\r\n<ul>\r\n 	<li>\r\n<h3>Ukrasi za kosu</h3>\r\n</li>\r\n</ul>\r\nUkrasi za kosu podrazumevaju dekorativne šnale i ukosnice sa perlama. Zanimljivo je to da se čak i na <a href="https://en.wikipedia.org/wiki/Venus_of_Willendorf">Vilendorfskoj Veneri</a>, za koju se smatra da je nastala u periodu između 28,000 i 25,000 god. p.n.e., vide ukrasi u kosi koji liče na ukosnice.\r\n\r\n<em>Ukosnice iz ~600 god. p.n.e.</em>\r\n<ul>\r\n 	<li>\r\n<h3>Obuća</h3>\r\n</li>\r\n</ul>\r\n<h3>Obuća se takođe može ukrasiti perlama i biserima. Postoje posebno stilizovane cipele na štiklu, baletanke ili sandale, koje mnoge žene nose u svečanim prilikama.</h3>\r\n<img class="alignnone size-medium wp-image-81" src="http://localhost/koral/wp-content/uploads/2016/12/High-Platform-Pearl-Beaded-Ivory-Wedding-Shoes-14cm-High-Heel-Bridal-Shoes-Handmade-Genuine-Leather-High-300x300.jpg" alt="high-platform-pearl-beaded-ivory-wedding-shoes-14cm-high-heel-bridal-shoes-handmade-genuine-leather-high" width="300" height="300" />\r\n\r\n<em>Cipele na štiklu ukrašene biserima</em>', 'Repromaterijal Za Izradu Nakita', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-12-09 17:05:16', '2016-12-09 17:05:16', '', 77, 'http://localhost/koral/2016/12/09/77-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-12-09 17:08:28', '2016-12-09 17:08:28', 'Česta su poređenja Kejt Midlton i princeze Dajane, kao i dilema koja je lepša, elegantnija i draža. Kada se Kejt pojavila sa Dajaninom tijarom na svečanoj večeri, svi su se pitali baš to, da li Kejt može da nadmaši „englesku ružu“?\r\n\r\n&nbsp;\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128773_tijara-kolaz-profimedia-2_630x0.jpg?ver=1481280331" />\r\n<p class="potpis">Kejt Midlton ili princeza Dajana?</p>\r\n\r\n</div>\r\n&nbsp;\r\n\r\nVojvotkinja od Kembridža se pojavila u Bakingemskoj palati u elegantnoj crvenoj haljini kreatorke Dženi Pakam, sa elegantnom frizurom, svečanom šminkom i dijamantskim nakitom.\r\n\r\n&nbsp;\r\n\r\n<strong>Ipak, svi su pričali samo o jednom detalju - tijari koju je Kejt odabrala!</strong>\r\n\r\n&nbsp;\r\n\r\nU pitanju je tijara poznata kao „Ljubavni čvor Kembridža“ i bila je jedna od favorita <u><a href="http://zena.blic.rs/Moda/44250/Niko-kao-princeza-Dajana-Najbolja-izdanja-nekadasnje-ikone-stila-VIDEO">pokojne princeze Dajane.</a></u>\r\n\r\n&nbsp;\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128775_tijara-profimedia0307936353_630x0.jpg?ver=1481280392" />\r\n<p class="potpis">Kraljevska porodica u punom sjaju</p>\r\n\r\n</div>\r\n&nbsp;\r\n\r\nElegantni komad nakita je bio poklon za venčanje koji je kraljica Elizabeta namenila princezi Dajani 1981. godine. Iako se povezuje sa pokojnom princezom, tijara je zapravo stara preko 100 godina. Kraljica Mari je naručila 1913. ili 1914. godine i delo je Gararda, poznatog juvelira koji je radio za englesku kraljevsku porodicu.\r\n\r\n&nbsp;\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128772_tijara-kolaz-profimedia-1_630x0.jpg?ver=1481280430" />\r\n<p class="potpis">Skupocena tijara je preko 100 godina u kraljevskoj porodici</p>\r\n\r\n</div>\r\n&nbsp;\r\n\r\nOvo nije prvi put da je Kejt nosila tijaru. Prošle godine se pojavila na istom događaju sa tijarom u beloj haljini. Mnogi su smatrali da je <u><a href="http://zena.blic.rs/Moda/31869/Na-udaru-kriticara-Vojvotkinja-Kejt-je-jednolicna-i-nema-ni-priblizno-dobar-stil-kao-princeza-Dajana">pokušala da iskopira izgled princeze Dajane</a></u>.\r\n\r\n&nbsp;\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128774_tijara-profimedia0268620458_630x0.jpg?ver=1481280482" />\r\n<p class="potpis">Očigledno je tijara favorit i lepe Kejt</p>\r\n\r\n</div>', 'Kruna', '', 'publish', 'open', 'open', '', 'kruna', '', '', '2016-12-09 17:08:28', '2016-12-09 17:08:28', '', 0, 'http://localhost/koral/?p=84', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2016-12-09 17:08:28', '2016-12-09 17:08:28', 'Česta su poređenja Kejt Midlton i princeze Dajane, kao i dilema koja je lepša, elegantnija i draža. Kada se Kejt pojavila sa Dajaninom tijarom na svečanoj večeri, svi su se pitali baš to, da li Kejt može da nadmaši „englesku ružu“?\r\n\r\n&nbsp;\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128773_tijara-kolaz-profimedia-2_630x0.jpg?ver=1481280331" />\r\n<p class="potpis">Kejt Midlton ili princeza Dajana?</p>\r\n\r\n</div>\r\n&nbsp;\r\n\r\nVojvotkinja od Kembridža se pojavila u Bakingemskoj palati u elegantnoj crvenoj haljini kreatorke Dženi Pakam, sa elegantnom frizurom, svečanom šminkom i dijamantskim nakitom.\r\n\r\n&nbsp;\r\n\r\n<strong>Ipak, svi su pričali samo o jednom detalju - tijari koju je Kejt odabrala!</strong>\r\n\r\n&nbsp;\r\n\r\nU pitanju je tijara poznata kao „Ljubavni čvor Kembridža“ i bila je jedna od favorita <u><a href="http://zena.blic.rs/Moda/44250/Niko-kao-princeza-Dajana-Najbolja-izdanja-nekadasnje-ikone-stila-VIDEO">pokojne princeze Dajane.</a></u>\r\n\r\n&nbsp;\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128775_tijara-profimedia0307936353_630x0.jpg?ver=1481280392" />\r\n<p class="potpis">Kraljevska porodica u punom sjaju</p>\r\n\r\n</div>\r\n&nbsp;\r\n\r\nElegantni komad nakita je bio poklon za venčanje koji je kraljica Elizabeta namenila princezi Dajani 1981. godine. Iako se povezuje sa pokojnom princezom, tijara je zapravo stara preko 100 godina. Kraljica Mari je naručila 1913. ili 1914. godine i delo je Gararda, poznatog juvelira koji je radio za englesku kraljevsku porodicu.\r\n\r\n&nbsp;\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128772_tijara-kolaz-profimedia-1_630x0.jpg?ver=1481280430" />\r\n<p class="potpis">Skupocena tijara je preko 100 godina u kraljevskoj porodici</p>\r\n\r\n</div>\r\n&nbsp;\r\n\r\nOvo nije prvi put da je Kejt nosila tijaru. Prošle godine se pojavila na istom događaju sa tijarom u beloj haljini. Mnogi su smatrali da je <u><a href="http://zena.blic.rs/Moda/31869/Na-udaru-kriticara-Vojvotkinja-Kejt-je-jednolicna-i-nema-ni-priblizno-dobar-stil-kao-princeza-Dajana">pokušala da iskopira izgled princeze Dajane</a></u>.\r\n\r\n&nbsp;\r\n<div class="imgWrap imgFull"><img src="http://zena.blic.rs/data/images/2016/12/09/11/128774_tijara-profimedia0268620458_630x0.jpg?ver=1481280482" />\r\n<p class="potpis">Očigledno je tijara favorit i lepe Kejt</p>\r\n\r\n</div>', 'Kruna', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2016-12-09 17:08:28', '2016-12-09 17:08:28', '', 84, 'http://localhost/koral/2016/12/09/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-12-09 17:09:38', '2016-12-09 17:09:38', 'Pre nekoliko godine modna kuća „Živanši“ predstavila je mušku kolekciju za jesen/zimu. Manekeni su izlazili iz bekstejdža u odelima na kojima su dominirali motivi orijentalnog ćilima.\r\n\r\n&nbsp;\r\n\r\nSvi su pomno pratili neobično stilizovana muška tela, dok bi verovatno svakom drugom čoveku iz Srbije ličilo da su se momci ogrnuli pirotskim ćilimima. Prošlo je neko vreme i ćilim se opet ušunjao u modni svet. Ovoga puta pirotska verzija podstakla je srpsku modnu dizajnerku Anu Ljubinković da napravi kolekciju za jesen/zimu 2016/17.\r\n<div class="in_banner flash banner_Intext-P1"></div>\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124019_ana-ljubinkovic-2015_630x0.jpg?ver=1476712854" />\r\n\r\nDinamična paleta boja, oblici i ritam elemenata – sve unikatne osobine pirotskog ćilima – probudilo je u Ani ideju koju je kasnije pretočila u reviju. U oktobru ju je <u><strong><a href="http://zena.blic.rs/Moda/36894/Fenomenalna-Ana-Ljubinkovic-Spojila-je-nespojivo-i-odusevila-publiku">prikazala i na „Fashion weeku“ u Londonu.</a></strong></u> Pobrala je sjajne kritike, a o njenim modelima istog meseca pisao je i britanski „Vog“.\r\n\r\n&nbsp;\r\n\r\n<strong>Tema skrivena u cikcak liniji</strong>\r\nObe njene bake bavile su se ručnim radom. Pored njih je još kao dete postala svesna koliko je uzbudljivo posmatrati nastanak džempera od jedne niti ili pretvaranje crteža cveća u predivan vezeni buket.\r\n– Sve vreme u dizajnu primenjujem znanje koje imam. Moj brend je prepoznatljiv po formi, boji i ručno rađenim detaljima - rekla je Ana Ljubinković za septembarski broj magazina Elevate.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/15/124018_37bn5744_630x0.jpg?ver=1476712869" />\r\n\r\nIstražujući materijale na temu pirotskog ćilima, shvatila je da je on velika misterija. I Nikola Tesla imao pirotski ćilim pokraj sebe. Verovao je u njegovu moć. Ani je ovaj deo srpske tradicije zanimljiv zbog kombinacija i veštih odnosa boja, odnosno zbog neverovatne harmonije.\r\n– U formi se ogledaju geometrijske šare sa ćilima, pa tako mi je poslužila cik-cak linija kao osnova za krojne elemente. Nisam se više od toga bavila detaljima jer moda je veoma dinamična i treba ostaviti neke ideje za sledeći put.\r\n\r\n&nbsp;\r\n\r\n<strong>Prošlost je osnova za nove stvari</strong>\r\nOsim pirotskog ćilima, Ani je celokupno srpsko kulturno nasleđe inspirativno. Zapravo, za njen umetnički rad posebno su važni<strong> srednjovekovna umetnost, narodna književnost i zanati.</strong> Stare beograske fasade su joj takođe privlačne, a proučava život i delo Nikole Tesle, verovanja i legende o nošnjama. Sigurna je da su svi ti tragovi prošlosti osnova za nove stvari.\r\n– Ljudima iz inostranstva uvek skrećem pažnju na sve što je autentično sa ovih prostora, bilo da je vezano za istoriju, sport, kulturu ili umetnost. Njima pirotski ćilim deluje poznato jer ga povezuju sa sličnim orijentalnim, ali uvek naglašavam da je pirotski specifičan po načinu tkanja i da ima veoma interesantne autohtone ukrasne elemente.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124020_py2a8717-2_630x0.jpg?ver=1476712963" />\r\n\r\nU stvari, pirotski ćilim je slikovno pismo, a njegove šare su simboli. Njima su se ljudi štitili od negativne energije. Po nekim pisanim izvorima, pirotsko ćilimarstvo staro je pet vekova, a 2002. zvanično je registrovan brend proizvod. Time je postao <strong>jedini narodni i umetnički proizvod sa geografskom oznakom porekla u Srbiji </strong>i pod zaštitom je Uneska.\r\n– U toj radoznalosti, sakupljanju informacija učenju, pojave se elementi koji se na kraju pokažu inspirativnim. Kreativna energija je sila koja upravlja umetnikom i ona stalno traži dopunu, tj. novo znanje koje će je pokrenuti.\r\n\r\n&nbsp;', 'Moda', '', 'publish', 'open', 'open', '', 'moda', '', '', '2016-12-09 17:59:44', '2016-12-09 17:59:44', '', 0, 'http://localhost/koral/?p=86', 0, 'post', '', 0),
(87, 1, '2016-12-09 17:09:34', '2016-12-09 17:09:34', '', '124020_py2a8717-2_630x0', '', 'inherit', 'open', 'closed', '', '124020_py2a8717-2_630x0', '', '', '2016-12-09 17:09:34', '2016-12-09 17:09:34', '', 86, 'http://localhost/koral/wp-content/uploads/2016/12/124020_py2a8717-2_630x0.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2016-12-09 17:09:38', '2016-12-09 17:09:38', 'Pre nekoliko godine modna kuća „Živanši“ predstavila je mušku kolekciju za jesen/zimu. Manekeni su izlazili iz bekstejdža u odelima na kojima su dominirali motivi orijentalnog ćilima.\r\n\r\nSvi su pomno pratili neobično stilizovana muška tela, dok bi verovatno svakom drugom čoveku iz Srbije ličilo da su se momci ogrnuli pirotskim ćilimima. Prošlo je neko vreme i ćilim se opet ušunjao u modni svet. Ovoga puta pirotska verzija podstakla je srpsku modnu dizajnerku Anu Ljubinković da napravi kolekciju za jesen/zimu 2016/17.\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124019_ana-ljubinkovic-2015_630x0.jpg?ver=1476712854" />\r\n\r\nDinamična paleta boja, oblici i ritam elemenata – sve unikatne osobine pirotskog ćilima – probudilo je u Ani ideju koju je kasnije pretočila u reviju. U oktobru ju je <u><strong><a href="http://zena.blic.rs/Moda/36894/Fenomenalna-Ana-Ljubinkovic-Spojila-je-nespojivo-i-odusevila-publiku">prikazala i na „Fashion weeku“ u Londonu.</a></strong></u> Pobrala je sjajne kritike, a o njenim modelima istog meseca pisao je i britanski „Vog“.\r\n\r\n&nbsp;\r\n\r\n<strong>Tema skrivena u cikcak liniji</strong>\r\nObe njene bake bavile su se ručnim radom. Pored njih je još kao dete postala svesna koliko je uzbudljivo posmatrati nastanak džempera od jedne niti ili pretvaranje crteža cveća u predivan vezeni buket.\r\n– Sve vreme u dizajnu primenjujem znanje koje imam. Moj brend je prepoznatljiv po formi, boji i ručno rađenim detaljima - rekla je Ana Ljubinković za septembarski broj magazina Elevate.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/15/124018_37bn5744_630x0.jpg?ver=1476712869" />\r\n\r\nIstražujući materijale na temu pirotskog ćilima, shvatila je da je on velika misterija. I Nikola Tesla imao pirotski ćilim pokraj sebe. Verovao je u njegovu moć. Ani je ovaj deo srpske tradicije zanimljiv zbog kombinacija i veštih odnosa boja, odnosno zbog neverovatne harmonije.\r\n– U formi se ogledaju geometrijske šare sa ćilima, pa tako mi je poslužila cik-cak linija kao osnova za krojne elemente. Nisam se više od toga bavila detaljima jer moda je veoma dinamična i treba ostaviti neke ideje za sledeći put.\r\n\r\n&nbsp;\r\n\r\n<strong>Prošlost je osnova za nove stvari</strong>\r\nOsim pirotskog ćilima, Ani je celokupno srpsko kulturno nasleđe inspirativno. Zapravo, za njen umetnički rad posebno su važni<strong> srednjovekovna umetnost, narodna književnost i zanati.</strong> Stare beograske fasade su joj takođe privlačne, a proučava život i delo Nikole Tesle, verovanja i legende o nošnjama. Sigurna je da su svi ti tragovi prošlosti osnova za nove stvari.\r\n– Ljudima iz inostranstva uvek skrećem pažnju na sve što je autentično sa ovih prostora, bilo da je vezano za istoriju, sport, kulturu ili umetnost. Njima pirotski ćilim deluje poznato jer ga povezuju sa sličnim orijentalnim, ali uvek naglašavam da je pirotski specifičan po načinu tkanja i da ima veoma interesantne autohtone ukrasne elemente.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124020_py2a8717-2_630x0.jpg?ver=1476712963" />\r\n\r\nU stvari, pirotski ćilim je slikovno pismo, a njegove šare su simboli. Njima su se ljudi štitili od negativne energije. Po nekim pisanim izvorima, pirotsko ćilimarstvo staro je pet vekova, a 2002. zvanično je registrovan brend proizvod. Time je postao <strong>jedini narodni i umetnički proizvod sa geografskom oznakom porekla u Srbiji </strong>i pod zaštitom je Uneska.\r\n– U toj radoznalosti, sakupljanju informacija učenju, pojave se elementi koji se na kraju pokažu inspirativnim. Kreativna energija je sila koja upravlja umetnikom i ona stalno traži dopunu, tj. novo znanje koje će je pokrenuti.\r\n\r\n&nbsp;', 'Moda', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-12-09 17:09:38', '2016-12-09 17:09:38', '', 86, 'http://localhost/koral/2016/12/09/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-12-09 17:10:48', '2016-12-09 17:10:48', '<h1></h1>\r\n<div class="sShare fixed"></div>\r\nZnate ono kad kupujete auto, pa vam ga daju na test-vožnju? E, pa sad to isto postoji i sa vereničkim prstenom\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/09/10/13/96830_profimedia0256873459_630x0.jpg?ver=1441883474" />\r\n<div class="in_banner flash banner_Intext-P1"></div>\r\nPa dobro, da... Koja bi žena s radošću do kraja života (ili veridbe) nosila verenički prsten koji joj se ne sviđa?\r\n\r\n&nbsp;\r\n\r\nIzgleda da su u kompaniji "Amoro" računali na to da takvih ima mnogo.\r\n\r\n&nbsp;\r\n\r\nOvi nadasve preduzimljivi ljudi su u prodaju vereničkog prstenja uvrstili opciju "Probaj pre nego  što kupiš" pretvorivši tako kupovinu nakita u onu sličnu kupovini auta.\r\n\r\n&nbsp;\r\n\r\nLepo dobijete prsten na pet dana na probu pre nego što se odlučite da je baš taj prsten pravi. E, sad kako da znate da li je pravi stvarno pravi kada vam za test nošenje u stvari ne daju pravi nego kopiju pravog s nedragim kamenjem i imitacijom dijamanata?\r\n\r\n&nbsp;\r\n\r\nHm. I tako, ako prsten ne zadovolji (valjda ne izazove dovoljno usklika oduševljenja budućih deveruša), vraćate ga i dobijate nazad depozit od 50 $ ili ga - šta - zadržite. Ono, štosa radi.\r\n\r\n&nbsp;\r\n\r\nEto. Sad čekamo neku sličnu opciju za kućne ljubimce. I za verenike.', 'KRAJ ROMANTIKE: Sad možete i verenički prsten da uzmete na probu', '', 'publish', 'open', 'open', '', 'kraj-romantike-sad-mozete-i-verenicki-prsten-da-uzmete-na-probu', '', '', '2016-12-09 17:11:00', '2016-12-09 17:11:00', '', 0, 'http://localhost/koral/?p=89', 0, 'post', '', 0),
(90, 1, '2016-12-09 17:10:48', '2016-12-09 17:10:48', '<h1></h1>\r\n<div class="sShare fixed"></div>\r\nZnate ono kad kupujete auto, pa vam ga daju na test-vožnju? E, pa sad to isto postoji i sa vereničkim prstenom\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/09/10/13/96830_profimedia0256873459_630x0.jpg?ver=1441883474" />\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\nPa dobro, da... Koja bi žena s radošću do kraja života (ili veridbe) nosila verenički prsten koji joj se ne sviđa?\r\n\r\n&nbsp;\r\n\r\nIzgleda da su u kompaniji "Amoro" računali na to da takvih ima mnogo.\r\n\r\n&nbsp;\r\n\r\nOvi nadasve preduzimljivi ljudi su u prodaju vereničkog prstenja uvrstili opciju "Probaj pre nego  što kupiš" pretvorivši tako kupovinu nakita u onu sličnu kupovini auta.\r\n\r\n&nbsp;\r\n\r\nLepo dobijete prsten na pet dana na probu pre nego što se odlučite da je baš taj prsten pravi. E, sad kako da znate da li je pravi stvarno pravi kada vam za test nošenje u stvari ne daju pravi nego kopiju pravog s nedragim kamenjem i imitacijom dijamanata?\r\n\r\n&nbsp;\r\n\r\nHm. I tako, ako prsten ne zadovolji (valjda ne izazove dovoljno usklika oduševljenja budućih deveruša), vraćate ga i dobijate nazad depozit od 50 $ ili ga - šta - zadržite. Ono, štosa radi.\r\n\r\n&nbsp;\r\n\r\nEto. Sad čekamo neku sličnu opciju za kućne ljubimce. I za verenike.', 'KRAJ ROMANTIKE: Sad možete i verenički prsten da uzmete na probu', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-12-09 17:10:48', '2016-12-09 17:10:48', '', 89, 'http://localhost/koral/2016/12/09/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-12-09 17:10:58', '2016-12-09 17:10:58', '', '96830_profimedia0256873459_630x0', '', 'inherit', 'open', 'closed', '', '96830_profimedia0256873459_630x0', '', '', '2016-12-09 17:10:58', '2016-12-09 17:10:58', '', 89, 'http://localhost/koral/wp-content/uploads/2016/12/96830_profimedia0256873459_630x0.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2016-12-09 17:11:47', '2016-12-09 17:11:47', '<h1></h1>\r\n<div class="sData fixed"></div>\r\n<div class="sShare fixed"></div>\r\nIce-Watch prkosi svima i svako će vrlo lako pronaći idealan primerak za sebe, a tajna uspeha ovog ručnog sata leži u njegovoj svežini, kvalitetu i veselom dizajnu koji je kroz razne kolekcije sitnim detaljima prilagođen različitim stilovima.\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90793_slika-01_630x0.jpg?ver=1431085946" />\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\n<strong><a href="http://www.nonstopshop.rs/i-18350/ice-watch-sat-big-siwkbs10">Ice Watch Sat Big SI.WK.B.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 9.800 din\r\n\r\nAkcijska Cena: 5.880 din\r\n\r\nUšteda: 3.920 din ( 40 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90796_slika-02_630x0.jpg?ver=1431085962" />\r\n\r\n<strong><a href="http://www.nonstopshop.rs/i-18378/ice-watch-sat-sili-purple-small-siwvss10">Ice Watch Sat Sili Purple Small SI.WV.S.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 8.690 din\r\n\r\nAkcijska Cena: 5.220 din\r\n\r\nUšteda: 3.470 din ( 40 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90795_slika-03_630x0.jpg?ver=1431085988" />\r\n\r\n<strong><a href="http://www.nonstopshop.rs/i-18371/ice-watch-sat-sili-summer-fluo-pink-big-sifpbs10">Ice Watch Sat Sili Summer Fluo Pink Big SI.FP.B.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 9.800 din\r\n\r\nAkcijska Cena: 5.800 din\r\n\r\nUšteda: 4.000 din ( 41 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90797_slika-04_630x0.jpg?ver=1431086002" /><strong><a href="http://www.nonstopshop.rs/i-18985/ice-watch-sat-sili-winter-endive-big-sievbs10">Ice Watch Sat Sili Winter Endive Big SI.EV.B.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 9.800 din\r\n\r\nAkcijska Cena: 5.880 din\r\n\r\nUšteda: 3.920 din ( 40 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90794_slika-05_630x0.jpg?ver=1431086021" />\r\n\r\n<strong><a href="http://www.nonstopshop.rs/i-27288/ice-watch-chwebl11-chrono-rucni-sat">Ice Watch CH.WE.B.L.11 Chrono Ručni sat</a> </strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 18.700 din\r\n\r\nAkcijska Cena: 7.500 din\r\n\r\nUšteda: 11.200 din ( 60 %)\r\n\r\n&nbsp;', 'Najlepši satovi po sniženim cenama!', '', 'publish', 'open', 'open', '', 'najlepsi-satovi-po-snizenim-cenama', '', '', '2016-12-09 17:11:47', '2016-12-09 17:11:47', '', 0, 'http://localhost/koral/?p=92', 0, 'post', '', 0),
(93, 1, '2016-12-09 17:11:47', '2016-12-09 17:11:47', '<h1></h1>\r\n<div class="sData fixed"></div>\r\n<div class="sShare fixed"></div>\r\nIce-Watch prkosi svima i svako će vrlo lako pronaći idealan primerak za sebe, a tajna uspeha ovog ručnog sata leži u njegovoj svežini, kvalitetu i veselom dizajnu koji je kroz razne kolekcije sitnim detaljima prilagođen različitim stilovima.\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90793_slika-01_630x0.jpg?ver=1431085946" />\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\n<strong><a href="http://www.nonstopshop.rs/i-18350/ice-watch-sat-big-siwkbs10">Ice Watch Sat Big SI.WK.B.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 9.800 din\r\n\r\nAkcijska Cena: 5.880 din\r\n\r\nUšteda: 3.920 din ( 40 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90796_slika-02_630x0.jpg?ver=1431085962" />\r\n\r\n<strong><a href="http://www.nonstopshop.rs/i-18378/ice-watch-sat-sili-purple-small-siwvss10">Ice Watch Sat Sili Purple Small SI.WV.S.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 8.690 din\r\n\r\nAkcijska Cena: 5.220 din\r\n\r\nUšteda: 3.470 din ( 40 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90795_slika-03_630x0.jpg?ver=1431085988" />\r\n\r\n<strong><a href="http://www.nonstopshop.rs/i-18371/ice-watch-sat-sili-summer-fluo-pink-big-sifpbs10">Ice Watch Sat Sili Summer Fluo Pink Big SI.FP.B.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 9.800 din\r\n\r\nAkcijska Cena: 5.800 din\r\n\r\nUšteda: 4.000 din ( 41 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90797_slika-04_630x0.jpg?ver=1431086002" /><strong><a href="http://www.nonstopshop.rs/i-18985/ice-watch-sat-sili-winter-endive-big-sievbs10">Ice Watch Sat Sili Winter Endive Big SI.EV.B.S.10</a></strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 9.800 din\r\n\r\nAkcijska Cena: 5.880 din\r\n\r\nUšteda: 3.920 din ( 40 %)\r\n\r\n&nbsp;\r\n\r\n<strong><a href="http://www.nonstopshop.rs/ice-watch">Ice Watch</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2015/05/08/13/90794_slika-05_630x0.jpg?ver=1431086021" />\r\n\r\n<strong><a href="http://www.nonstopshop.rs/i-27288/ice-watch-chwebl11-chrono-rucni-sat">Ice Watch CH.WE.B.L.11 Chrono Ručni sat</a> </strong>\r\n\r\nIce Watch je svetski brend koji dolazi iz Belgije a poznat je po neodoljivim gumenim ručnim satovima.\r\n\r\nRedovna cena: 18.700 din\r\n\r\nAkcijska Cena: 7.500 din\r\n\r\nUšteda: 11.200 din ( 60 %)\r\n\r\n&nbsp;', 'Najlepši satovi po sniženim cenama!', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-12-09 17:11:47', '2016-12-09 17:11:47', '', 92, 'http://localhost/koral/2016/12/09/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-12-09 17:13:03', '2016-12-09 17:13:03', '<h1></h1>\r\n<div class="sData fixed"></div>\r\n<div class="sShare fixed"></div>\r\n<em>Casio Computer Co., Ltd. je multinacionalna kompanija sa sedištem u Japanu. Osnovana je 1946. godine, a već 1957. godine su proizveli i pustili u promet prvi elektronski kalkulator. Bave se proizvodnjom mobilnih telefona, kamera, muzičkih instrumenata i satova. 1974 godine su izbacili prvi elektronski ručni sat "Casiotron" sa višenamenskim funkcijama. Mi koristimo ovu priliku i predstavljamo vam neke od</em><a href="http://www.nonstopshop.rs/casio"><em>Casio </em></a><em> modela ručnih satova iz ponude naše najveće online prodavnice.</em>\r\n\r\n&nbsp;\r\n<div class="in_banner flash banner_Intext-P1"></div>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class="img_left" src="http://zena.blic.rs/data/images/2013-05-17/36602_slika-01_iff.jpg?ver=1368779262" alt="" width="630" height="756" />\r\n\r\n<a href="http://%20http//www.nonstopshop.rs/i-19857/g-shock-rucni-sat-gac-100rg-7a">G-Shock Ručni Sat GAC-100RG-7A</a>\r\n\r\nNovi model G-Shock sata sa mineralnim staklom, hronografima, pokazivač datuma, štopericom sa merenjem prvog i drugog vremena i vodootpornošću do 200 metara. Veličina 55 X 52.7 X 16.6 mm, težina 72.9 g.\r\n\r\n<strong>Cena:</strong> 16.900 din\r\n\r\n&nbsp;\r\n\r\n<img class="img_left" src="http://zena.blic.rs/data/images/2013-05-17/36603_slika-02_iff.jpg?ver=1368779291" alt="" width="630" height="945" />\r\n\r\n<a href="http://%20http//www.nonstopshop.rs/i-19424/casio-muski-rucni-sat-standard-ae-1000w-1b">Casio Muški Ručni Sat Standard AE-1000W-1B </a>\r\n\r\nMuški standardni Casio sat sa setovanjem 5 alarma, narukvicom od tvrde gume, mineralnim staklom, vodootporan do 100m.\r\n\r\n<strong>Cena:</strong> 3.200 din\r\n\r\n<img class="img_left" src="http://zena.blic.rs/data/images/2013-05-17/36604_slika-03_iff.jpg?ver=1368779322" alt="" width="630" height="784" />', 'Casio ručni satovi na NonStopShop', '', 'publish', 'open', 'open', '', 'casio-rucni-satovi-na-nonstopshop', '', '', '2016-12-09 17:13:18', '2016-12-09 17:13:18', '', 0, 'http://localhost/koral/?p=94', 0, 'post', '', 0),
(95, 1, '2016-12-09 17:12:58', '2016-12-09 17:12:58', '', '36604_slika-03_iff', '', 'inherit', 'open', 'closed', '', '36604_slika-03_iff', '', '', '2016-12-09 17:12:58', '2016-12-09 17:12:58', '', 94, 'http://localhost/koral/wp-content/uploads/2016/12/36604_slika-03_iff.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2016-12-09 17:13:03', '2016-12-09 17:13:03', '<h1></h1>\r\n<div class="sData fixed"></div>\r\n<div class="sShare fixed"></div>\r\n<em>Casio Computer Co., Ltd. je multinacionalna kompanija sa sedištem u Japanu. Osnovana je 1946. godine, a već 1957. godine su proizveli i pustili u promet prvi elektronski kalkulator. Bave se proizvodnjom mobilnih telefona, kamera, muzičkih instrumenata i satova. 1974 godine su izbacili prvi elektronski ručni sat "Casiotron" sa višenamenskim funkcijama. Mi koristimo ovu priliku i predstavljamo vam neke od</em><a href="http://www.nonstopshop.rs/casio"><em>Casio </em></a><em> modela ručnih satova iz ponude naše najveće online prodavnice.</em>\r\n\r\n&nbsp;\r\n<div class="in_banner flash  banner_Intext-P1"></div>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class="img_left" src="http://zena.blic.rs/data/images/2013-05-17/36602_slika-01_iff.jpg?ver=1368779262" alt="" width="630" height="756" />\r\n\r\n<a href="http://%20http//www.nonstopshop.rs/i-19857/g-shock-rucni-sat-gac-100rg-7a">G-Shock Ručni Sat GAC-100RG-7A</a>\r\n\r\nNovi model G-Shock sata sa mineralnim staklom, hronografima, pokazivač datuma, štopericom sa merenjem prvog i drugog vremena i vodootpornošću do 200 metara. Veličina 55 X 52.7 X 16.6 mm, težina 72.9 g.\r\n\r\n<strong>Cena:</strong> 16.900 din\r\n\r\n&nbsp;\r\n\r\n<img class="img_left" src="http://zena.blic.rs/data/images/2013-05-17/36603_slika-02_iff.jpg?ver=1368779291" alt="" width="630" height="945" />\r\n\r\n<a href="http://%20http//www.nonstopshop.rs/i-19424/casio-muski-rucni-sat-standard-ae-1000w-1b">Casio Muški Ručni Sat Standard AE-1000W-1B </a>\r\n\r\nMuški standardni Casio sat sa setovanjem 5 alarma, narukvicom od tvrde gume, mineralnim staklom, vodootporan do 100m.\r\n\r\n<strong>Cena:</strong> 3.200 din\r\n\r\n<img class="img_left" src="http://zena.blic.rs/data/images/2013-05-17/36604_slika-03_iff.jpg?ver=1368779322" alt="" width="630" height="784" />', 'Casio ručni satovi na NonStopShop', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2016-12-09 17:13:03', '2016-12-09 17:13:03', '', 94, 'http://localhost/koral/2016/12/09/94-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2016-12-09 17:13:35', '2016-12-09 17:13:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-12-09 17:13:35', '2016-12-09 17:13:35', '', 1, 'http://localhost/koral/2016/12/09/1-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-12-09 17:19:03', '2016-12-09 17:19:03', '[Google_Maps_WD id=2 map=1]\r\n\r\n[livesite-contact title="Contact request"]', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-12-09 17:48:56', '2016-12-09 17:48:56', '', 0, 'http://localhost/koral/contact-us/', 0, 'page', '', 0),
(101, 1, '2016-12-09 17:21:56', '2016-12-09 17:21:56', '[livesite-contact title="Contact request"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-12-09 17:21:56', '2016-12-09 17:21:56', '', 98, 'http://localhost/koral/2016/12/09/98-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-12-09 17:21:11', '2016-12-09 17:21:11', '<strong>We are always interested to hear from anyone who wishes to get in touch with us. Please fill up the contact form below and we''ll get back to you soon. A confirmation email will be sent to you once the message was sent.</strong> [livesite-contact title="Contact request"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-12-09 17:21:11', '2016-12-09 17:21:11', '', 98, 'http://localhost/koral/2016/12/09/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2016-12-09 17:21:38', '2016-12-09 17:21:38', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/2016/12/09/100/', 8, 'nav_menu_item', '', 0),
(102, 1, '2016-12-09 17:26:13', '2016-12-09 17:26:13', '', 'Izmene u Css', '', 'publish', 'closed', 'closed', '', 'izmene-u-css', '', '', '2016-12-09 17:47:40', '2016-12-09 17:47:40', '', 0, 'http://localhost/koral/?post_type=ff-customcode-item&#038;p=102', 0, 'ff-customcode-item', '', 0),
(103, 1, '2016-12-09 17:26:00', '2016-12-09 17:26:00', 'a:224:{s:12:"private_data";N;s:12:"@gray-darker";s:7:"#222222";s:10:"@gray-dark";s:7:"#333333";s:5:"@gray";s:7:"#555555";s:11:"@gray-light";s:7:"#777777";s:13:"@gray-lighter";s:7:"#eeeeee";s:14:"@brand-primary";s:7:"#428bca";s:14:"@brand-success";s:7:"#5cb85c";s:11:"@brand-info";s:7:"#5bc0de";s:14:"@brand-warning";s:7:"#f0ad4e";s:13:"@brand-danger";s:7:"#d9534f";s:8:"@body-bg";s:4:"#fff";s:11:"@text-color";s:7:"#333333";s:11:"@link-color";s:7:"#428bca";s:17:"@link-hover-color";s:7:"#2a6496";s:23:"@component-active-color";s:4:"#fff";s:20:"@component-active-bg";s:7:"#428bca";s:16:"@table-bg-accent";s:7:"#f9f9f9";s:15:"@table-bg-hover";s:7:"#f5f5f5";s:16:"@table-bg-active";s:7:"#f5f5f5";s:19:"@table-border-color";s:4:"#ddd";s:18:"@btn-default-color";s:4:"#333";s:15:"@btn-default-bg";s:4:"#fff";s:19:"@btn-default-border";s:4:"#ccc";s:18:"@btn-primary-color";s:4:"#fff";s:15:"@btn-primary-bg";s:7:"#428bca";s:19:"@btn-primary-border";s:7:"#357ebd";s:18:"@btn-success-color";s:4:"#fff";s:15:"@btn-success-bg";s:7:"#5cb85c";s:19:"@btn-success-border";s:7:"#4cae4c";s:15:"@btn-info-color";s:4:"#fff";s:12:"@btn-info-bg";s:7:"#5bc0de";s:16:"@btn-info-border";s:7:"#46b8da";s:18:"@btn-warning-color";s:4:"#fff";s:15:"@btn-warning-bg";s:7:"#f0ad4e";s:19:"@btn-warning-border";s:7:"#eea236";s:17:"@btn-danger-color";s:4:"#fff";s:14:"@btn-danger-bg";s:7:"#d9534f";s:18:"@btn-danger-border";s:7:"#d43f3a";s:24:"@btn-link-disabled-color";s:7:"#777777";s:9:"@input-bg";s:4:"#fff";s:18:"@input-bg-disabled";s:7:"#eeeeee";s:12:"@input-color";s:7:"#555555";s:13:"@input-border";s:4:"#ccc";s:19:"@input-border-focus";s:7:"#66afe9";s:24:"@input-color-placeholder";s:7:"#777777";s:13:"@legend-color";s:7:"#333333";s:20:"@legend-border-color";s:7:"#e5e5e5";s:21:"@input-group-addon-bg";s:7:"#eeeeee";s:31:"@input-group-addon-border-color";s:4:"#ccc";s:12:"@dropdown-bg";s:4:"#fff";s:25:"@dropdown-fallback-border";s:4:"#ccc";s:20:"@dropdown-divider-bg";s:7:"#e5e5e5";s:20:"@dropdown-link-color";s:7:"#333333";s:23:"@dropdown-link-hover-bg";s:7:"#f5f5f5";s:27:"@dropdown-link-active-color";s:4:"#fff";s:24:"@dropdown-link-active-bg";s:7:"#428bca";s:29:"@dropdown-link-disabled-color";s:7:"#777777";s:22:"@dropdown-header-color";s:7:"#777777";s:57:"@dropdown-caret-color` as of v3.1.0\n@dropdown-caret-color";s:4:"#000";s:21:"@navbar-default-color";s:4:"#777";s:18:"@navbar-default-bg";s:7:"#f8f8f8";s:22:"@navbar-default-border";s:7:"#e7e7e7";s:26:"@navbar-default-link-color";s:4:"#777";s:32:"@navbar-default-link-hover-color";s:4:"#333";s:33:"@navbar-default-link-active-color";s:4:"#555";s:30:"@navbar-default-link-active-bg";s:7:"#e7e7e7";s:35:"@navbar-default-link-disabled-color";s:4:"#ccc";s:27:"@navbar-default-brand-color";s:4:"#777";s:33:"@navbar-default-brand-hover-color";s:7:"#5e5e5e";s:31:"@navbar-default-toggle-hover-bg";s:4:"#ddd";s:34:"@navbar-default-toggle-icon-bar-bg";s:4:"#888";s:35:"@navbar-default-toggle-border-color";s:4:"#ddd";s:21:"@navbar-inverse-color";s:7:"#777777";s:18:"@navbar-inverse-bg";s:4:"#222";s:22:"@navbar-inverse-border";s:7:"#080808";s:26:"@navbar-inverse-link-color";s:7:"#777777";s:32:"@navbar-inverse-link-hover-color";s:4:"#fff";s:33:"@navbar-inverse-link-active-color";s:4:"#fff";s:30:"@navbar-inverse-link-active-bg";s:7:"#080808";s:35:"@navbar-inverse-link-disabled-color";s:4:"#444";s:27:"@navbar-inverse-brand-color";s:7:"#777777";s:33:"@navbar-inverse-brand-hover-color";s:4:"#fff";s:31:"@navbar-inverse-toggle-hover-bg";s:4:"#333";s:34:"@navbar-inverse-toggle-icon-bar-bg";s:4:"#fff";s:35:"@navbar-inverse-toggle-border-color";s:4:"#333";s:18:"@nav-link-hover-bg";s:7:"#eeeeee";s:24:"@nav-disabled-link-color";s:7:"#777777";s:30:"@nav-disabled-link-hover-color";s:7:"#777777";s:26:"@nav-open-link-hover-color";s:4:"#fff";s:22:"@nav-tabs-border-color";s:4:"#ddd";s:33:"@nav-tabs-link-hover-border-color";s:7:"#eeeeee";s:30:"@nav-tabs-active-link-hover-bg";s:4:"#fff";s:33:"@nav-tabs-active-link-hover-color";s:7:"#555555";s:40:"@nav-tabs-active-link-hover-border-color";s:4:"#ddd";s:37:"@nav-tabs-justified-link-border-color";s:4:"#ddd";s:44:"@nav-tabs-justified-active-link-border-color";s:4:"#fff";s:31:"@nav-pills-active-link-hover-bg";s:7:"#428bca";s:34:"@nav-pills-active-link-hover-color";s:4:"#fff";s:17:"@pagination-color";s:7:"#428bca";s:14:"@pagination-bg";s:4:"#fff";s:18:"@pagination-border";s:4:"#ddd";s:23:"@pagination-hover-color";s:7:"#2a6496";s:20:"@pagination-hover-bg";s:7:"#eeeeee";s:24:"@pagination-hover-border";s:4:"#ddd";s:24:"@pagination-active-color";s:4:"#fff";s:21:"@pagination-active-bg";s:7:"#428bca";s:25:"@pagination-active-border";s:7:"#428bca";s:26:"@pagination-disabled-color";s:7:"#777777";s:23:"@pagination-disabled-bg";s:4:"#fff";s:27:"@pagination-disabled-border";s:4:"#ddd";s:9:"@pager-bg";s:4:"#fff";s:13:"@pager-border";s:4:"#ddd";s:15:"@pager-hover-bg";s:7:"#eeeeee";s:16:"@pager-active-bg";s:7:"#428bca";s:19:"@pager-active-color";s:4:"#fff";s:21:"@pager-disabled-color";s:7:"#777777";s:13:"@jumbotron-bg";s:7:"#eeeeee";s:19:"@state-success-text";s:7:"#3c763d";s:17:"@state-success-bg";s:7:"#dff0d8";s:16:"@state-info-text";s:7:"#31708f";s:14:"@state-info-bg";s:7:"#d9edf7";s:19:"@state-warning-text";s:7:"#8a6d3b";s:17:"@state-warning-bg";s:7:"#fcf8e3";s:18:"@state-danger-text";s:7:"#a94442";s:16:"@state-danger-bg";s:7:"#f2dede";s:14:"@tooltip-color";s:4:"#fff";s:11:"@tooltip-bg";s:4:"#000";s:20:"@tooltip-arrow-color";s:4:"#000";s:11:"@popover-bg";s:4:"#fff";s:30:"@popover-fallback-border-color";s:4:"#ccc";s:17:"@popover-title-bg";s:7:"#f7f7f7";s:20:"@popover-arrow-color";s:4:"#fff";s:35:"@popover-arrow-outer-fallback-color";s:7:"#999999";s:17:"@label-default-bg";s:7:"#777777";s:17:"@label-primary-bg";s:7:"#428bca";s:17:"@label-success-bg";s:7:"#5cb85c";s:14:"@label-info-bg";s:7:"#5bc0de";s:17:"@label-warning-bg";s:7:"#f0ad4e";s:16:"@label-danger-bg";s:7:"#d9534f";s:12:"@label-color";s:4:"#fff";s:23:"@label-link-hover-color";s:4:"#fff";s:17:"@modal-content-bg";s:4:"#fff";s:36:"@modal-content-fallback-border-color";s:4:"#999";s:18:"@modal-backdrop-bg";s:4:"#000";s:26:"@modal-header-border-color";s:7:"#e5e5e5";s:26:"@modal-footer-border-color";s:7:"#e5e5e5";s:17:"@alert-success-bg";s:7:"#dff0d8";s:19:"@alert-success-text";s:7:"#3c763d";s:14:"@alert-info-bg";s:7:"#d9edf7";s:16:"@alert-info-text";s:7:"#31708f";s:17:"@alert-warning-bg";s:7:"#fcf8e3";s:19:"@alert-warning-text";s:7:"#8a6d3b";s:16:"@alert-danger-bg";s:7:"#f2dede";s:18:"@alert-danger-text";s:7:"#a94442";s:12:"@progress-bg";s:7:"#f5f5f5";s:19:"@progress-bar-color";s:4:"#fff";s:16:"@progress-bar-bg";s:7:"#428bca";s:24:"@progress-bar-success-bg";s:7:"#5cb85c";s:24:"@progress-bar-warning-bg";s:7:"#f0ad4e";s:23:"@progress-bar-danger-bg";s:7:"#d9534f";s:21:"@progress-bar-info-bg";s:7:"#5bc0de";s:14:"@list-group-bg";s:4:"#fff";s:18:"@list-group-border";s:4:"#ddd";s:20:"@list-group-hover-bg";s:7:"#f5f5f5";s:24:"@list-group-active-color";s:4:"#fff";s:21:"@list-group-active-bg";s:7:"#428bca";s:25:"@list-group-active-border";s:7:"#428bca";s:29:"@list-group-active-text-color";s:7:"#e1edf7";s:26:"@list-group-disabled-color";s:7:"#777777";s:23:"@list-group-disabled-bg";s:7:"#eeeeee";s:31:"@list-group-disabled-text-color";s:7:"#777777";s:22:"@list-group-link-color";s:4:"#555";s:28:"@list-group-link-hover-color";s:4:"#555";s:30:"@list-group-link-heading-color";s:4:"#333";s:9:"@panel-bg";s:4:"#fff";s:19:"@panel-inner-border";s:4:"#ddd";s:16:"@panel-footer-bg";s:7:"#f5f5f5";s:19:"@panel-default-text";s:7:"#333333";s:21:"@panel-default-border";s:4:"#ddd";s:25:"@panel-default-heading-bg";s:7:"#f5f5f5";s:19:"@panel-primary-text";s:4:"#fff";s:21:"@panel-primary-border";s:7:"#428bca";s:25:"@panel-primary-heading-bg";s:7:"#428bca";s:19:"@panel-success-text";s:7:"#3c763d";s:25:"@panel-success-heading-bg";s:7:"#dff0d8";s:16:"@panel-info-text";s:7:"#31708f";s:22:"@panel-info-heading-bg";s:7:"#d9edf7";s:19:"@panel-warning-text";s:7:"#8a6d3b";s:25:"@panel-warning-heading-bg";s:7:"#fcf8e3";s:18:"@panel-danger-text";s:7:"#a94442";s:24:"@panel-danger-heading-bg";s:7:"#f2dede";s:13:"@thumbnail-bg";s:4:"#fff";s:17:"@thumbnail-border";s:4:"#ddd";s:24:"@thumbnail-caption-color";s:7:"#333333";s:8:"@well-bg";s:7:"#f5f5f5";s:12:"@well-border";s:7:"#e3e3e3";s:12:"@badge-color";s:4:"#fff";s:23:"@badge-link-hover-color";s:4:"#fff";s:9:"@badge-bg";s:7:"#777777";s:19:"@badge-active-color";s:7:"#428bca";s:16:"@badge-active-bg";s:4:"#fff";s:14:"@breadcrumb-bg";s:7:"#f5f5f5";s:17:"@breadcrumb-color";s:4:"#ccc";s:24:"@breadcrumb-active-color";s:7:"#777777";s:23:"@carousel-control-color";s:4:"#fff";s:29:"@carousel-indicator-active-bg";s:4:"#fff";s:32:"@carousel-indicator-border-color";s:4:"#fff";s:23:"@carousel-caption-color";s:4:"#fff";s:12:"@close-color";s:4:"#000";s:11:"@code-color";s:7:"#c7254e";s:8:"@code-bg";s:7:"#f9f2f4";s:10:"@kbd-color";s:4:"#fff";s:7:"@kbd-bg";s:4:"#333";s:7:"@pre-bg";s:7:"#f5f5f5";s:10:"@pre-color";s:7:"#333333";s:17:"@pre-border-color";s:4:"#ccc";s:11:"@text-muted";s:7:"#777777";s:18:"@abbr-border-color";s:7:"#777777";s:21:"@headings-small-color";s:7:"#777777";s:23:"@blockquote-small-color";s:7:"#777777";s:24:"@blockquote-border-color";s:7:"#eeeeee";s:25:"@page-header-border-color";s:7:"#eeeeee";s:10:"@hr-border";s:7:"#eeeeee";}', 'color_namespace', '', 'publish', 'closed', 'closed', '', 'color_namespace-1', '', '', '2016-12-09 17:26:00', '2016-12-09 17:26:00', '', 0, 'http://localhost/koral/ff-options/color_namespace-1/', 0, 'ff-options', '', 0),
(104, 1, '2016-12-09 17:26:00', '2016-12-09 17:26:00', 'a:3:{s:33:"color_namespace_default-file-hash";s:32:"294f64e75d86e3241bea7abc9366c24d";s:25:"color_namespace-file-hash";s:32:"5a0ab7bcfb3cd58d6db3f7652e78251d";s:33:"color_namespace_backend-file-hash";s:32:"5a0ab7bcfb3cd58d6db3f7652e78251d";}', 'colors_hashes', '', 'publish', 'closed', 'closed', '', 'colors_hashes-1', '', '', '2016-12-09 17:26:00', '2016-12-09 17:26:00', '', 0, 'http://localhost/koral/ff-options/colors_hashes-1/', 0, 'ff-options', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(105, 1, '2016-12-09 17:26:00', '2016-12-09 17:26:00', 'a:3:{s:10:"color_list";a:2:{s:9:"Bootstrap";a:223:{s:12:"@gray-darker";s:7:"#222222";s:10:"@gray-dark";s:7:"#333333";s:5:"@gray";s:7:"#555555";s:11:"@gray-light";s:7:"#777777";s:13:"@gray-lighter";s:7:"#eeeeee";s:14:"@brand-primary";s:7:"#428bca";s:14:"@brand-success";s:7:"#5cb85c";s:11:"@brand-info";s:7:"#5bc0de";s:14:"@brand-warning";s:7:"#f0ad4e";s:13:"@brand-danger";s:7:"#d9534f";s:8:"@body-bg";s:4:"#fff";s:11:"@text-color";s:7:"#333333";s:11:"@link-color";s:7:"#428bca";s:17:"@link-hover-color";s:7:"#2a6496";s:23:"@component-active-color";s:4:"#fff";s:20:"@component-active-bg";s:7:"#428bca";s:16:"@table-bg-accent";s:7:"#f9f9f9";s:15:"@table-bg-hover";s:7:"#f5f5f5";s:16:"@table-bg-active";s:7:"#f5f5f5";s:19:"@table-border-color";s:4:"#ddd";s:18:"@btn-default-color";s:4:"#333";s:15:"@btn-default-bg";s:4:"#fff";s:19:"@btn-default-border";s:4:"#ccc";s:18:"@btn-primary-color";s:4:"#fff";s:15:"@btn-primary-bg";s:7:"#428bca";s:19:"@btn-primary-border";s:7:"#357ebd";s:18:"@btn-success-color";s:4:"#fff";s:15:"@btn-success-bg";s:7:"#5cb85c";s:19:"@btn-success-border";s:7:"#4cae4c";s:15:"@btn-info-color";s:4:"#fff";s:12:"@btn-info-bg";s:7:"#5bc0de";s:16:"@btn-info-border";s:7:"#46b8da";s:18:"@btn-warning-color";s:4:"#fff";s:15:"@btn-warning-bg";s:7:"#f0ad4e";s:19:"@btn-warning-border";s:7:"#eea236";s:17:"@btn-danger-color";s:4:"#fff";s:14:"@btn-danger-bg";s:7:"#d9534f";s:18:"@btn-danger-border";s:7:"#d43f3a";s:24:"@btn-link-disabled-color";s:7:"#777777";s:9:"@input-bg";s:4:"#fff";s:18:"@input-bg-disabled";s:7:"#eeeeee";s:12:"@input-color";s:7:"#555555";s:13:"@input-border";s:4:"#ccc";s:19:"@input-border-focus";s:7:"#66afe9";s:24:"@input-color-placeholder";s:7:"#777777";s:13:"@legend-color";s:7:"#333333";s:20:"@legend-border-color";s:7:"#e5e5e5";s:21:"@input-group-addon-bg";s:7:"#eeeeee";s:31:"@input-group-addon-border-color";s:4:"#ccc";s:12:"@dropdown-bg";s:4:"#fff";s:25:"@dropdown-fallback-border";s:4:"#ccc";s:20:"@dropdown-divider-bg";s:7:"#e5e5e5";s:20:"@dropdown-link-color";s:7:"#333333";s:23:"@dropdown-link-hover-bg";s:7:"#f5f5f5";s:27:"@dropdown-link-active-color";s:4:"#fff";s:24:"@dropdown-link-active-bg";s:7:"#428bca";s:29:"@dropdown-link-disabled-color";s:7:"#777777";s:22:"@dropdown-header-color";s:7:"#777777";s:57:"@dropdown-caret-color` as of v3.1.0\n@dropdown-caret-color";s:4:"#000";s:21:"@navbar-default-color";s:4:"#777";s:18:"@navbar-default-bg";s:7:"#f8f8f8";s:22:"@navbar-default-border";s:7:"#e7e7e7";s:26:"@navbar-default-link-color";s:4:"#777";s:32:"@navbar-default-link-hover-color";s:4:"#333";s:33:"@navbar-default-link-active-color";s:4:"#555";s:30:"@navbar-default-link-active-bg";s:7:"#e7e7e7";s:35:"@navbar-default-link-disabled-color";s:4:"#ccc";s:27:"@navbar-default-brand-color";s:4:"#777";s:33:"@navbar-default-brand-hover-color";s:7:"#5e5e5e";s:31:"@navbar-default-toggle-hover-bg";s:4:"#ddd";s:34:"@navbar-default-toggle-icon-bar-bg";s:4:"#888";s:35:"@navbar-default-toggle-border-color";s:4:"#ddd";s:21:"@navbar-inverse-color";s:7:"#777777";s:18:"@navbar-inverse-bg";s:4:"#222";s:22:"@navbar-inverse-border";s:7:"#080808";s:26:"@navbar-inverse-link-color";s:7:"#777777";s:32:"@navbar-inverse-link-hover-color";s:4:"#fff";s:33:"@navbar-inverse-link-active-color";s:4:"#fff";s:30:"@navbar-inverse-link-active-bg";s:7:"#080808";s:35:"@navbar-inverse-link-disabled-color";s:4:"#444";s:27:"@navbar-inverse-brand-color";s:7:"#777777";s:33:"@navbar-inverse-brand-hover-color";s:4:"#fff";s:31:"@navbar-inverse-toggle-hover-bg";s:4:"#333";s:34:"@navbar-inverse-toggle-icon-bar-bg";s:4:"#fff";s:35:"@navbar-inverse-toggle-border-color";s:4:"#333";s:18:"@nav-link-hover-bg";s:7:"#eeeeee";s:24:"@nav-disabled-link-color";s:7:"#777777";s:30:"@nav-disabled-link-hover-color";s:7:"#777777";s:26:"@nav-open-link-hover-color";s:4:"#fff";s:22:"@nav-tabs-border-color";s:4:"#ddd";s:33:"@nav-tabs-link-hover-border-color";s:7:"#eeeeee";s:30:"@nav-tabs-active-link-hover-bg";s:4:"#fff";s:33:"@nav-tabs-active-link-hover-color";s:7:"#555555";s:40:"@nav-tabs-active-link-hover-border-color";s:4:"#ddd";s:37:"@nav-tabs-justified-link-border-color";s:4:"#ddd";s:44:"@nav-tabs-justified-active-link-border-color";s:4:"#fff";s:31:"@nav-pills-active-link-hover-bg";s:7:"#428bca";s:34:"@nav-pills-active-link-hover-color";s:4:"#fff";s:17:"@pagination-color";s:7:"#428bca";s:14:"@pagination-bg";s:4:"#fff";s:18:"@pagination-border";s:4:"#ddd";s:23:"@pagination-hover-color";s:7:"#2a6496";s:20:"@pagination-hover-bg";s:7:"#eeeeee";s:24:"@pagination-hover-border";s:4:"#ddd";s:24:"@pagination-active-color";s:4:"#fff";s:21:"@pagination-active-bg";s:7:"#428bca";s:25:"@pagination-active-border";s:7:"#428bca";s:26:"@pagination-disabled-color";s:7:"#777777";s:23:"@pagination-disabled-bg";s:4:"#fff";s:27:"@pagination-disabled-border";s:4:"#ddd";s:9:"@pager-bg";s:4:"#fff";s:13:"@pager-border";s:4:"#ddd";s:15:"@pager-hover-bg";s:7:"#eeeeee";s:16:"@pager-active-bg";s:7:"#428bca";s:19:"@pager-active-color";s:4:"#fff";s:21:"@pager-disabled-color";s:7:"#777777";s:13:"@jumbotron-bg";s:7:"#eeeeee";s:19:"@state-success-text";s:7:"#3c763d";s:17:"@state-success-bg";s:7:"#dff0d8";s:16:"@state-info-text";s:7:"#31708f";s:14:"@state-info-bg";s:7:"#d9edf7";s:19:"@state-warning-text";s:7:"#8a6d3b";s:17:"@state-warning-bg";s:7:"#fcf8e3";s:18:"@state-danger-text";s:7:"#a94442";s:16:"@state-danger-bg";s:7:"#f2dede";s:14:"@tooltip-color";s:4:"#fff";s:11:"@tooltip-bg";s:4:"#000";s:20:"@tooltip-arrow-color";s:4:"#000";s:11:"@popover-bg";s:4:"#fff";s:30:"@popover-fallback-border-color";s:4:"#ccc";s:17:"@popover-title-bg";s:7:"#f7f7f7";s:20:"@popover-arrow-color";s:4:"#fff";s:35:"@popover-arrow-outer-fallback-color";s:7:"#999999";s:17:"@label-default-bg";s:7:"#777777";s:17:"@label-primary-bg";s:7:"#428bca";s:17:"@label-success-bg";s:7:"#5cb85c";s:14:"@label-info-bg";s:7:"#5bc0de";s:17:"@label-warning-bg";s:7:"#f0ad4e";s:16:"@label-danger-bg";s:7:"#d9534f";s:12:"@label-color";s:4:"#fff";s:23:"@label-link-hover-color";s:4:"#fff";s:17:"@modal-content-bg";s:4:"#fff";s:36:"@modal-content-fallback-border-color";s:4:"#999";s:18:"@modal-backdrop-bg";s:4:"#000";s:26:"@modal-header-border-color";s:7:"#e5e5e5";s:26:"@modal-footer-border-color";s:7:"#e5e5e5";s:17:"@alert-success-bg";s:7:"#dff0d8";s:19:"@alert-success-text";s:7:"#3c763d";s:14:"@alert-info-bg";s:7:"#d9edf7";s:16:"@alert-info-text";s:7:"#31708f";s:17:"@alert-warning-bg";s:7:"#fcf8e3";s:19:"@alert-warning-text";s:7:"#8a6d3b";s:16:"@alert-danger-bg";s:7:"#f2dede";s:18:"@alert-danger-text";s:7:"#a94442";s:12:"@progress-bg";s:7:"#f5f5f5";s:19:"@progress-bar-color";s:4:"#fff";s:16:"@progress-bar-bg";s:7:"#428bca";s:24:"@progress-bar-success-bg";s:7:"#5cb85c";s:24:"@progress-bar-warning-bg";s:7:"#f0ad4e";s:23:"@progress-bar-danger-bg";s:7:"#d9534f";s:21:"@progress-bar-info-bg";s:7:"#5bc0de";s:14:"@list-group-bg";s:4:"#fff";s:18:"@list-group-border";s:4:"#ddd";s:20:"@list-group-hover-bg";s:7:"#f5f5f5";s:24:"@list-group-active-color";s:4:"#fff";s:21:"@list-group-active-bg";s:7:"#428bca";s:25:"@list-group-active-border";s:7:"#428bca";s:29:"@list-group-active-text-color";s:7:"#e1edf7";s:26:"@list-group-disabled-color";s:7:"#777777";s:23:"@list-group-disabled-bg";s:7:"#eeeeee";s:31:"@list-group-disabled-text-color";s:7:"#777777";s:22:"@list-group-link-color";s:4:"#555";s:28:"@list-group-link-hover-color";s:4:"#555";s:30:"@list-group-link-heading-color";s:4:"#333";s:9:"@panel-bg";s:4:"#fff";s:19:"@panel-inner-border";s:4:"#ddd";s:16:"@panel-footer-bg";s:7:"#f5f5f5";s:19:"@panel-default-text";s:7:"#333333";s:21:"@panel-default-border";s:4:"#ddd";s:25:"@panel-default-heading-bg";s:7:"#f5f5f5";s:19:"@panel-primary-text";s:4:"#fff";s:21:"@panel-primary-border";s:7:"#428bca";s:25:"@panel-primary-heading-bg";s:7:"#428bca";s:19:"@panel-success-text";s:7:"#3c763d";s:25:"@panel-success-heading-bg";s:7:"#dff0d8";s:16:"@panel-info-text";s:7:"#31708f";s:22:"@panel-info-heading-bg";s:7:"#d9edf7";s:19:"@panel-warning-text";s:7:"#8a6d3b";s:25:"@panel-warning-heading-bg";s:7:"#fcf8e3";s:18:"@panel-danger-text";s:7:"#a94442";s:24:"@panel-danger-heading-bg";s:7:"#f2dede";s:13:"@thumbnail-bg";s:4:"#fff";s:17:"@thumbnail-border";s:4:"#ddd";s:24:"@thumbnail-caption-color";s:7:"#333333";s:8:"@well-bg";s:7:"#f5f5f5";s:12:"@well-border";s:7:"#e3e3e3";s:12:"@badge-color";s:4:"#fff";s:23:"@badge-link-hover-color";s:4:"#fff";s:9:"@badge-bg";s:7:"#777777";s:19:"@badge-active-color";s:7:"#428bca";s:16:"@badge-active-bg";s:4:"#fff";s:14:"@breadcrumb-bg";s:7:"#f5f5f5";s:17:"@breadcrumb-color";s:4:"#ccc";s:24:"@breadcrumb-active-color";s:7:"#777777";s:23:"@carousel-control-color";s:4:"#fff";s:29:"@carousel-indicator-active-bg";s:4:"#fff";s:32:"@carousel-indicator-border-color";s:4:"#fff";s:23:"@carousel-caption-color";s:4:"#fff";s:12:"@close-color";s:4:"#000";s:11:"@code-color";s:7:"#c7254e";s:8:"@code-bg";s:7:"#f9f2f4";s:10:"@kbd-color";s:4:"#fff";s:7:"@kbd-bg";s:4:"#333";s:7:"@pre-bg";s:7:"#f5f5f5";s:10:"@pre-color";s:7:"#333333";s:17:"@pre-border-color";s:4:"#ccc";s:11:"@text-muted";s:7:"#777777";s:18:"@abbr-border-color";s:7:"#777777";s:21:"@headings-small-color";s:7:"#777777";s:23:"@blockquote-small-color";s:7:"#777777";s:24:"@blockquote-border-color";s:7:"#eeeeee";s:25:"@page-header-border-color";s:7:"#eeeeee";s:10:"@hr-border";s:7:"#eeeeee";}s:10:"user_group";a:0:{}}s:16:"banned_variables";a:68:{s:10:"@gray-dark";a:7:{i:0;s:11:"@text-color";i:1;s:13:"@legend-color";i:2;s:20:"@dropdown-link-color";i:3;s:26:"@dropdown-link-hover-color";i:4;s:19:"@panel-default-text";i:5;s:24:"@thumbnail-caption-color";i:6;s:10:"@pre-color";}s:14:"@brand-primary";a:20:{i:0;s:11:"@link-color";i:1;s:17:"@link-hover-color";i:2;s:20:"@component-active-bg";i:3;s:15:"@btn-primary-bg";i:4;s:19:"@btn-primary-border";i:5;s:24:"@dropdown-link-active-bg";i:6;s:31:"@nav-pills-active-link-hover-bg";i:7;s:17:"@pagination-color";i:8;s:23:"@pagination-hover-color";i:9;s:21:"@pagination-active-bg";i:10;s:25:"@pagination-active-border";i:11;s:16:"@pager-active-bg";i:12;s:17:"@label-primary-bg";i:13;s:16:"@progress-bar-bg";i:14;s:21:"@list-group-active-bg";i:15;s:25:"@list-group-active-border";i:16;s:29:"@list-group-active-text-color";i:17;s:21:"@panel-primary-border";i:18;s:25:"@panel-primary-heading-bg";i:19;s:19:"@badge-active-color";}s:11:"@link-color";a:4:{i:0;s:17:"@link-hover-color";i:1;s:17:"@pagination-color";i:2;s:23:"@pagination-hover-color";i:3;s:19:"@badge-active-color";}s:23:"@font-family-sans-serif";a:1:{i:0;s:17:"@font-family-base";}s:15:"@font-size-base";a:15:{i:0;s:16:"@font-size-large";i:1;s:16:"@font-size-small";i:2;s:13:"@font-size-h1";i:3;s:13:"@font-size-h2";i:4;s:13:"@font-size-h3";i:5;s:13:"@font-size-h4";i:6;s:13:"@font-size-h5";i:7;s:13:"@font-size-h6";i:8;s:21:"@line-height-computed";i:9;s:18:"@input-height-base";i:10;s:19:"@input-height-large";i:11;s:19:"@input-height-small";i:12;s:21:"@navbar-margin-bottom";i:13;s:20:"@jumbotron-font-size";i:14;s:21:"@blockquote-font-size";}s:15:"@table-bg-hover";a:1:{i:0;s:16:"@table-bg-active";}s:15:"@btn-primary-bg";a:1:{i:0;s:19:"@btn-primary-border";}s:14:"@brand-success";a:4:{i:0;s:15:"@btn-success-bg";i:1;s:19:"@btn-success-border";i:2;s:17:"@label-success-bg";i:3;s:24:"@progress-bar-success-bg";}s:15:"@btn-success-bg";a:1:{i:0;s:19:"@btn-success-border";}s:11:"@brand-info";a:4:{i:0;s:12:"@btn-info-bg";i:1;s:16:"@btn-info-border";i:2;s:14:"@label-info-bg";i:3;s:21:"@progress-bar-info-bg";}s:12:"@btn-info-bg";a:1:{i:0;s:16:"@btn-info-border";}s:14:"@brand-warning";a:4:{i:0;s:15:"@btn-warning-bg";i:1;s:19:"@btn-warning-border";i:2;s:17:"@label-warning-bg";i:3;s:24:"@progress-bar-warning-bg";}s:15:"@btn-warning-bg";a:1:{i:0;s:19:"@btn-warning-border";}s:13:"@brand-danger";a:4:{i:0;s:14:"@btn-danger-bg";i:1;s:18:"@btn-danger-border";i:2;s:16:"@label-danger-bg";i:3;s:23:"@progress-bar-danger-bg";}s:14:"@btn-danger-bg";a:1:{i:0;s:18:"@btn-danger-border";}s:11:"@gray-light";a:20:{i:0;s:24:"@btn-link-disabled-color";i:1;s:24:"@input-color-placeholder";i:2;s:29:"@dropdown-link-disabled-color";i:3;s:22:"@dropdown-header-color";i:4;s:21:"@navbar-inverse-color";i:5;s:26:"@navbar-inverse-link-color";i:6;s:27:"@navbar-inverse-brand-color";i:7;s:24:"@nav-disabled-link-color";i:8;s:30:"@nav-disabled-link-hover-color";i:9;s:26:"@pagination-disabled-color";i:10;s:21:"@pager-disabled-color";i:11;s:17:"@label-default-bg";i:12;s:26:"@list-group-disabled-color";i:13;s:31:"@list-group-disabled-text-color";i:14;s:9:"@badge-bg";i:15;s:24:"@breadcrumb-active-color";i:16;s:11:"@text-muted";i:17;s:18:"@abbr-border-color";i:18;s:21:"@headings-small-color";i:19;s:23:"@blockquote-small-color";}s:13:"@gray-lighter";a:11:{i:0;s:18:"@input-bg-disabled";i:1;s:21:"@input-group-addon-bg";i:2;s:18:"@nav-link-hover-bg";i:3;s:33:"@nav-tabs-link-hover-border-color";i:4;s:20:"@pagination-hover-bg";i:5;s:15:"@pager-hover-bg";i:6;s:13:"@jumbotron-bg";i:7;s:23:"@list-group-disabled-bg";i:8;s:24:"@blockquote-border-color";i:9;s:25:"@page-header-border-color";i:10;s:10:"@hr-border";}s:5:"@gray";a:2:{i:0;s:12:"@input-color";i:1;s:33:"@nav-tabs-active-link-hover-color";}s:19:"@border-radius-base";a:7:{i:0;s:20:"@input-border-radius";i:1;s:21:"@navbar-border-radius";i:2;s:24:"@nav-pills-border-radius";i:3;s:20:"@alert-border-radius";i:4;s:25:"@list-group-border-radius";i:5;s:20:"@panel-border-radius";i:6;s:24:"@thumbnail-border-radius";}s:21:"@line-height-computed";a:2:{i:0;s:18:"@input-height-base";i:1;s:21:"@navbar-margin-bottom";}s:16:"@font-size-large";a:1:{i:0;s:19:"@input-height-large";}s:16:"@font-size-small";a:1:{i:0;s:19:"@input-height-small";}s:13:"@input-border";a:1:{i:0;s:31:"@input-group-addon-border-color";}s:23:"@component-active-color";a:3:{i:0;s:27:"@dropdown-link-active-color";i:1;s:34:"@nav-pills-active-link-hover-color";i:2;s:24:"@list-group-active-color";}s:20:"@component-active-bg";a:5:{i:0;s:24:"@dropdown-link-active-bg";i:1;s:31:"@nav-pills-active-link-hover-bg";i:2;s:21:"@list-group-active-bg";i:3;s:25:"@list-group-active-border";i:4;s:29:"@list-group-active-text-color";}s:18:"@grid-gutter-width";a:7:{i:0;s:17:"@container-tablet";i:1;s:37:"@screen-sm-min` and up.\n@container-sm";i:2;s:18:"@container-desktop";i:3;s:37:"@screen-md-min` and up.\n@container-md";i:4;s:24:"@container-large-desktop";i:5;s:37:"@screen-lg-min` and up.\n@container-lg";i:6;s:26:"@navbar-padding-horizontal";}s:17:"@container-tablet";a:1:{i:0;s:37:"@screen-sm-min` and up.\n@container-sm";}s:18:"@container-desktop";a:1:{i:0;s:37:"@screen-md-min` and up.\n@container-md";}s:24:"@container-large-desktop";a:1:{i:0;s:37:"@screen-lg-min` and up.\n@container-lg";}s:14:"@navbar-height";a:1:{i:0;s:24:"@navbar-padding-vertical";}s:18:"@navbar-default-bg";a:2:{i:0;s:22:"@navbar-default-border";i:1;s:30:"@navbar-default-link-active-bg";}s:26:"@navbar-default-link-color";a:2:{i:0;s:27:"@navbar-default-brand-color";i:1;s:33:"@navbar-default-brand-hover-color";}s:27:"@navbar-default-brand-color";a:1:{i:0;s:33:"@navbar-default-brand-hover-color";}s:18:"@navbar-inverse-bg";a:2:{i:0;s:22:"@navbar-inverse-border";i:1;s:30:"@navbar-inverse-link-active-bg";}s:32:"@navbar-inverse-link-hover-color";a:1:{i:0;s:33:"@navbar-inverse-link-active-color";}s:26:"@navbar-inverse-link-color";a:1:{i:0;s:27:"@navbar-inverse-brand-color";}s:8:"@body-bg";a:3:{i:0;s:30:"@nav-tabs-active-link-hover-bg";i:1;s:44:"@nav-tabs-justified-active-link-border-color";i:2;s:13:"@thumbnail-bg";}s:14:"@pagination-bg";a:1:{i:0;s:9:"@pager-bg";}s:18:"@pagination-border";a:1:{i:0;s:13:"@pager-border";}s:20:"@pagination-hover-bg";a:1:{i:0;s:15:"@pager-hover-bg";}s:21:"@pagination-active-bg";a:1:{i:0;s:16:"@pager-active-bg";}s:24:"@pagination-active-color";a:1:{i:0;s:19:"@pager-active-color";}s:26:"@pagination-disabled-color";a:1:{i:0;s:21:"@pager-disabled-color";}s:17:"@state-success-bg";a:5:{i:0;s:21:"@state-success-border";i:1;s:17:"@alert-success-bg";i:2;s:21:"@alert-success-border";i:3;s:21:"@panel-success-border";i:4;s:25:"@panel-success-heading-bg";}s:14:"@state-info-bg";a:5:{i:0;s:18:"@state-info-border";i:1;s:14:"@alert-info-bg";i:2;s:18:"@alert-info-border";i:3;s:18:"@panel-info-border";i:4;s:22:"@panel-info-heading-bg";}s:17:"@state-warning-bg";a:5:{i:0;s:21:"@state-warning-border";i:1;s:17:"@alert-warning-bg";i:2;s:21:"@alert-warning-border";i:3;s:21:"@panel-warning-border";i:4;s:25:"@panel-warning-heading-bg";}s:16:"@state-danger-bg";a:5:{i:0;s:20:"@state-danger-border";i:1;s:16:"@alert-danger-bg";i:2;s:20:"@alert-danger-border";i:3;s:20:"@panel-danger-border";i:4;s:24:"@panel-danger-heading-bg";}s:11:"@tooltip-bg";a:1:{i:0;s:20:"@tooltip-arrow-color";}s:11:"@popover-bg";a:1:{i:0;s:17:"@popover-title-bg";}s:20:"@popover-arrow-width";a:1:{i:0;s:26:"@popover-arrow-outer-width";}s:21:"@popover-border-color";a:1:{i:0;s:26:"@popover-arrow-outer-color";}s:30:"@popover-fallback-border-color";a:1:{i:0;s:35:"@popover-arrow-outer-fallback-color";}s:17:"@line-height-base";a:1:{i:0;s:24:"@modal-title-line-height";}s:26:"@modal-header-border-color";a:1:{i:0;s:26:"@modal-footer-border-color";}s:19:"@state-success-text";a:2:{i:0;s:19:"@alert-success-text";i:1;s:19:"@panel-success-text";}s:21:"@state-success-border";a:2:{i:0;s:21:"@alert-success-border";i:1;s:21:"@panel-success-border";}s:16:"@state-info-text";a:2:{i:0;s:16:"@alert-info-text";i:1;s:16:"@panel-info-text";}s:18:"@state-info-border";a:2:{i:0;s:18:"@alert-info-border";i:1;s:18:"@panel-info-border";}s:19:"@state-warning-text";a:2:{i:0;s:19:"@alert-warning-text";i:1;s:19:"@panel-warning-text";}s:21:"@state-warning-border";a:2:{i:0;s:21:"@alert-warning-border";i:1;s:21:"@panel-warning-border";}s:18:"@state-danger-text";a:2:{i:0;s:18:"@alert-danger-text";i:1;s:18:"@panel-danger-text";}s:20:"@state-danger-border";a:2:{i:0;s:20:"@alert-danger-border";i:1;s:20:"@panel-danger-border";}s:26:"@list-group-disabled-color";a:1:{i:0;s:31:"@list-group-disabled-text-color";}s:22:"@list-group-link-color";a:1:{i:0;s:28:"@list-group-link-hover-color";}s:22:"@panel-heading-padding";a:1:{i:0;s:21:"@panel-footer-padding";}s:11:"@text-color";a:1:{i:0;s:24:"@thumbnail-caption-color";}s:8:"@well-bg";a:1:{i:0;s:12:"@well-border";}s:28:"@component-offset-horizontal";a:1:{i:0;s:21:"@dl-horizontal-offset";}}s:12:"private_data";a:1:{s:19:"reference_variables";a:177:{s:11:"@text-color";s:10:"@gray-dark";s:11:"@link-color";s:14:"@brand-primary";s:17:"@link-hover-color";s:11:"@link-color";s:17:"@font-family-base";s:23:"@font-family-sans-serif";s:16:"@font-size-large";s:15:"@font-size-base";s:16:"@font-size-small";s:15:"@font-size-base";s:13:"@font-size-h1";s:15:"@font-size-base";s:13:"@font-size-h2";s:15:"@font-size-base";s:13:"@font-size-h3";s:15:"@font-size-base";s:13:"@font-size-h4";s:15:"@font-size-base";s:13:"@font-size-h5";s:15:"@font-size-base";s:13:"@font-size-h6";s:15:"@font-size-base";s:21:"@line-height-computed";s:15:"@font-size-base";s:20:"@component-active-bg";s:14:"@brand-primary";s:16:"@table-bg-active";s:15:"@table-bg-hover";s:15:"@btn-primary-bg";s:14:"@brand-primary";s:19:"@btn-primary-border";s:15:"@btn-primary-bg";s:15:"@btn-success-bg";s:14:"@brand-success";s:19:"@btn-success-border";s:15:"@btn-success-bg";s:12:"@btn-info-bg";s:11:"@brand-info";s:16:"@btn-info-border";s:12:"@btn-info-bg";s:15:"@btn-warning-bg";s:14:"@brand-warning";s:19:"@btn-warning-border";s:15:"@btn-warning-bg";s:14:"@btn-danger-bg";s:13:"@brand-danger";s:18:"@btn-danger-border";s:14:"@btn-danger-bg";s:24:"@btn-link-disabled-color";s:11:"@gray-light";s:18:"@input-bg-disabled";s:13:"@gray-lighter";s:12:"@input-color";s:5:"@gray";s:20:"@input-border-radius";s:19:"@border-radius-base";s:24:"@input-color-placeholder";s:11:"@gray-light";s:18:"@input-height-base";s:21:"@line-height-computed";s:19:"@input-height-large";s:16:"@font-size-large";s:19:"@input-height-small";s:16:"@font-size-small";s:13:"@legend-color";s:10:"@gray-dark";s:21:"@input-group-addon-bg";s:13:"@gray-lighter";s:31:"@input-group-addon-border-color";s:13:"@input-border";s:20:"@dropdown-link-color";s:10:"@gray-dark";s:26:"@dropdown-link-hover-color";s:10:"@gray-dark";s:27:"@dropdown-link-active-color";s:23:"@component-active-color";s:24:"@dropdown-link-active-bg";s:20:"@component-active-bg";s:29:"@dropdown-link-disabled-color";s:11:"@gray-light";s:22:"@dropdown-header-color";s:11:"@gray-light";s:43:"@screen-xs-min` as of v3.2.0\n@screen-xs-min";s:10:"@screen-xs";s:41:"@screen-phone` as of v3.0.1\n@screen-phone";s:14:"@screen-xs-min";s:14:"@screen-sm-min";s:10:"@screen-sm";s:43:"@screen-tablet` as of v3.0.1\n@screen-tablet";s:14:"@screen-sm-min";s:14:"@screen-md-min";s:10:"@screen-md";s:45:"@screen-desktop` as of v3.0.1\n@screen-desktop";s:14:"@screen-md-min";s:14:"@screen-lg-min";s:10:"@screen-lg";s:51:"@screen-lg-desktop` as of v3.0.1\n@screen-lg-desktop";s:14:"@screen-lg-min";s:14:"@screen-xs-max";s:14:"@screen-sm-min";s:14:"@screen-sm-max";s:14:"@screen-md-min";s:14:"@screen-md-max";s:14:"@screen-lg-min";s:22:"@grid-float-breakpoint";s:14:"@screen-sm-min";s:26:"@grid-float-breakpoint-max";s:22:"@grid-float-breakpoint";s:17:"@container-tablet";s:18:"@grid-gutter-width";s:37:"@screen-sm-min` and up.\n@container-sm";s:17:"@container-tablet";s:18:"@container-desktop";s:18:"@grid-gutter-width";s:37:"@screen-md-min` and up.\n@container-md";s:18:"@container-desktop";s:24:"@container-large-desktop";s:18:"@grid-gutter-width";s:37:"@screen-lg-min` and up.\n@container-lg";s:24:"@container-large-desktop";s:21:"@navbar-margin-bottom";s:21:"@line-height-computed";s:21:"@navbar-border-radius";s:19:"@border-radius-base";s:26:"@navbar-padding-horizontal";s:18:"@grid-gutter-width";s:24:"@navbar-padding-vertical";s:14:"@navbar-height";s:22:"@navbar-default-border";s:18:"@navbar-default-bg";s:30:"@navbar-default-link-active-bg";s:18:"@navbar-default-bg";s:27:"@navbar-default-brand-color";s:26:"@navbar-default-link-color";s:33:"@navbar-default-brand-hover-color";s:27:"@navbar-default-brand-color";s:21:"@navbar-inverse-color";s:11:"@gray-light";s:22:"@navbar-inverse-border";s:18:"@navbar-inverse-bg";s:26:"@navbar-inverse-link-color";s:11:"@gray-light";s:33:"@navbar-inverse-link-active-color";s:32:"@navbar-inverse-link-hover-color";s:30:"@navbar-inverse-link-active-bg";s:18:"@navbar-inverse-bg";s:27:"@navbar-inverse-brand-color";s:26:"@navbar-inverse-link-color";s:18:"@nav-link-hover-bg";s:13:"@gray-lighter";s:24:"@nav-disabled-link-color";s:11:"@gray-light";s:30:"@nav-disabled-link-hover-color";s:11:"@gray-light";s:33:"@nav-tabs-link-hover-border-color";s:13:"@gray-lighter";s:30:"@nav-tabs-active-link-hover-bg";s:8:"@body-bg";s:33:"@nav-tabs-active-link-hover-color";s:5:"@gray";s:44:"@nav-tabs-justified-active-link-border-color";s:8:"@body-bg";s:24:"@nav-pills-border-radius";s:19:"@border-radius-base";s:31:"@nav-pills-active-link-hover-bg";s:20:"@component-active-bg";s:34:"@nav-pills-active-link-hover-color";s:23:"@component-active-color";s:17:"@pagination-color";s:11:"@link-color";s:23:"@pagination-hover-color";s:17:"@link-hover-color";s:20:"@pagination-hover-bg";s:13:"@gray-lighter";s:21:"@pagination-active-bg";s:14:"@brand-primary";s:25:"@pagination-active-border";s:14:"@brand-primary";s:26:"@pagination-disabled-color";s:11:"@gray-light";s:9:"@pager-bg";s:14:"@pagination-bg";s:13:"@pager-border";s:18:"@pagination-border";s:15:"@pager-hover-bg";s:20:"@pagination-hover-bg";s:16:"@pager-active-bg";s:21:"@pagination-active-bg";s:19:"@pager-active-color";s:24:"@pagination-active-color";s:21:"@pager-disabled-color";s:26:"@pagination-disabled-color";s:13:"@jumbotron-bg";s:13:"@gray-lighter";s:20:"@jumbotron-font-size";s:15:"@font-size-base";s:21:"@state-success-border";s:17:"@state-success-bg";s:18:"@state-info-border";s:14:"@state-info-bg";s:21:"@state-warning-border";s:17:"@state-warning-bg";s:20:"@state-danger-border";s:16:"@state-danger-bg";s:20:"@tooltip-arrow-color";s:11:"@tooltip-bg";s:17:"@popover-title-bg";s:11:"@popover-bg";s:26:"@popover-arrow-outer-width";s:20:"@popover-arrow-width";s:26:"@popover-arrow-outer-color";s:21:"@popover-border-color";s:35:"@popover-arrow-outer-fallback-color";s:30:"@popover-fallback-border-color";s:17:"@label-default-bg";s:11:"@gray-light";s:17:"@label-primary-bg";s:14:"@brand-primary";s:17:"@label-success-bg";s:14:"@brand-success";s:14:"@label-info-bg";s:11:"@brand-info";s:17:"@label-warning-bg";s:14:"@brand-warning";s:16:"@label-danger-bg";s:13:"@brand-danger";s:24:"@modal-title-line-height";s:17:"@line-height-base";s:26:"@modal-footer-border-color";s:26:"@modal-header-border-color";s:20:"@alert-border-radius";s:19:"@border-radius-base";s:17:"@alert-success-bg";s:17:"@state-success-bg";s:19:"@alert-success-text";s:19:"@state-success-text";s:21:"@alert-success-border";s:21:"@state-success-border";s:14:"@alert-info-bg";s:14:"@state-info-bg";s:16:"@alert-info-text";s:16:"@state-info-text";s:18:"@alert-info-border";s:18:"@state-info-border";s:17:"@alert-warning-bg";s:17:"@state-warning-bg";s:19:"@alert-warning-text";s:19:"@state-warning-text";s:21:"@alert-warning-border";s:21:"@state-warning-border";s:16:"@alert-danger-bg";s:16:"@state-danger-bg";s:18:"@alert-danger-text";s:18:"@state-danger-text";s:20:"@alert-danger-border";s:20:"@state-danger-border";s:16:"@progress-bar-bg";s:14:"@brand-primary";s:24:"@progress-bar-success-bg";s:14:"@brand-success";s:24:"@progress-bar-warning-bg";s:14:"@brand-warning";s:23:"@progress-bar-danger-bg";s:13:"@brand-danger";s:21:"@progress-bar-info-bg";s:11:"@brand-info";s:25:"@list-group-border-radius";s:19:"@border-radius-base";s:24:"@list-group-active-color";s:23:"@component-active-color";s:21:"@list-group-active-bg";s:20:"@component-active-bg";s:25:"@list-group-active-border";s:21:"@list-group-active-bg";s:29:"@list-group-active-text-color";s:21:"@list-group-active-bg";s:26:"@list-group-disabled-color";s:11:"@gray-light";s:23:"@list-group-disabled-bg";s:13:"@gray-lighter";s:31:"@list-group-disabled-text-color";s:26:"@list-group-disabled-color";s:28:"@list-group-link-hover-color";s:22:"@list-group-link-color";s:21:"@panel-footer-padding";s:22:"@panel-heading-padding";s:20:"@panel-border-radius";s:19:"@border-radius-base";s:19:"@panel-default-text";s:10:"@gray-dark";s:21:"@panel-primary-border";s:14:"@brand-primary";s:25:"@panel-primary-heading-bg";s:14:"@brand-primary";s:19:"@panel-success-text";s:19:"@state-success-text";s:21:"@panel-success-border";s:21:"@state-success-border";s:25:"@panel-success-heading-bg";s:17:"@state-success-bg";s:16:"@panel-info-text";s:16:"@state-info-text";s:18:"@panel-info-border";s:18:"@state-info-border";s:22:"@panel-info-heading-bg";s:14:"@state-info-bg";s:19:"@panel-warning-text";s:19:"@state-warning-text";s:21:"@panel-warning-border";s:21:"@state-warning-border";s:25:"@panel-warning-heading-bg";s:17:"@state-warning-bg";s:18:"@panel-danger-text";s:18:"@state-danger-text";s:20:"@panel-danger-border";s:20:"@state-danger-border";s:24:"@panel-danger-heading-bg";s:16:"@state-danger-bg";s:13:"@thumbnail-bg";s:8:"@body-bg";s:24:"@thumbnail-border-radius";s:19:"@border-radius-base";s:24:"@thumbnail-caption-color";s:11:"@text-color";s:12:"@well-border";s:8:"@well-bg";s:9:"@badge-bg";s:11:"@gray-light";s:19:"@badge-active-color";s:11:"@link-color";s:24:"@breadcrumb-active-color";s:11:"@gray-light";s:10:"@pre-color";s:10:"@gray-dark";s:11:"@text-muted";s:11:"@gray-light";s:18:"@abbr-border-color";s:11:"@gray-light";s:21:"@headings-small-color";s:11:"@gray-light";s:23:"@blockquote-small-color";s:11:"@gray-light";s:21:"@blockquote-font-size";s:15:"@font-size-base";s:24:"@blockquote-border-color";s:13:"@gray-lighter";s:25:"@page-header-border-color";s:13:"@gray-lighter";s:21:"@dl-horizontal-offset";s:28:"@component-offset-horizontal";s:10:"@hr-border";s:13:"@gray-lighter";}}}', 'color_namespace_backend', '', 'publish', 'closed', 'closed', '', 'color_namespace_backend-1', '', '', '2016-12-09 17:26:00', '2016-12-09 17:26:00', '', 0, 'http://localhost/koral/ff-options/color_namespace_backend-1/', 0, 'ff-options', '', 0),
(106, 1, '2016-12-09 17:26:00', '2016-12-09 17:26:00', 'a:224:{s:12:"private_data";a:1:{s:15:"color_file_hash";s:32:"294f64e75d86e3241bea7abc9366c24d";}s:12:"@gray-darker";s:7:"#222222";s:10:"@gray-dark";s:7:"#333333";s:5:"@gray";s:7:"#555555";s:11:"@gray-light";s:7:"#777777";s:13:"@gray-lighter";s:7:"#eeeeee";s:14:"@brand-primary";s:7:"#428bca";s:14:"@brand-success";s:7:"#5cb85c";s:11:"@brand-info";s:7:"#5bc0de";s:14:"@brand-warning";s:7:"#f0ad4e";s:13:"@brand-danger";s:7:"#d9534f";s:8:"@body-bg";s:4:"#fff";s:11:"@text-color";s:7:"#333333";s:11:"@link-color";s:7:"#428bca";s:17:"@link-hover-color";s:7:"#2a6496";s:23:"@component-active-color";s:4:"#fff";s:20:"@component-active-bg";s:7:"#428bca";s:16:"@table-bg-accent";s:7:"#f9f9f9";s:15:"@table-bg-hover";s:7:"#f5f5f5";s:16:"@table-bg-active";s:7:"#f5f5f5";s:19:"@table-border-color";s:4:"#ddd";s:18:"@btn-default-color";s:4:"#333";s:15:"@btn-default-bg";s:4:"#fff";s:19:"@btn-default-border";s:4:"#ccc";s:18:"@btn-primary-color";s:4:"#fff";s:15:"@btn-primary-bg";s:7:"#428bca";s:19:"@btn-primary-border";s:7:"#357ebd";s:18:"@btn-success-color";s:4:"#fff";s:15:"@btn-success-bg";s:7:"#5cb85c";s:19:"@btn-success-border";s:7:"#4cae4c";s:15:"@btn-info-color";s:4:"#fff";s:12:"@btn-info-bg";s:7:"#5bc0de";s:16:"@btn-info-border";s:7:"#46b8da";s:18:"@btn-warning-color";s:4:"#fff";s:15:"@btn-warning-bg";s:7:"#f0ad4e";s:19:"@btn-warning-border";s:7:"#eea236";s:17:"@btn-danger-color";s:4:"#fff";s:14:"@btn-danger-bg";s:7:"#d9534f";s:18:"@btn-danger-border";s:7:"#d43f3a";s:24:"@btn-link-disabled-color";s:7:"#777777";s:9:"@input-bg";s:4:"#fff";s:18:"@input-bg-disabled";s:7:"#eeeeee";s:12:"@input-color";s:7:"#555555";s:13:"@input-border";s:4:"#ccc";s:19:"@input-border-focus";s:7:"#66afe9";s:24:"@input-color-placeholder";s:7:"#777777";s:13:"@legend-color";s:7:"#333333";s:20:"@legend-border-color";s:7:"#e5e5e5";s:21:"@input-group-addon-bg";s:7:"#eeeeee";s:31:"@input-group-addon-border-color";s:4:"#ccc";s:12:"@dropdown-bg";s:4:"#fff";s:25:"@dropdown-fallback-border";s:4:"#ccc";s:20:"@dropdown-divider-bg";s:7:"#e5e5e5";s:20:"@dropdown-link-color";s:7:"#333333";s:23:"@dropdown-link-hover-bg";s:7:"#f5f5f5";s:27:"@dropdown-link-active-color";s:4:"#fff";s:24:"@dropdown-link-active-bg";s:7:"#428bca";s:29:"@dropdown-link-disabled-color";s:7:"#777777";s:22:"@dropdown-header-color";s:7:"#777777";s:57:"@dropdown-caret-color` as of v3.1.0\n@dropdown-caret-color";s:4:"#000";s:21:"@navbar-default-color";s:4:"#777";s:18:"@navbar-default-bg";s:7:"#f8f8f8";s:22:"@navbar-default-border";s:7:"#e7e7e7";s:26:"@navbar-default-link-color";s:4:"#777";s:32:"@navbar-default-link-hover-color";s:4:"#333";s:33:"@navbar-default-link-active-color";s:4:"#555";s:30:"@navbar-default-link-active-bg";s:7:"#e7e7e7";s:35:"@navbar-default-link-disabled-color";s:4:"#ccc";s:27:"@navbar-default-brand-color";s:4:"#777";s:33:"@navbar-default-brand-hover-color";s:7:"#5e5e5e";s:31:"@navbar-default-toggle-hover-bg";s:4:"#ddd";s:34:"@navbar-default-toggle-icon-bar-bg";s:4:"#888";s:35:"@navbar-default-toggle-border-color";s:4:"#ddd";s:21:"@navbar-inverse-color";s:7:"#777777";s:18:"@navbar-inverse-bg";s:4:"#222";s:22:"@navbar-inverse-border";s:7:"#080808";s:26:"@navbar-inverse-link-color";s:7:"#777777";s:32:"@navbar-inverse-link-hover-color";s:4:"#fff";s:33:"@navbar-inverse-link-active-color";s:4:"#fff";s:30:"@navbar-inverse-link-active-bg";s:7:"#080808";s:35:"@navbar-inverse-link-disabled-color";s:4:"#444";s:27:"@navbar-inverse-brand-color";s:7:"#777777";s:33:"@navbar-inverse-brand-hover-color";s:4:"#fff";s:31:"@navbar-inverse-toggle-hover-bg";s:4:"#333";s:34:"@navbar-inverse-toggle-icon-bar-bg";s:4:"#fff";s:35:"@navbar-inverse-toggle-border-color";s:4:"#333";s:18:"@nav-link-hover-bg";s:7:"#eeeeee";s:24:"@nav-disabled-link-color";s:7:"#777777";s:30:"@nav-disabled-link-hover-color";s:7:"#777777";s:26:"@nav-open-link-hover-color";s:4:"#fff";s:22:"@nav-tabs-border-color";s:4:"#ddd";s:33:"@nav-tabs-link-hover-border-color";s:7:"#eeeeee";s:30:"@nav-tabs-active-link-hover-bg";s:4:"#fff";s:33:"@nav-tabs-active-link-hover-color";s:7:"#555555";s:40:"@nav-tabs-active-link-hover-border-color";s:4:"#ddd";s:37:"@nav-tabs-justified-link-border-color";s:4:"#ddd";s:44:"@nav-tabs-justified-active-link-border-color";s:4:"#fff";s:31:"@nav-pills-active-link-hover-bg";s:7:"#428bca";s:34:"@nav-pills-active-link-hover-color";s:4:"#fff";s:17:"@pagination-color";s:7:"#428bca";s:14:"@pagination-bg";s:4:"#fff";s:18:"@pagination-border";s:4:"#ddd";s:23:"@pagination-hover-color";s:7:"#2a6496";s:20:"@pagination-hover-bg";s:7:"#eeeeee";s:24:"@pagination-hover-border";s:4:"#ddd";s:24:"@pagination-active-color";s:4:"#fff";s:21:"@pagination-active-bg";s:7:"#428bca";s:25:"@pagination-active-border";s:7:"#428bca";s:26:"@pagination-disabled-color";s:7:"#777777";s:23:"@pagination-disabled-bg";s:4:"#fff";s:27:"@pagination-disabled-border";s:4:"#ddd";s:9:"@pager-bg";s:4:"#fff";s:13:"@pager-border";s:4:"#ddd";s:15:"@pager-hover-bg";s:7:"#eeeeee";s:16:"@pager-active-bg";s:7:"#428bca";s:19:"@pager-active-color";s:4:"#fff";s:21:"@pager-disabled-color";s:7:"#777777";s:13:"@jumbotron-bg";s:7:"#eeeeee";s:19:"@state-success-text";s:7:"#3c763d";s:17:"@state-success-bg";s:7:"#dff0d8";s:16:"@state-info-text";s:7:"#31708f";s:14:"@state-info-bg";s:7:"#d9edf7";s:19:"@state-warning-text";s:7:"#8a6d3b";s:17:"@state-warning-bg";s:7:"#fcf8e3";s:18:"@state-danger-text";s:7:"#a94442";s:16:"@state-danger-bg";s:7:"#f2dede";s:14:"@tooltip-color";s:4:"#fff";s:11:"@tooltip-bg";s:4:"#000";s:20:"@tooltip-arrow-color";s:4:"#000";s:11:"@popover-bg";s:4:"#fff";s:30:"@popover-fallback-border-color";s:4:"#ccc";s:17:"@popover-title-bg";s:7:"#f7f7f7";s:20:"@popover-arrow-color";s:4:"#fff";s:35:"@popover-arrow-outer-fallback-color";s:7:"#999999";s:17:"@label-default-bg";s:7:"#777777";s:17:"@label-primary-bg";s:7:"#428bca";s:17:"@label-success-bg";s:7:"#5cb85c";s:14:"@label-info-bg";s:7:"#5bc0de";s:17:"@label-warning-bg";s:7:"#f0ad4e";s:16:"@label-danger-bg";s:7:"#d9534f";s:12:"@label-color";s:4:"#fff";s:23:"@label-link-hover-color";s:4:"#fff";s:17:"@modal-content-bg";s:4:"#fff";s:36:"@modal-content-fallback-border-color";s:4:"#999";s:18:"@modal-backdrop-bg";s:4:"#000";s:26:"@modal-header-border-color";s:7:"#e5e5e5";s:26:"@modal-footer-border-color";s:7:"#e5e5e5";s:17:"@alert-success-bg";s:7:"#dff0d8";s:19:"@alert-success-text";s:7:"#3c763d";s:14:"@alert-info-bg";s:7:"#d9edf7";s:16:"@alert-info-text";s:7:"#31708f";s:17:"@alert-warning-bg";s:7:"#fcf8e3";s:19:"@alert-warning-text";s:7:"#8a6d3b";s:16:"@alert-danger-bg";s:7:"#f2dede";s:18:"@alert-danger-text";s:7:"#a94442";s:12:"@progress-bg";s:7:"#f5f5f5";s:19:"@progress-bar-color";s:4:"#fff";s:16:"@progress-bar-bg";s:7:"#428bca";s:24:"@progress-bar-success-bg";s:7:"#5cb85c";s:24:"@progress-bar-warning-bg";s:7:"#f0ad4e";s:23:"@progress-bar-danger-bg";s:7:"#d9534f";s:21:"@progress-bar-info-bg";s:7:"#5bc0de";s:14:"@list-group-bg";s:4:"#fff";s:18:"@list-group-border";s:4:"#ddd";s:20:"@list-group-hover-bg";s:7:"#f5f5f5";s:24:"@list-group-active-color";s:4:"#fff";s:21:"@list-group-active-bg";s:7:"#428bca";s:25:"@list-group-active-border";s:7:"#428bca";s:29:"@list-group-active-text-color";s:7:"#e1edf7";s:26:"@list-group-disabled-color";s:7:"#777777";s:23:"@list-group-disabled-bg";s:7:"#eeeeee";s:31:"@list-group-disabled-text-color";s:7:"#777777";s:22:"@list-group-link-color";s:4:"#555";s:28:"@list-group-link-hover-color";s:4:"#555";s:30:"@list-group-link-heading-color";s:4:"#333";s:9:"@panel-bg";s:4:"#fff";s:19:"@panel-inner-border";s:4:"#ddd";s:16:"@panel-footer-bg";s:7:"#f5f5f5";s:19:"@panel-default-text";s:7:"#333333";s:21:"@panel-default-border";s:4:"#ddd";s:25:"@panel-default-heading-bg";s:7:"#f5f5f5";s:19:"@panel-primary-text";s:4:"#fff";s:21:"@panel-primary-border";s:7:"#428bca";s:25:"@panel-primary-heading-bg";s:7:"#428bca";s:19:"@panel-success-text";s:7:"#3c763d";s:25:"@panel-success-heading-bg";s:7:"#dff0d8";s:16:"@panel-info-text";s:7:"#31708f";s:22:"@panel-info-heading-bg";s:7:"#d9edf7";s:19:"@panel-warning-text";s:7:"#8a6d3b";s:25:"@panel-warning-heading-bg";s:7:"#fcf8e3";s:18:"@panel-danger-text";s:7:"#a94442";s:24:"@panel-danger-heading-bg";s:7:"#f2dede";s:13:"@thumbnail-bg";s:4:"#fff";s:17:"@thumbnail-border";s:4:"#ddd";s:24:"@thumbnail-caption-color";s:7:"#333333";s:8:"@well-bg";s:7:"#f5f5f5";s:12:"@well-border";s:7:"#e3e3e3";s:12:"@badge-color";s:4:"#fff";s:23:"@badge-link-hover-color";s:4:"#fff";s:9:"@badge-bg";s:7:"#777777";s:19:"@badge-active-color";s:7:"#428bca";s:16:"@badge-active-bg";s:4:"#fff";s:14:"@breadcrumb-bg";s:7:"#f5f5f5";s:17:"@breadcrumb-color";s:4:"#ccc";s:24:"@breadcrumb-active-color";s:7:"#777777";s:23:"@carousel-control-color";s:4:"#fff";s:29:"@carousel-indicator-active-bg";s:4:"#fff";s:32:"@carousel-indicator-border-color";s:4:"#fff";s:23:"@carousel-caption-color";s:4:"#fff";s:12:"@close-color";s:4:"#000";s:11:"@code-color";s:7:"#c7254e";s:8:"@code-bg";s:7:"#f9f2f4";s:10:"@kbd-color";s:4:"#fff";s:7:"@kbd-bg";s:4:"#333";s:7:"@pre-bg";s:7:"#f5f5f5";s:10:"@pre-color";s:7:"#333333";s:17:"@pre-border-color";s:4:"#ccc";s:11:"@text-muted";s:7:"#777777";s:18:"@abbr-border-color";s:7:"#777777";s:21:"@headings-small-color";s:7:"#777777";s:23:"@blockquote-small-color";s:7:"#777777";s:24:"@blockquote-border-color";s:7:"#eeeeee";s:25:"@page-header-border-color";s:7:"#eeeeee";s:10:"@hr-border";s:7:"#eeeeee";}', 'color_namespace_default', '', 'publish', 'closed', 'closed', '', 'color_namespace_default-1', '', '', '2016-12-09 17:26:00', '2016-12-09 17:26:00', '', 0, 'http://localhost/koral/ff-options/color_namespace_default-1/', 0, 'ff-options', '', 0),
(107, 1, '2016-12-09 17:40:24', '2016-12-09 17:40:24', '', 'footer_lodyas', '', 'inherit', 'open', 'closed', '', 'footer_lodyas', '', '', '2016-12-09 17:40:24', '2016-12-09 17:40:24', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/footer_lodyas.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2016-12-09 17:46:34', '2016-12-09 17:46:34', '', 'jewellery_shop_logo', '', 'inherit', 'open', 'closed', '', 'jewellery_shop_logo', '', '', '2016-12-09 17:46:34', '2016-12-09 17:46:34', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/jewellery_shop_logo.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2016-12-09 17:48:56', '2016-12-09 17:48:56', '[Google_Maps_WD id=2 map=1]\r\n\r\n[livesite-contact title="Contact request"]', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-12-09 17:48:56', '2016-12-09 17:48:56', '', 98, 'http://localhost/koral/2016/12/09/98-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2016-12-09 17:51:44', '2016-12-09 17:51:44', '', 'Sale', '', 'publish', 'closed', 'closed', '', '110', '', '', '2016-12-09 17:53:01', '2016-12-09 17:53:01', '', 0, 'http://localhost/koral/?post_type=chch-pop-up&#038;p=110', 0, 'chch-pop-up', '', 0),
(111, 1, '2016-12-09 17:52:26', '2016-12-09 17:52:26', '', 'picture3', '', 'inherit', 'open', 'closed', '', 'picture3', '', '', '2016-12-09 17:52:26', '2016-12-09 17:52:26', '', 0, 'http://localhost/koral/wp-content/uploads/2016/12/Picture3.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2016-12-09 17:56:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-09 17:56:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/koral/?p=112', 0, 'post', '', 0),
(114, 1, '2016-12-09 17:59:44', '2016-12-09 17:59:44', 'Pre nekoliko godine modna kuća „Živanši“ predstavila je mušku kolekciju za jesen/zimu. Manekeni su izlazili iz bekstejdža u odelima na kojima su dominirali motivi orijentalnog ćilima.\r\n\r\n&nbsp;\r\n\r\nSvi su pomno pratili neobično stilizovana muška tela, dok bi verovatno svakom drugom čoveku iz Srbije ličilo da su se momci ogrnuli pirotskim ćilimima. Prošlo je neko vreme i ćilim se opet ušunjao u modni svet. Ovoga puta pirotska verzija podstakla je srpsku modnu dizajnerku Anu Ljubinković da napravi kolekciju za jesen/zimu 2016/17.\r\n<div class="in_banner flash banner_Intext-P1"></div>\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124019_ana-ljubinkovic-2015_630x0.jpg?ver=1476712854" />\r\n\r\nDinamična paleta boja, oblici i ritam elemenata – sve unikatne osobine pirotskog ćilima – probudilo je u Ani ideju koju je kasnije pretočila u reviju. U oktobru ju je <u><strong><a href="http://zena.blic.rs/Moda/36894/Fenomenalna-Ana-Ljubinkovic-Spojila-je-nespojivo-i-odusevila-publiku">prikazala i na „Fashion weeku“ u Londonu.</a></strong></u> Pobrala je sjajne kritike, a o njenim modelima istog meseca pisao je i britanski „Vog“.\r\n\r\n&nbsp;\r\n\r\n<strong>Tema skrivena u cikcak liniji</strong>\r\nObe njene bake bavile su se ručnim radom. Pored njih je još kao dete postala svesna koliko je uzbudljivo posmatrati nastanak džempera od jedne niti ili pretvaranje crteža cveća u predivan vezeni buket.\r\n– Sve vreme u dizajnu primenjujem znanje koje imam. Moj brend je prepoznatljiv po formi, boji i ručno rađenim detaljima - rekla je Ana Ljubinković za septembarski broj magazina Elevate.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/15/124018_37bn5744_630x0.jpg?ver=1476712869" />\r\n\r\nIstražujući materijale na temu pirotskog ćilima, shvatila je da je on velika misterija. I Nikola Tesla imao pirotski ćilim pokraj sebe. Verovao je u njegovu moć. Ani je ovaj deo srpske tradicije zanimljiv zbog kombinacija i veštih odnosa boja, odnosno zbog neverovatne harmonije.\r\n– U formi se ogledaju geometrijske šare sa ćilima, pa tako mi je poslužila cik-cak linija kao osnova za krojne elemente. Nisam se više od toga bavila detaljima jer moda je veoma dinamična i treba ostaviti neke ideje za sledeći put.\r\n\r\n&nbsp;\r\n\r\n<strong>Prošlost je osnova za nove stvari</strong>\r\nOsim pirotskog ćilima, Ani je celokupno srpsko kulturno nasleđe inspirativno. Zapravo, za njen umetnički rad posebno su važni<strong> srednjovekovna umetnost, narodna književnost i zanati.</strong> Stare beograske fasade su joj takođe privlačne, a proučava život i delo Nikole Tesle, verovanja i legende o nošnjama. Sigurna je da su svi ti tragovi prošlosti osnova za nove stvari.\r\n– Ljudima iz inostranstva uvek skrećem pažnju na sve što je autentično sa ovih prostora, bilo da je vezano za istoriju, sport, kulturu ili umetnost. Njima pirotski ćilim deluje poznato jer ga povezuju sa sličnim orijentalnim, ali uvek naglašavam da je pirotski specifičan po načinu tkanja i da ima veoma interesantne autohtone ukrasne elemente.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124020_py2a8717-2_630x0.jpg?ver=1476712963" />\r\n\r\nU stvari, pirotski ćilim je slikovno pismo, a njegove šare su simboli. Njima su se ljudi štitili od negativne energije. Po nekim pisanim izvorima, pirotsko ćilimarstvo staro je pet vekova, a 2002. zvanično je registrovan brend proizvod. Time je postao <strong>jedini narodni i umetnički proizvod sa geografskom oznakom porekla u Srbiji </strong>i pod zaštitom je Uneska.\r\n– U toj radoznalosti, sakupljanju informacija učenju, pojave se elementi koji se na kraju pokažu inspirativnim. Kreativna energija je sila koja upravlja umetnikom i ona stalno traži dopunu, tj. novo znanje koje će je pokrenuti.\r\n\r\n&nbsp;', 'Moda', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-12-09 17:59:44', '2016-12-09 17:59:44', '', 86, 'http://localhost/koral/2016/12/09/86-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-12-09 17:57:46', '2016-12-09 17:57:46', 'Pre nekoliko godine modna kuća „Živanši“ predstavila je mušku kolekciju za jesen/zimu. Manekeni su izlazili iz bekstejdža u odelima na kojima su dominirali motivi orijentalnog ćilima.\r\n\r\n[embedyt] http://www.youtube.com/watch?v=PK--A-LJo4Y[/embedyt]\r\n\r\nSvi su pomno pratili neobično stilizovana muška tela, dok bi verovatno svakom drugom čoveku iz Srbije ličilo da su se momci ogrnuli pirotskim ćilimima. Prošlo je neko vreme i ćilim se opet ušunjao u modni svet. Ovoga puta pirotska verzija podstakla je srpsku modnu dizajnerku Anu Ljubinković da napravi kolekciju za jesen/zimu 2016/17.\r\n<div class="in_banner flash banner_Intext-P1"></div>\r\n&nbsp;\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124019_ana-ljubinkovic-2015_630x0.jpg?ver=1476712854" />\r\n\r\nDinamična paleta boja, oblici i ritam elemenata – sve unikatne osobine pirotskog ćilima – probudilo je u Ani ideju koju je kasnije pretočila u reviju. U oktobru ju je <u><strong><a href="http://zena.blic.rs/Moda/36894/Fenomenalna-Ana-Ljubinkovic-Spojila-je-nespojivo-i-odusevila-publiku">prikazala i na „Fashion weeku“ u Londonu.</a></strong></u> Pobrala je sjajne kritike, a o njenim modelima istog meseca pisao je i britanski „Vog“.\r\n\r\n&nbsp;\r\n\r\n<strong>Tema skrivena u cikcak liniji</strong>\r\nObe njene bake bavile su se ručnim radom. Pored njih je još kao dete postala svesna koliko je uzbudljivo posmatrati nastanak džempera od jedne niti ili pretvaranje crteža cveća u predivan vezeni buket.\r\n– Sve vreme u dizajnu primenjujem znanje koje imam. Moj brend je prepoznatljiv po formi, boji i ručno rađenim detaljima - rekla je Ana Ljubinković za septembarski broj magazina Elevate.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/15/124018_37bn5744_630x0.jpg?ver=1476712869" />\r\n\r\nIstražujući materijale na temu pirotskog ćilima, shvatila je da je on velika misterija. I Nikola Tesla imao pirotski ćilim pokraj sebe. Verovao je u njegovu moć. Ani je ovaj deo srpske tradicije zanimljiv zbog kombinacija i veštih odnosa boja, odnosno zbog neverovatne harmonije.\r\n– U formi se ogledaju geometrijske šare sa ćilima, pa tako mi je poslužila cik-cak linija kao osnova za krojne elemente. Nisam se više od toga bavila detaljima jer moda je veoma dinamična i treba ostaviti neke ideje za sledeći put.\r\n\r\n&nbsp;\r\n\r\n<strong>Prošlost je osnova za nove stvari</strong>\r\nOsim pirotskog ćilima, Ani je celokupno srpsko kulturno nasleđe inspirativno. Zapravo, za njen umetnički rad posebno su važni<strong> srednjovekovna umetnost, narodna književnost i zanati.</strong> Stare beograske fasade su joj takođe privlačne, a proučava život i delo Nikole Tesle, verovanja i legende o nošnjama. Sigurna je da su svi ti tragovi prošlosti osnova za nove stvari.\r\n– Ljudima iz inostranstva uvek skrećem pažnju na sve što je autentično sa ovih prostora, bilo da je vezano za istoriju, sport, kulturu ili umetnost. Njima pirotski ćilim deluje poznato jer ga povezuju sa sličnim orijentalnim, ali uvek naglašavam da je pirotski specifičan po načinu tkanja i da ima veoma interesantne autohtone ukrasne elemente.\r\n\r\n<img class="imgFull" src="http://zena.blic.rs/data/images/2016/10/17/16/124020_py2a8717-2_630x0.jpg?ver=1476712963" />\r\n\r\nU stvari, pirotski ćilim je slikovno pismo, a njegove šare su simboli. Njima su se ljudi štitili od negativne energije. Po nekim pisanim izvorima, pirotsko ćilimarstvo staro je pet vekova, a 2002. zvanično je registrovan brend proizvod. Time je postao <strong>jedini narodni i umetnički proizvod sa geografskom oznakom porekla u Srbiji </strong>i pod zaštitom je Uneska.\r\n– U toj radoznalosti, sakupljanju informacija učenju, pojave se elementi koji se na kraju pokažu inspirativnim. Kreativna energija je sila koja upravlja umetnikom i ona stalno traži dopunu, tj. novo znanje koje će je pokrenuti.\r\n\r\n&nbsp;', 'Moda', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-12-09 17:57:46', '2016-12-09 17:57:46', '', 86, 'http://localhost/koral/2016/12/09/86-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2016-12-09 17:59:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-09 17:59:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/koral/?p=115', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(116, 1, '2016-12-09 18:03:01', '2016-12-09 18:03:01', 'Kada je beogradski&nbsp;zlatar Andrej dobio sina Kostu, zaradovao se što će jednog dana svoju umetnost i svoju zlatarsku radnju imati kome da preda. Njega je, pak, u tajne zlatarstva, pre Drugog svetskog rata, uveo čuveni Stojan Oreščanin, u ono doba jedan od najznačajnijih zlatara Balkana.\r\n\r\n[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]Prva pitanja Kostina i očevi odgovori su: kako je važnija ljubav prema poslu i poštenje nego zarada, kako se lepota kuje i brusi i kako traži celog čoveka i celu porodicu i ceo život. Prvi Kostini pokušaji, zatim više decenija potpune predanosti i – zanat je ispečen. “Da bi se otac ponosio mnome! Da se čast imena ne izbriše!” U čuvenoj beogradskoj ulici, Bulevaru kralja Aleksandra, u broju 130, smeštena je zlatarska radnja iznad koje već 70 godina blješti firma “Koral”.\r\n\r\n&nbsp;\r\n\r\nNjen sadašnji vlasnik,&nbsp;zlatar Kosta Andrejević&nbsp;je tradicionalista i čovek modernog doba: u “umetnost Andrejevića” uneo je sopstvenu inventivnost, uneo praćenje svetskih kreativnih trendova i nove tehnologije, a i znanje stečeno u italijanskom gradu Vićenci, evropskom ogranku najprestižnije na svetu škole pri&nbsp;<a href="https://www.gia.edu/">Gemološkom institutu Amerike – GIA</a>.\r\n\r\nTradicija se nastavlja tako da se porodičnim poslom, juvelirstvom, sada bavi i treća generacija, unuci Andreja i Aleksandar, oboje diplomirani GIA stručnjaci za drago kamenje i dijamante.\r\n\r\nMalo bismo znali o svojoj prošlosti da nije potrebe čovekove da kuje nakit i da ga poklanja ženi. Nakitom se bogovima obraćalo, zbog dragog kamenja padali su i poljupci i glave… Nema bajke u kojoj se dobrota i ljubav ne nagrađuju draguljima… Oni koji prolaze pored izloga sa znakom “AK” , u najvećem beogradskom bulevaru, zastaju privučeni svetlucavim vilinskim svetom a da i nisu svesni čarolije.\r\n\r\nautor teksta Lidija Kovač\r\n\r\n-Zlatara Andrejević&nbsp;je u nezavisnom istraživanju za 2014. godine dobila laskavu titulu&nbsp;<a href="http://www.zlatara.net/srp8297/aktuelno/Zlatara-Andrejevic-je-Top-Serbian-Brand.html">TOP SERBIAN BRAND</a>\r\n\r\n-Zlatara Andrejević&nbsp;je dobila takođe vredno priznanje kao jedna od 13 najboljih porodičnih firmi u Srbiji 2014. godine.&nbsp;<a href="http://nakit4yu.com/nagrada-za-zlataru-andrejevic/">VIP BizParter 2014</a>&nbsp;je priznanje koje tradicionalno dodeljuje specijalni žiri a organizatori su Privredna komora Srbije, VIP mobile i agencija Chapter4.\r\n-Zlatara Koralje ušla u <a href="http://www.ekapija.com/website/sr/page/1348756/Predstavljamo-vam-kandidate-za-nagradu-EY-Preduzetnik-godine-u-Srbiji" target="_blank">najuži izbor</a> za <a href="http://www.ey.com/cs/en/home/ey-serbia-eoy" target="_blank">EY Preduzetnik godine 2015</a>.\r\n\r\n[embedyt] http://www.youtube.com/watch?v=yX_ZIvS4Rqw[/embedyt]', 'O nama', '', 'publish', 'closed', 'closed', '', 'o-nama', '', '', '2016-12-09 18:15:43', '2016-12-09 18:15:43', '', 0, 'http://localhost/koral/?page_id=116', 0, 'page', '', 0),
(118, 1, '2016-12-09 18:03:34', '2016-12-09 18:03:34', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2016-12-09 18:03:34', '2016-12-09 18:03:34', '', 0, 'http://localhost/koral/2016/12/09/118/', 2, 'nav_menu_item', '', 0),
(119, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?post_type=display_type&p=119', 0, 'display_type', '', 0),
(120, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjYwMCwiZ2FsbGVyeV9oZWlnaHQiOjQwMCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoxLCJ0aHVtYm5haWxfbGlua190ZXh0IjoiW1Nob3cgdGh1bWJuYWlsc10iLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjYwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjYwMCwiZ2FsbGVyeV9oZWlnaHQiOjQwMCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoxLCJ0aHVtYm5haWxfbGlua190ZXh0IjoiW1Nob3cgdGh1bWJuYWlsc10iLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/koral/?post_type=display_type&p=120', 0, 'display_type', '', 0),
(121, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsImFsaWFzZXMiOlsiYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW1hZ2Vicm93c2VyIiwibmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsImFsaWFzZXMiOlsiYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW1hZ2Vicm93c2VyIiwibmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/koral/?post_type=display_type&p=121', 0, 'display_type', '', 0),
(122, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJoaWRkZW5fZnJvbV9pZ3ciOnRydWUsImFsaWFzZXMiOlsiYmFzaWNfc2luZ2xlcGljIiwic2luZ2xlcGljIiwibmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJoaWRkZW5fZnJvbV9pZ3ciOnRydWUsImFsaWFzZXMiOlsiYmFzaWNfc2luZ2xlcGljIiwic2luZ2xlcGljIiwibmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/koral/?post_type=display_type&p=122', 0, 'display_type', '', 0),
(123, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/koral/?post_type=display_type&p=123', 0, 'display_type', '', 0),
(124, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsImFsaWFzZXMiOlsiYmFzaWNfY29tcGFjdF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfYWxidW0iLCJiYXNpY19hbGJ1bV9jb21wYWN0IiwiY29tcGFjdF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsImFsaWFzZXMiOlsiYmFzaWNfY29tcGFjdF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfYWxidW0iLCJiYXNpY19hbGJ1bV9jb21wYWN0IiwiY29tcGFjdF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS42MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/koral/?post_type=display_type&p=124', 0, 'display_type', '', 0),
(125, 1, '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 18:11:42', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?post_type=display_type&p=125', 0, 'display_type', '', 0),
(126, 1, '2016-12-09 18:13:34', '2016-12-09 18:13:34', 'Kada je beogradski&nbsp;zlatar Andrej dobio sina Kostu, zaradovao se što će jednog dana svoju umetnost i svoju zlatarsku radnju imati kome da preda. Njega je, pak, u tajne zlatarstva, pre Drugog svetskog rata, uveo čuveni Stojan Oreščanin, u ono doba jedan od najznačajnijih zlatara Balkana.\n\nPrva pitanja Kostina i očevi odgovori su: kako je važnija ljubav prema poslu i poštenje nego zarada, kako se lepota kuje i brusi i kako traži celog čoveka i celu porodicu i ceo život. Prvi Kostini pokušaji, zatim više decenija potpune predanosti i – zanat je ispečen. “Da bi se otac ponosio mnome! Da se čast imena ne izbriše!” U čuvenoj beogradskoj ulici, Bulevaru kralja Aleksandra, u broju 130, smeštena je zlatarska radnja iznad koje već 70 godina blješti firma “Koral”.\n\n&nbsp;\n\n&nbsp;\n\nNjen sadašnji vlasnik,&nbsp;zlatar Kosta Andrejević&nbsp;je tradicionalista i čovek modernog doba: u “umetnost Andrejevića” uneo je sopstvenu inventivnost, uneo praćenje svetskih kreativnih trendova i nove tehnologije, a i znanje stečeno u italijanskom gradu Vićenci, evropskom ogranku najprestižnije na svetu škole pri&nbsp;<a href="https://www.gia.edu/">Gemološkom institutu Amerike – GIA</a>.\n\nTradicija se nastavlja tako da se porodičnim poslom, juvelirstvom, sada bavi i treća generacija, unuci Andreja i Aleksandar, oboje diplomirani GIA stručnjaci za drago kamenje i dijamante.\n\nMalo bismo znali o svojoj prošlosti da nije potrebe čovekove da kuje nakit i da ga poklanja ženi. Nakitom se bogovima obraćalo, zbog dragog kamenja padali su i poljupci i glave… Nema bajke u kojoj se dobrota i ljubav ne nagrađuju draguljima… Oni koji prolaze pored izloga sa znakom “AK” , u najvećem beogradskom bulevaru, zastaju privučeni svetlucavim vilinskim svetom a da i nisu svesni čarolije.\n\nautor teksta Lidija Kovač\n\n-Zlatara Andrejević&nbsp;je u nezavisnom istraživanju za 2014. godine dobila laskavu titulu&nbsp;<a href="http://www.zlatara.net/srp8297/aktuelno/Zlatara-Andrejevic-je-Top-Serbian-Brand.html">TOP SERBIAN BRAND</a>\n\n-Zlatara Andrejević&nbsp;je dobila takođe vredno priznanje kao jedna od 13 najboljih porodičnih firmi u Srbiji 2014. godine.&nbsp;<a href="http://nakit4yu.com/nagrada-za-zlataru-andrejevic/">VIP BizParter 2014</a>&nbsp;je priznanje koje tradicionalno dodeljuje specijalni žiri a organizatori su Privredna komora Srbije, VIP mobile i agencija Chapter4.\n-Zlatara Koralje ušla u <a href="http://www.ekapija.com/website/sr/page/1348756/Predstavljamo-vam-kandidate-za-nagradu-EY-Preduzetnik-godine-u-Srbiji" target="_blank">najuži izbor</a> za <a href="http://www.ey.com/cs/en/home/ey-serbia-eoy" target="_blank">EY Preduzetnik godine 2015</a>.\n\n[embedyt] http://www.youtube.com/watch?v=yX_ZIvS4Rqw[/embedyt]', 'O nama', '', 'inherit', 'closed', 'closed', '', '116-autosave-v1', '', '', '2016-12-09 18:13:34', '2016-12-09 18:13:34', '', 116, 'http://localhost/koral/2016/12/09/116-autosave-v1/', 0, 'revision', '', 0),
(127, 1, '2016-12-09 18:14:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=127', 0, 'ngg_gallery', '', 0),
(128, 1, '2016-12-09 18:14:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=128', 0, 'ngg_pictures', '', 0),
(129, 1, '2016-12-09 18:14:14', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:14', '2016-12-09 18:14:14', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=129', 0, 'ngg_pictures', '', 0),
(130, 1, '2016-12-09 18:14:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:15', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=130', 0, 'ngg_gallery', '', 0),
(131, 1, '2016-12-09 18:14:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=131', 0, 'ngg_pictures', '', 0),
(132, 1, '2016-12-09 18:14:16', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:16', '2016-12-09 18:14:16', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=132', 0, 'ngg_pictures', '', 0),
(133, 1, '2016-12-09 18:14:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=133', 0, 'ngg_pictures', '', 0),
(134, 1, '2016-12-09 18:14:17', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:17', '2016-12-09 18:14:17', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=134', 0, 'ngg_pictures', '', 0),
(135, 1, '2016-12-09 18:14:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=135', 0, 'ngg_pictures', '', 0),
(136, 1, '2016-12-09 18:14:18', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:18', '2016-12-09 18:14:18', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=136', 0, 'ngg_pictures', '', 0),
(137, 1, '2016-12-09 18:14:19', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:19', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=137', 0, 'ngg_pictures', '', 0),
(138, 1, '2016-12-09 18:14:19', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-12-09 18:14:19', '2016-12-09 18:14:19', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/koral/?p=138', 0, 'ngg_pictures', '', 0),
(139, 1, '2016-12-09 18:15:43', '2016-12-09 18:15:43', 'Kada je beogradski&nbsp;zlatar Andrej dobio sina Kostu, zaradovao se što će jednog dana svoju umetnost i svoju zlatarsku radnju imati kome da preda. Njega je, pak, u tajne zlatarstva, pre Drugog svetskog rata, uveo čuveni Stojan Oreščanin, u ono doba jedan od najznačajnijih zlatara Balkana.\r\n\r\n[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="0" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="1" slideshow_link_text="[Show slideshow]" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]Prva pitanja Kostina i očevi odgovori su: kako je važnija ljubav prema poslu i poštenje nego zarada, kako se lepota kuje i brusi i kako traži celog čoveka i celu porodicu i ceo život. Prvi Kostini pokušaji, zatim više decenija potpune predanosti i – zanat je ispečen. “Da bi se otac ponosio mnome! Da se čast imena ne izbriše!” U čuvenoj beogradskoj ulici, Bulevaru kralja Aleksandra, u broju 130, smeštena je zlatarska radnja iznad koje već 70 godina blješti firma “Koral”.\r\n\r\n&nbsp;\r\n\r\nNjen sadašnji vlasnik,&nbsp;zlatar Kosta Andrejević&nbsp;je tradicionalista i čovek modernog doba: u “umetnost Andrejevića” uneo je sopstvenu inventivnost, uneo praćenje svetskih kreativnih trendova i nove tehnologije, a i znanje stečeno u italijanskom gradu Vićenci, evropskom ogranku najprestižnije na svetu škole pri&nbsp;<a href="https://www.gia.edu/">Gemološkom institutu Amerike – GIA</a>.\r\n\r\nTradicija se nastavlja tako da se porodičnim poslom, juvelirstvom, sada bavi i treća generacija, unuci Andreja i Aleksandar, oboje diplomirani GIA stručnjaci za drago kamenje i dijamante.\r\n\r\nMalo bismo znali o svojoj prošlosti da nije potrebe čovekove da kuje nakit i da ga poklanja ženi. Nakitom se bogovima obraćalo, zbog dragog kamenja padali su i poljupci i glave… Nema bajke u kojoj se dobrota i ljubav ne nagrađuju draguljima… Oni koji prolaze pored izloga sa znakom “AK” , u najvećem beogradskom bulevaru, zastaju privučeni svetlucavim vilinskim svetom a da i nisu svesni čarolije.\r\n\r\nautor teksta Lidija Kovač\r\n\r\n-Zlatara Andrejević&nbsp;je u nezavisnom istraživanju za 2014. godine dobila laskavu titulu&nbsp;<a href="http://www.zlatara.net/srp8297/aktuelno/Zlatara-Andrejevic-je-Top-Serbian-Brand.html">TOP SERBIAN BRAND</a>\r\n\r\n-Zlatara Andrejević&nbsp;je dobila takođe vredno priznanje kao jedna od 13 najboljih porodičnih firmi u Srbiji 2014. godine.&nbsp;<a href="http://nakit4yu.com/nagrada-za-zlataru-andrejevic/">VIP BizParter 2014</a>&nbsp;je priznanje koje tradicionalno dodeljuje specijalni žiri a organizatori su Privredna komora Srbije, VIP mobile i agencija Chapter4.\r\n-Zlatara Koralje ušla u <a href="http://www.ekapija.com/website/sr/page/1348756/Predstavljamo-vam-kandidate-za-nagradu-EY-Preduzetnik-godine-u-Srbiji" target="_blank">najuži izbor</a> za <a href="http://www.ey.com/cs/en/home/ey-serbia-eoy" target="_blank">EY Preduzetnik godine 2015</a>.\r\n\r\n[embedyt] http://www.youtube.com/watch?v=yX_ZIvS4Rqw[/embedyt]', 'O nama', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2016-12-09 18:15:43', '2016-12-09 18:15:43', '', 116, 'http://localhost/koral/2016/12/09/116-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2016-12-09 18:26:40', '2016-12-09 18:26:40', '', 'Order &ndash; December 9, 2016 @ 06:26 PM', '', 'wc-processing', 'open', 'closed', 'order_584af7607164f', 'order-dec-09-2016-0626-po-podne', '', '', '2016-12-09 18:26:40', '2016-12-09 18:26:40', '', 0, 'http://localhost/koral/?post_type=shop_order&#038;p=140', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 9, 'order', '0'),
(2, 9, 'display_type', 'products'),
(3, 9, 'thumbnail_id', '31'),
(4, 10, 'order', '0'),
(5, 10, 'display_type', 'products'),
(6, 10, 'thumbnail_id', '32'),
(7, 11, 'product_count_product_tag', '1'),
(8, 12, 'product_count_product_tag', '1'),
(9, 10, 'product_count_product_cat', '7'),
(10, 13, 'product_count_product_tag', '2'),
(11, 14, 'order', '0'),
(12, 14, 'display_type', 'subcategories'),
(13, 14, 'thumbnail_id', '52'),
(14, 9, 'product_count_product_cat', '8'),
(15, 14, 'product_count_product_cat', '2'),
(16, 15, 'product_count_product_tag', '1'),
(17, 16, 'product_count_product_tag', '1'),
(18, 17, 'product_count_product_tag', '1'),
(19, 18, 'order', '0'),
(20, 18, 'display_type', ''),
(21, 18, 'thumbnail_id', '61'),
(22, 18, 'product_count_product_cat', '3'),
(23, 19, 'order', '0'),
(24, 19, 'display_type', 'subcategories'),
(25, 19, 'thumbnail_id', '67'),
(26, 19, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main', 'main', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(8, 'Top', 'top', 0),
(9, 'Nakit', 'nakit', 0),
(10, 'Satovi', 'satovi', 0),
(11, 'sat', 'sat', 0),
(12, 'Myota', 'myota', 0),
(13, 'alpina', 'alpina', 0),
(14, 'Prstenje', 'prstenje', 0),
(15, 'prsten', 'prsten', 0),
(16, 'bernadetta', 'bernadetta', 0),
(17, 'BEATRICE PRSTEN', 'beatrice-prsten', 0),
(18, 'Narukvice', 'narukvice', 0),
(19, 'Ogrlice', 'ogrlice', 0),
(20, 'Nakit', 'nakit', 0),
(21, 'Kruna', 'kruna', 0),
(22, 'Moda', 'moda', 0),
(23, 'Romantika', 'romantika', 0),
(24, 'Satovi', 'satovi', 0),
(25, 'Casio', 'casio', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(12, 2, 0),
(22, 2, 0),
(21, 2, 0),
(20, 2, 0),
(19, 2, 0),
(28, 8, 0),
(27, 8, 0),
(26, 8, 0),
(18, 5, 0),
(18, 11, 0),
(18, 12, 0),
(18, 10, 0),
(40, 10, 0),
(40, 13, 0),
(40, 3, 0),
(42, 10, 0),
(42, 3, 0),
(44, 10, 0),
(44, 13, 0),
(44, 3, 0),
(46, 10, 0),
(46, 3, 0),
(48, 10, 0),
(48, 3, 0),
(50, 10, 0),
(50, 3, 0),
(53, 9, 0),
(53, 14, 0),
(53, 15, 0),
(53, 16, 0),
(53, 3, 0),
(54, 9, 0),
(54, 14, 0),
(54, 17, 0),
(54, 3, 0),
(56, 9, 0),
(56, 3, 0),
(56, 18, 0),
(62, 9, 0),
(62, 18, 0),
(62, 3, 0),
(64, 9, 0),
(64, 18, 0),
(64, 3, 0),
(68, 9, 0),
(68, 19, 0),
(68, 3, 0),
(69, 5, 0),
(69, 9, 0),
(69, 19, 0),
(73, 9, 0),
(73, 19, 0),
(73, 3, 0),
(76, 9, 0),
(76, 19, 0),
(76, 3, 0),
(100, 2, 0),
(77, 20, 0),
(84, 21, 0),
(86, 22, 0),
(89, 23, 0),
(92, 24, 0),
(94, 25, 0),
(118, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'product_type', '', 0, 14),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_type', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 3),
(9, 9, 'product_cat', '', 0, 8),
(10, 10, 'product_cat', '', 0, 7),
(11, 11, 'product_tag', '', 0, 1),
(12, 12, 'product_tag', '', 0, 1),
(13, 13, 'product_tag', '', 0, 2),
(14, 14, 'product_cat', '', 9, 2),
(15, 15, 'product_tag', '', 0, 1),
(16, 16, 'product_tag', '', 0, 1),
(17, 17, 'product_tag', '', 0, 1),
(18, 18, 'product_cat', '', 9, 3),
(19, 19, 'product_cat', '', 9, 3),
(20, 20, 'category', '', 0, 1),
(21, 21, 'category', '', 0, 1),
(22, 22, 'category', '', 0, 1),
(23, 23, 'category', '', 0, 1),
(24, 24, 'category', '', 0, 1),
(25, 25, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'koral'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'custom_admin_pointers11_5_new_items'),
(13, 1, 'show_welcome_panel', '1'),
(64, 4, 'session_tokens', 'a:1:{s:64:"460cce2e0c20aaacb8bbba79ebff817976b131a8fc2900ac301a56a6242e873a";a:4:{s:10:"expiration";i:1481480726;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1481307926;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(17, 1, 'wp_user-settings-time', '1481306045'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(21, 1, 'nav_menu_recently_edited', '8'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:"message";s:130:"Since you are new to Yoast SEO you can configure the <a href="http://localhost/koral/wp-admin/?page=wpseo_configurator">plugin</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:31:"wpseo-dismiss-onboarding-notice";s:5:"nonce";N;s:8:"priority";d:0.8000000000000000444089209850062616169452667236328125;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:165:"Don''t miss your crawl errors: <a href="http://localhost/koral/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:14:"manage_options";s:16:"capability_check";s:3:"all";}}}'),
(25, 2, 'nickname', 'Andjela'),
(26, 2, 'first_name', 'Andjela'),
(27, 2, 'last_name', 'Jovanovic'),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'wp_capabilities', 'a:1:{s:12:"shop_manager";b:1;}'),
(35, 2, 'wp_user_level', '9'),
(36, 2, '_yoast_wpseo_profile_updated', '1481306815'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 3, 'nickname', 'Ivana'),
(39, 3, 'first_name', 'Ivana'),
(40, 3, 'last_name', 'Zivaljevic'),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'comment_shortcuts', 'false'),
(44, 3, 'admin_color', 'fresh'),
(45, 3, 'use_ssl', '0'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(48, 3, 'wp_user_level', '7'),
(49, 3, '_yoast_wpseo_profile_updated', '1481306858'),
(50, 3, 'dismissed_wp_pointers', ''),
(51, 4, 'nickname', 'Ljiljana'),
(52, 4, 'first_name', 'Ljiljana'),
(53, 4, 'last_name', 'Jovicic'),
(54, 4, 'description', ''),
(55, 4, 'rich_editing', 'true'),
(56, 4, 'comment_shortcuts', 'false'),
(57, 4, 'admin_color', 'fresh'),
(58, 4, 'use_ssl', '0'),
(59, 4, 'show_admin_bar_front', 'true'),
(60, 4, 'wp_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(61, 4, 'wp_user_level', '0'),
(62, 4, '_yoast_wpseo_profile_updated', '1481306893'),
(63, 4, 'dismissed_wp_pointers', ''),
(65, 4, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(67, 4, 'billing_first_name', 'Ljiljna'),
(68, 4, 'billing_last_name', 'Jovicic'),
(69, 4, 'billing_company', ''),
(70, 4, 'billing_email', 'ljiljana@gmail.com'),
(71, 4, 'billing_phone', '0640882402'),
(72, 4, 'billing_country', 'RS'),
(73, 4, 'billing_address_1', 'Tosin Bunar'),
(74, 4, 'billing_address_2', '132'),
(75, 4, 'billing_city', 'Beograd'),
(76, 4, 'billing_state', 'Srbija'),
(77, 4, 'billing_postcode', '11000');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'koral', '$P$BO98xj8oSbgLDGvcy2rnt3nxSRdpUr1', 'koral', 'koral@gmail.com', '', '2016-12-09 15:59:41', '', 0, 'koral'),
(2, 'Andjela', '$P$B1cOwijVmfd8hpFVR22JlsSwyQShEJ/', 'andjela', 'andjela@gmail.com', '', '2016-12-09 18:06:55', '1481306816:$P$BRvfEkfY85SZqW8qWvDC5vOzUST1fO.', 0, 'Andjela Jovanovic'),
(3, 'Ivana', '$P$BOBCSWC/4ElDTVquAVAjK73X7VWec81', 'ivana', 'ivana@gmail.com', '', '2016-12-09 18:07:38', '1481306859:$P$BuuLjjifhD2nShbiosBld0ispNrGHu/', 0, 'Ivana Zivaljevic'),
(4, 'Ljiljana', '$P$BHqsVbUMTCn3NmltMKMx7YCVV6k0f71', 'ljiljana', 'ljiljana@gmail.com', '', '2016-12-09 18:08:13', '1481306894:$P$Biii5TFfrIFsNMyuu8FQ5mcrMor3yV/', 0, 'Ljiljana Jovicic');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` longtext,
  `attribute_type` varchar(200) NOT NULL,
  `attribute_orderby` varchar(200) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '1'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '42'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '100000'),
(6, 1, '_line_total', '100000'),
(7, 1, '_line_subtotal_tax', '20000'),
(8, 1, '_line_tax', '20000'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:5:"20000";}s:8:"subtotal";a:1:{i:1;s:5:"20000";}}'),
(10, 2, 'rate_id', '1'),
(11, 2, 'label', 'Tax'),
(12, 2, 'compound', '0'),
(13, 2, 'tax_amount', '20000'),
(14, 2, 'shipping_tax_amount', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'ALPINA - AL-372GR4FBS6', 'line_item', 140),
(2, 'TAX-1', 'tax', 140);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(6, '4', 'a:4:{s:21:"removed_cart_contents";s:6:"a:0:{}";s:14:"shipping_total";N;s:21:"chosen_payment_method";s:3:"cod";s:8:"customer";s:447:"a:14:{s:8:"postcode";s:5:"11000";s:4:"city";s:7:"Beograd";s:9:"address_1";s:12:"Tosin Bunar ";s:9:"address_2";s:3:"132";s:5:"state";s:6:"Srbija";s:7:"country";s:2:"RS";s:17:"shipping_postcode";s:5:"11000";s:13:"shipping_city";s:7:"Beograd";s:18:"shipping_address_1";s:12:"Tosin Bunar ";s:18:"shipping_address_2";s:3:"132";s:14:"shipping_state";s:6:"Srbija";s:16:"shipping_country";s:2:"RS";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;}";}', 1481480740);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) NOT NULL,
  `zone_order` bigint(20) NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method_id` varchar(255) NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, '', '', '20.0000', 'Tax', 1, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
