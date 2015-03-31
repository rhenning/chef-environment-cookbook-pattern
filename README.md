# chef-environment-cookbook-pattern
This repo is a place to play around with a take on Jamie Winsor's
[Environment Cookbook pattern](http://blog.vialstudios.com/the-environment-cookbook-pattern/)
for Chef. 

Cookbooks in this directory have significant naming conventions:

* `wl_`  - an application or library cookbook. these are reusable building blocks.
* `wlw_` - a wrapper cookbook. this cookbook wraps a community cookbook or extends.
* `wls_` - a settings cookbook. this cookbook contains a collection of attributes.
* `wle_` - an environment cookbook. this cookbook implements the environment pattern.
* `wlr_` - a role cookbook. (not quite sure if this is needed yet or if env will do.)

A few things of note:

* Most of these cookbooks have example [TestKitchen](http://kitchen.ci/) tests.
 * Try running `kitchen test` in one of the cookbook dirs.
* All cookbooks follow the [Berkshelf](http://berkshelf.com/) development pattern.
 * `Berksfile.lock` files are excluded via `.gitignore` in most cookbooks. This is intended. 
 * `wle_` environment cookbooks **must** have their `Berksfile.lock` checked into git.
  * This is the secret sauce that locks down cookbook dependencies so that we can build
identical machines after the state of the Chef repository has changed.
  * It'd be nice to automate this part of the workflow somehow...

To generate an environment cookbook dependency graph (assuming you have ChefDK installed)

    $ cd CHEF_REPO_ROOT/cookbooks/wle_ ...
    // make sure Berksfile.lock *is not* in ./.gitignore
    $ rm Berksfile.lock
    $ chef exec berks

To pin these locked cookbooks in a particular chef environment:

    // try something like CLIENT-ROLE-ENVIRONMENT for CHEF_ENV_NAME.
    // ex: widgetsinc-app-dev
    $ chef exec berks apply CHEF_ENV_NAME
