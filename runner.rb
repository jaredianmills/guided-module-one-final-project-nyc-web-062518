# require_relative '../config/environment.rb'
# require_relative "../app/park.rb"

require_relative './config/environment.rb'

class Runner


  def tree_art
    puts "               ,@@@@@@@,"
    puts "       ,,,.   ,@@@@@@/@@,  .oo88888o."
    puts "    ,&%%&%&&%,@@@@@/@@@@@@,8888\\88/88o"
    puts "    ,&%%&%&&%,@@@@@/@@@@@@,8888\\88/888o"
    puts "   ,%&\\%&&%&&%,@@@\\@@@/@@@ 88\\88888/888'"
    puts "   %&&%&%&/%&&%@@\@@/ /@@@ 88888\\8888888'"
    puts "   %&&%/ %&%%&&@@\\ V /@@'  `88\\8 `/888'"
    puts "   `&%\\ ` /%&'     |.|       \\ '|8'"
    puts "       |o|         | |         | |"
    puts "       |.|         | |         | |"
    puts "    \\\\/ ._\\//__/__/  ,\\_//__\\\\/.  \\_//__/_"

  end

  def mountains_and_road
    puts "                                                  _"
    puts "                       ___                       (_)"
    puts "                     _/XXX\\"
    puts "      _             /XXXXXX\\_                                    __"
    puts "      X\\__    __   /X XXXX XX\\                          _       /XX\\__      ___"
    puts "          \\__/  \\_/__       \\ \\                       _/X\\__   /XX XXX\\____/XXX\\"
    puts "        \\  ___   \\/  \\_      \\ \\               __   _/      \\_/  _/  -   __  -  \\__/"
    puts "       ___/   \\__/   \\ \\__     \\\\__           /  \\_//  _ _ \\  \\     __  /  \\____//"
    puts "      /   __    \\ /      \\ \\_   _//_\\___     _/    //           \\___/  \\/     __/"
    puts "       __/_______\\________\\__\\_/________\\_ _/_____/_____________/_______\\____/_______"
    puts "                                         /|\\"
    puts "                                        / | \\"
    puts "                                       /  |  \\"
    puts "                                      /   |   \\"
    puts "                                     /    |    \\"
    puts "                                    /     |     \\"
    puts "                                   /      |      \\"
    puts "                                  /       |       \\"
    puts "                                 /        |        \\"
    puts "                                /         |         \\"
  end

  def happy_trails
    puts <<-HEREDOC
     /$$   /$$  /$$$$$$  /$$$$$$$  /$$$$$$$   /$$     /$$
    | $$  | $$ /$$__  $$| $$__  $$| $$__  $$ |  $$   /$$/
    | $$  | $$| $$  \\ $$| $$  \\ $$| $$  \\ $$ \\   $$ /$$/
    | $$$$$$$$| $$$$$$$$| $$$$$$$/| $$$$$$$/  \\  $$$$/
    | $$__  $$| $$__  $$| $$____/ | $$____/    \\  $$/
    | $$  | $$| $$  | $$| $$      | $$          | $$
    | $$  | $$| $$  | $$| $$      | $$          | $$
    |__/  |__/|__/  |__/|__/      |__/          |__/
    HEREDOC
    sleep(1)

    puts <<-HEREDOC
    /$$$$$$$$ /$$$$$$$   /$$$$$$  /$$$$$$ /$$        /$$$$$$
    |__  $$__/| $$__  $$ /$$__  $$|_  $$_/| $$       /$$__  $$
       | $$   | $$  \\ $$| $$  \\ $$  | $$  | $$      | $$  \\__/
       | $$   | $$$$$$$/| $$$$$$$$  | $$  | $$      |  $$$$$$
       | $$   | $$__  $$| $$__  $$  | $$  | $$       \\____  $$
       | $$   | $$  \\ $$| $$  | $$  | $$  | $$       /$$  \\ $$
       | $$   | $$  | $$| $$  | $$ /$$$$$$| $$$$$$$$|  $$$$$$/
       |__/   |__/  |__/|__/  |__/|______/|________/ \\______/
    HEREDOC
  end

  def greet_user
    puts "Welcome to..."
    sleep(1)
    happy_trails
    sleep(1)
    mountains_and_road
    sleep(1)
    puts "=================================================="
    puts "*Data by the U.S. National Parks Service"
    puts "=================================================="
  end

  def list_options
    puts "=================================================="
    puts "Please select from one of the options below:"
    puts "1. Find a park by name"
    puts "2. Find all parks by state"
    puts "3. List all of the parks (there are 497 of them!)"
    puts "Type 'leave' to leave the application"
  end

  def list_options_for_park
    puts "=================================================="
    puts "What would you like to know about this park?"
    puts "1. Park description"
    puts "2. States(s) that the park is in"
    puts "3. Directions information"
    puts "4. Directions on the web"
    puts "5. Park weather"
    puts "6. Latitude and Longitude"
    puts "7. Park designation"
    puts "8. Visit the park on the web"
    puts "9. Return to previous menu"
  end

  def find_park_by_name(name)
    Park.all.find {|park| park.full_name.downcase.include?(name.downcase)}
  end

  def find_parks_by_state(state)
    # tree_art
    # sleep(1)
    Park.all.select {|park| park.states.downcase.include?(state.downcase)}
    # parks_by_state.each {|park| puts park.full_name}
  end

  def print_parks_by_state(state)
    sleep(0.5)
    tree_art
    sleep(0.1)
    parks_by_state = find_parks_by_state(state)
    parks_by_state.each do |park|
      sleep(0.05)
      puts park.full_name
    end
  end

  def find_all_parks
    sleep(0.1)
    tree_art
    sleep(0.1)
    Park.all.each do |park|
      sleep(0.01)
      puts park.full_name
    end
  end

  def get_park_description(park)
    park.description
  end

  def get_states_park_is_in(park)
    park.states
  end

  def get_directions_information(park)
    park.directions_info
  end

  def get_directions_on_the_web(park)
    park.directions_url
  end

  def get_park_weather(park)
    park.weather_info
  end

  def get_lat_and_long(park)
    park.latitude_longitude
  end

  def get_park_designation(park)
    park.designation
  end

  def get_park_website(park)
    park.url
  end

  def prompt_user_main_menu
    prompt = TTY::Prompt.new
    choices = ["1. Find a park by name", "2. Find all parks by state", "3. List all of the parks (there are 497 of them!)", "4. Have you visited any parks? Add them to your list!", "5. See all the parks you have visited", "6. Want to visit a park in the future? Add it to your list!", "7. See all the parks you have added to your visitation wishlist", "8. Exit the application"]
    user_input = prompt.select("Please select from one of the options below:", choices)
    user_input = user_input.split(".")[0]
  end

  def prompt_user_park_info
    prompt = TTY::Prompt.new
    choices = ["1. Park description", "2. States(s) that the park is in", "3. Directions information", "4. Directions on the web", "5. Park weather", "6. Latitude and Longitude", "7. Park designation", "8. Visit the park on the web", "9. Return to previous menu"]
    user_input = prompt.select("What would you like to know about this park?", choices)
    user_input = user_input.split(".")[0]
  end

  def get_user_name
    puts "Please enter your name:"
    user_name = gets.strip
  end

  def find_user_in_database(user_name)
    User.all.find{|user| user.name.downcase == user_name.downcase}
  end

  def user_exists?(user_name)
    find_user_in_database(user_name)
  end

  def add_park_to_visited_parks(park, current_user)
    if UserVisitedPark.all.find {|visited_park| visited_park.user_id == current_user.id && visited_park.park_id == park.id}
      puts "=================================================="
      puts "You have already added that park to the list of parks that you have visisted."
      puts "=================================================="
    else
    UserVisitedPark.create(user_id: current_user.id, park_id: park.id)
    puts "=================================================="
    tree_art
    puts "You have added #{park.full_name} to the list of parks you have visted."
    puts "=================================================="
    end
  end

  def add_park_to_wishlist_parks(park, current_user)
    if UserWishlistPark.all.find {|wishlist_park| wishlist_park.user_id == current_user.id && wishlist_park.park_id == park.id}
      puts "=================================================="
      puts "You have already added that park to the list of parks that you have visisted."
      puts "=================================================="
    else
      UserWishlistPark.create(user_id: current_user.id, park_id: park.id)
      puts "=================================================="
      tree_art
      puts "You have added #{park.full_name} to your visitation wishlist."
      puts "=================================================="
    end
  end

  def print_users_visited_parks(user)
    puts "=================================================="
    puts small_mountains
    puts "You have visited the following parks:"
    parks = user.visited_parks
    parks.each {|park| puts park.full_name}
    puts "=================================================="
  end

  def print_users_wishlist_parks(user)
    puts "=================================================="
    small_mountains
    puts "The following parks are on your visitation wishlist:"
    parks = user.wishlist_parks
    parks.each {|park| puts park.full_name}
    puts "=================================================="
  end


  def park_info_options_navigator(park, current_user)
    # user_input = gets.strip
    user_input = prompt_user_park_info
    until user_input == "9"
      if user_input == "1"
        sleep(0.1)
        puts "=================================================="
        puts get_park_description(park)
        puts "=================================================="
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "2"
        sleep(0.1)
        puts "=================================================="
        puts "#{park.full_name} is in the following state(s): #{get_states_park_is_in(park)}"
        puts "=================================================="
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "3"
        sleep(0.1)
        puts "=================================================="
        puts get_directions_information(park)
        puts "=================================================="
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "4"
        Launchy.open(get_directions_on_the_web(park))
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "5"
        sleep(0.1)
        puts "=================================================="
        puts get_park_weather(park)
        puts "=================================================="
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "6"
        sleep(0.1)
        puts "=================================================="
        puts get_lat_and_long(park)
        puts "=================================================="
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "7"
        if get_park_designation(park) == ""
          sleep(0.1)
          puts "=================================================="
          puts "I'm sorry, I do not have that information."
          puts "=================================================="
        else
          sleep(0.1)
          puts "=================================================="
          puts get_park_designation(park)
          puts "=================================================="
        end
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      elsif user_input == "8"
        Launchy.open(get_park_website(park))
        # list_options_for_park
        # user_input = gets.strip
        user_input = prompt_user_park_info
      # elsif user_input == "9"
        # list_options
        # user_input = gets.strip
        # main_menu
      # else
      #   puts "I'm sorry, I don't understand your request. Please try again:"
      #   user_input = ""
      #   # list_options
      #   # main_menu
      end

      # user_input
    end
    # user_input = gets.strip
    # user_input = prompt_user_main_menu
    user_input = ""
    main_menu(current_user)
  end

  def main_menu(current_user)
    # puts "1. Find a park by name"
    # puts "2. Find all parks by state"
    # puts "3. List all of the parks (there are 497 of them!)"
    # puts "Type 'leave' to leave the application"
    # user_input = gets.strip
    user_input = prompt_user_main_menu
    until user_input == "8"
      if user_input == "1"
        puts "Please input a park name"
        park_name = gets.strip
          if park = find_park_by_name(park_name)
            sleep(0.3)
            puts "=================================================="
            small_mountains
            puts "=================================================="
            puts "You have selected #{park.full_name}."
            puts "=================================================="
            # list_options_for_park
            # user_input = gets.strip
            # user_input = prompt_user_park_info
            park_info_options_navigator(park, current_user)
            user_input = "8"
        else
          sleep(0.1)
          puts "I'm sorry, but I am unable to find that park. Please try again:"
        end
      elsif user_input == "2"
        sleep(0.1)
        puts "Please input a state's two letter code"
        state = gets.strip
        if find_parks_by_state(state).size > 0
          print_parks_by_state(state)
          # list_options
          # user_input = gets.strip
          user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "I'm sorry, but I am unable to find that state. Please try again:"
        end
      elsif user_input == "3"
        find_all_parks
        # list_options
        # user_input = gets.strip
        user_input = prompt_user_main_menu
      elsif user_input == "4"
        sleep(0.1)
        puts "Please enter the name of a park:"
        park_name = gets.strip
        if park = find_park_by_name(park_name)
          sleep(0.1)
          add_park_to_visited_parks(park, current_user)
          user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "I'm sorry, but I am unable to find that park. Please try again:"
        end
      elsif user_input == "5"
        if current_user.visited_parks.size > 0
          sleep(0.1)
          print_users_visited_parks(current_user)
          user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "We couldn't find any parks that you have visited."
          user_input = prompt_user_main_menu
        end
      elsif user_input == "6"
        sleep(0.1)
        puts "Please enter the name of a park:"
        park_name = gets.strip
        if park = find_park_by_name(park_name)
          sleep(0.1)
          add_park_to_wishlist_parks(park, current_user)
          user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "I'm sorry, but I am unable to find that park. Please try again:"
        end
      elsif user_input == "7"
        if current_user.wishlist_parks.size > 0
          sleep(0.1)
          print_users_wishlist_parks(current_user)
          user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "We couldn't find any parks on your visitation wishlist."
          user_input = prompt_user_main_menu
        end
      else
        park_name = gets.strip
        add_park_to_visited_parks(park_name, current_user)
      end
    end
  end

  def big_mountains
  puts  "          /\\"
  puts  "         /**\\"
  puts  "        /****\\   /\\"
  puts  "       /      \\ /**\\"
  puts  "      /  /\\    /    \\        /\\    /\\  /\\      /\\            /\\/\\/\\  /\\"
  puts  "     /  /  \\  /      \\      /  \\/\\/  \\/  \\  /\\/  \\/\\  /\\  /\\/ / /  \\/  \\"
  puts  "    /  /    \\/ /\\     \\    /    \\ \\  /    \\/ /   /  \\/  \\/  \\  /    \\   \\"
  puts  "   /  /      \\/  \\/\\   \\  /      \\  /    /    \\"
  puts  "__/__/_______/___/__\____\\__________________________________________________"
  end


  def small_mountains
    puts "            o\\"
    puts "  _________/__\\_____________"
    puts ",'-..                   `- |"
    puts "(____'.       ,-.      '  ||"
    puts "  |          /\\,-\\   ,-.   |"
    puts "  |      ,-./     \\ /'.-\\  |"
    puts "  |     /-.,\\      /     \\ |"
    puts "  |    /     \\    ,-.     \\"
    puts "  |___/_______\\__/___\\_____\\"
  end


  def run
    # mountains_and_road
    # happy_trails
    # tree_art
    greet_user
    user_name = get_user_name
    if user_exists?(user_name)
      current_user = find_user_in_database(user_name)
    else
      User.create(name: user_name)
      current_user = find_user_in_database(user_name)
    end
    puts "=================================================="
    puts "Welcome, #{current_user.name}"
    puts "=================================================="
    main_menu(current_user)
    sleep(0.1)
    puts "=================================================="
    puts "Thank you for using Happy Trails!"
    puts "=================================================="
    sleep(0.1)
    big_mountains
  end


end
