require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'app'


# require_relative '../runner.rb'
# require_relative "../app/park.rb"
