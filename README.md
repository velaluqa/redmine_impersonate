redmine_impersonate
===================

Allows administrators to impersonate other users. This is helpful in
setting up roles and permissions for redmine.

After installation you can see "Impersonate" links in the admin user
list and on the users profile.

To stop impersonating you will have a link besides the "Sign out" link.

Installation:
-------------

- To install plugin, go to plugins folder of your Redmine repository and run:

        git clone http://github.com/velaluqa/redmine_impersonate

- Run db migrations for the plugin

        rake redmine:plugins:migrate RAILS_ENV=production

- Bundle install all the gems using the following command

        bundle install

Credits
-------

This plugin has "evolved" from [arkhitech/redmine_impersonate](https://github.com/arkhitech/redmine_impersonate).
