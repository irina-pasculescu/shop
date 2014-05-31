README
======

This directory should be used to place project specfic documentation including
but not limited to project notes, generated API/phpdoc documentation, or
manual files generated or hand written.  Ideally, this directory would remain
in your development environment only and should not be deployed with your
application to it's final production location.


Setting Up Your VHOST
=====================

The following is a sample VHOST you might want to consider for your project.

<VirtualHost *:80>
    ServerName shop.localhost
    DocumentRoot /Users/irina/www/shop/public
    <Directory "/Users/irina/www/shop/public">
       Options Indexes FollowSymLinks MultiViews
       AllowOverride All
       Order allow,deny
       allow from all
    </Directory>
</VirtualHost>


127.0.0.1 shop.localhost
