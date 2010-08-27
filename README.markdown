Padrino and Riak Sample Application
=========================================

This is a sample application showing how to use [Padrino](http://padrinorb.com) with [Riak via Ripple](http://github.com/seancribbs/ripple)

Directions
----------
I'm going to assume you're using ['rvm'](http://rvm.beginrescueend.com). If not, *a pox on all your houses!*

Anyway. Ensure you have riak running locally. Do the following:
	rvm create gemset padrino-ripple-demo
	git clone git://github.com/lusis/padrino-ripple-demo.git ripple-blog
	rvm gemset use padrino-ripple-demo
	gem install bundler --pre
	cd ripple-blog
	bundle install
	bundle exec padrino start

You should now be able to go to [here](http://localhost:3000/post).

The layout is a stripped down version of the one used in the Padrino admin interface.
Missing Functionality
---------------------
 - No exceptions thrown
  Exceptions don't appear to be working properly. I'm working on it

Hopefully you can see from the _app/controllers/post.rb_ how to convert Ripple conventions into Padrino conventions. That's the real goal and usually the hardest part of using any new framework.
