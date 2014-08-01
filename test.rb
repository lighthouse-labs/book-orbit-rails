#!/usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby

require ::File.expand_path('../config/environment', __FILE__)


Bookmark.create({:url => 'http://www.google.com'})
