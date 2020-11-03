require 'capybara/rspec'
require 'PG'
require './app/app'

Capybara.app = BookmarkManager
