# require_relative '../config/environment.rb'
# require_relative "../app/park.rb"

require_relative './config/environment.rb'

class Runner

  def greet_user
    puts "Hello! Welcome to the National Parks Service! Please select from one of the options below:"
    puts "1. Find a park by name"
    puts "2. Find all parks by state"
    puts "3. List all of the parks (there are 497 of them!)"
  end



  def run
    greet_user
  end


end
