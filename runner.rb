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
    puts "      /   __    \\ /      \\ \\_   _//_\\___    _/    //           \\___/  \\/     __/"
    puts "       __/_______\\________\\__\\_/________\\__/_____/_____________/_______\\____/_______"
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


  def find_park_by_name
    Park.all.find {|park| park.full_name.downcase.include?(@park_name.downcase)}
  end

  def find_parks_by_state
    Park.all.select {|park| park.states.downcase.include?(@state.downcase)}
  end

  def print_parks_by_state
    sleep(0.5)
    tree_art
    sleep(0.1)
    parks_by_state = find_parks_by_state
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

  def get_park_description
    @park.description
  end

  def get_states_park_is_in
    @park.states
  end

  def get_directions_information
    @park.directions_info
  end

  def get_directions_on_the_web
    @park.directions_url
  end

  def get_park_weather
    @park.weather_info
  end

  def get_lat_and_long
    @park.latitude_longitude
  end

  def get_park_designation
    @park.designation
  end

  def get_park_website
    @park.url
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
    @user_name = gets.strip
  end

  def find_user_in_database
    User.all.find{|user| user.name.downcase == @user_name.downcase}
  end

  def user_exists?
    find_user_in_database
  end

  def add_park_to_visited_parks
    if UserVisitedPark.all.find {|visited_park| visited_park.user_id == @current_user.id && visited_park.park_id == @park.id}
      puts "=================================================="
      puts "You have already added that park to the list of parks that you have visisted."
      puts "=================================================="
    else
      @added_park_visit = UserVisitedPark.new(user_id: @current_user.id, park_id: @park.id)
      @added_park_visit.save
      puts "=================================================="
      tree_art
      puts "You have added #{@park.full_name} to the list of parks you have visted."
      puts "=================================================="
    end
  end

  def get_user_visited_parks
    users_visited_parks = UserVisitedPark.all.select {|visited_park| visited_park.user_id == @current_user.id}
    users_visited_parks.map {|visited_park| visited_park.park}
  end

  def print_users_visited_parks
    puts "=================================================="
    puts small_mountains
    puts "You have visited the following parks:"
    parks = get_user_visited_parks
    parks.each {|park| puts park.full_name}
    puts "=================================================="
  end

  def add_park_to_wishlist_parks
    if UserWishlistPark.all.find {|wishlist_park| wishlist_park.user_id == @current_user.id && wishlist_park.park_id == @park.id}
      puts "=================================================="
      puts "You have already added that park to the list of parks that you have visisted."
      puts "=================================================="
    else
      added_park_wishlist = UserWishlistPark.new(user_id: @current_user.id, park_id: @park.id)
      added_park_wishlist.save
      puts "=================================================="
      tree_art
      puts "You have added #{@park.full_name} to your visitation wishlist."
      puts "=================================================="
    end
  end

  def get_user_wishlist_parks
    users_wishlist_parks = UserWishlistPark.all.select {|wishlist_park| wishlist_park.user_id == @current_user.id}
    parks = users_wishlist_parks.map {|wishlist_park| wishlist_park.park}
  end

  def print_users_wishlist_parks
    puts "=================================================="
    small_mountains
    parks = get_user_wishlist_parks
    puts "The following parks are on your visitation wishlist:"
    parks.each {|park| puts park.full_name}
    puts "=================================================="
  end


  def park_info_options_navigator
    @user_input = prompt_user_park_info
    until @user_input == "9"
      if @user_input == "1"
        sleep(0.1)
        puts "=================================================="
        puts get_park_description
        puts "=================================================="
        @user_input = prompt_user_park_info
      elsif @user_input == "2"
        sleep(0.1)
        puts "=================================================="
        puts "#{@park.full_name} is in the following state(s): #{get_states_park_is_in}"
        puts "=================================================="
        @user_input = prompt_user_park_info
      elsif @user_input == "3"
        sleep(0.1)
        puts "=================================================="
        puts get_directions_information
        puts "=================================================="
        @user_input = prompt_user_park_info
      elsif @user_input == "4"
        Launchy.open(get_directions_on_the_web)
        @user_input = prompt_user_park_info
      elsif @user_input == "5"
        sleep(0.1)
        puts "=================================================="
        puts get_park_weather
        puts "=================================================="
        @user_input = prompt_user_park_info
      elsif @user_input == "6"
        sleep(0.1)
        puts "=================================================="
        puts get_lat_and_long
        puts "=================================================="
        @user_input = prompt_user_park_info
      elsif @user_input == "7"
        if get_park_designation == ""
          sleep(0.1)
          puts "=================================================="
          puts "I'm sorry, I do not have that information."
          puts "=================================================="
        else
          sleep(0.1)
          puts "=================================================="
          puts get_park_designation
          puts "=================================================="
        end
        @user_input = prompt_user_park_info
      elsif @user_input == "8"
        Launchy.open(get_park_website)
        @user_input = prompt_user_park_info
      end
    end
    @user_input = ""
    main_menu
  end

  def main_menu
    @user_input = prompt_user_main_menu
    until @user_input == "8"
      if @user_input == "1"
        puts "Please input a park name"
        @park_name = gets.strip
          if @park = find_park_by_name
            sleep(0.3)
            puts "=================================================="
            small_mountains
            puts "=================================================="
            puts "You have selected #{@park.full_name}."
            puts "=================================================="
            park_info_options_navigator
            @user_input = "8"
        else
          sleep(0.1)
          puts "=================================================="
          puts "I'm sorry, but I am unable to find that park. Please try again:"
          puts "=================================================="
        end
      elsif @user_input == "2"
        sleep(0.1)
        puts "Please input a state's two letter code"
        @state = gets.strip
        if find_parks_by_state.size > 0
          print_parks_by_state
          @user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "=================================================="
          puts "I'm sorry, but I am unable to find that state. Please try again:"
          puts "=================================================="
        end
      elsif @user_input == "3"
        find_all_parks
        @user_input = prompt_user_main_menu
      elsif @user_input == "4"
        sleep(0.1)
        puts "Please enter the name of a park:"
        @park_name = gets.strip
        if @park = find_park_by_name
          sleep(0.1)
          add_park_to_visited_parks
          @user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "=================================================="
          puts "I'm sorry, but I am unable to find that park. Please try again:"
          puts "=================================================="
        end
      elsif @user_input == "5"
        if get_user_visited_parks.size > 0
          sleep(0.1)
          print_users_visited_parks
          @user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "=================================================="
          puts "I couldn't find any parks that you have visited."
          puts "=================================================="
          @user_input = prompt_user_main_menu
        end
      elsif @user_input == "6"
        sleep(0.1)
        puts "Please enter the name of a park:"
        @park_name = gets.strip
        if @park = find_park_by_name
          sleep(0.1)
          add_park_to_wishlist_parks
          @user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "=================================================="
          puts "I'm sorry, but I am unable to find that park. Please try again:"
          puts "=================================================="
        end
      elsif @user_input == "7"
        if get_user_wishlist_parks.size > 0
          sleep(0.1)
          print_users_wishlist_parks
          @user_input = prompt_user_main_menu
        else
          sleep(0.1)
          puts "=================================================="
          puts "I couldn't find any parks on your visitation wishlist."
          puts "=================================================="
          @user_input = prompt_user_main_menu
        end
      else
        @park_name = gets.strip
        add_park_to_visited_parks
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
    greet_user
    @user_name = get_user_name
    if user_exists?
      @current_user = find_user_in_database
    else
      User.create(name: @user_name)
      @current_user = find_user_in_database
    end
    puts "=================================================="
    puts "Welcome, #{@current_user.name}"
    puts "=================================================="
    main_menu
    sleep(0.1)
    puts "=================================================="
    puts "Thank you for using Happy Trails!"
    puts "=================================================="
    sleep(0.1)
    big_mountains
  end


end
