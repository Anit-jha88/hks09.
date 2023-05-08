<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mkstecfw_hks09' );

/** Database username */
define( 'DB_USER', 'mkstecfw_hks09' );

/** Database password */
define( 'DB_PASSWORD', 'i,^KD$S5Et%&' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '!1dw^O&~tSPpY.p0>}cM$mZSlEey{G]$g`Tue>C3X$}]7EO%5A6f;Xi!h`k_?ZQD' );
define( 'SECURE_AUTH_KEY',  'DIusg}S{|%Y8;TQ-{5fo{/FtRt924b<>&Z%j:6.K(6#}j(Z~G58Z@DFo*!?@>2m6' );
define( 'LOGGED_IN_KEY',    '|{mmu)}t4+#np^VECJh1^[sgOmcd~xA9Q)V8-F0?dm&!_(|vAiv`0:m/Xo{7=v0b' );
define( 'NONCE_KEY',        'g=5xrE^uNZRV1bG-5BRMR$KnH%[_fH@&A.J`UUTo]B6A>MXsqaZi!W5jH&*rCR!+' );
define( 'AUTH_SALT',        'n~s #cT,/a-pY`XY~rh!7)#A!UdhgbM?n]&u~7Hoz6:W!L+S[;l#(c/=!M2;jXe*' );
define( 'SECURE_AUTH_SALT', ';W$=Ah0uH<hgwnF:8n@sS:g8$[G~&ve;?v,ZC#70Lo-]YyRl2jGCU9hak<jk]~-f' );
define( 'LOGGED_IN_SALT',   'z|U(M?`ID+9?>h~38MPmDzO44>,515~y72MH<^kfN..4~mc8@usOUh`xg3WWD(LP' );
define( 'NONCE_SALT',       'c7,*]Cl^@f.}C{>aKH],i>tsWUO^Fcl=!il598X]nUBuw{YhQ**Dz$@t(QvkW1 J' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'hk_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
