<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'koral');

/** MySQL database username */
define('DB_USER', 'koral');

/** MySQL database password */
define('DB_PASSWORD', 'koral');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '?E!eb#&Yg(J-v=9gilv_X_V4~~iS]U.D;wK>%]Otcn-xt>O_Jd$:q!>/WR~t%=ef');
define('SECURE_AUTH_KEY',  'yBAj%iVOdD|*FNLqi|0/U<91s<N]S_+1H[6a4C}7CDQ=uW4|]7^<L8|0eFwhKT}p');
define('LOGGED_IN_KEY',    '(vQ 8p{fn&`PMOdikrw3V:6s(dN~%@F83C=x2RY>BzUh!fmL;N]87T9v#MMLDaMl');
define('NONCE_KEY',        'f/n~<+dV^+[;-rX~`$.trEuG zss[Bl~RG0VjmP>_%N1J3^ -4DgquZ:tRIr$V&o');
define('AUTH_SALT',        'Ok}c.|,CU48q)BxtSQIJod@mQ?&q%B0/1nPi%,l#9[>Lq/ONmc[ a)ZkOb5lE<5T');
define('SECURE_AUTH_SALT', '^T4{CUTO6P05z*sA_Cqh0-+j0vE&pKkPr)3#k~;0F_C[<7oQrA`+c->-tF&w>*`^');
define('LOGGED_IN_SALT',   'YL=:k+y3]b<@z<O)Vei-6swc{Pt1tU4|>A.SHZ)ObX-(dp/1k[6u`VYrRdv|1zZM');
define('NONCE_SALT',       'l-gkq+zK10m_xtO,RYpf}]!q^4c91}|q|8*xDb`q>m#h%IdX*Rq<rOX))fA<U6Y|');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
