=begin
theme_park_adventure.rb

Welcome to the Theme Park Adventure! 🎢 Your task is to debug the ThemePark class so that visitors can enjoy their rides and grab snacks.

Expected output:
Welcome to the Theme Park Adventure!
Tickets checked, you're good to go!
Rides Available: Roller Coaster, Ferris Wheel, Bumper Cars
Enjoying the Roller Coaster... 🎢
Enjoying the Ferris Wheel... 🎡
Enjoying the Bumper Cars... 🚗
All rides completed!
Time for snacks...
🍿 Grabbing popcorn...
🍦 Eating ice cream...
🌭 Munching on a hot dog...
What a day at the theme park! Come back soon!

Tip: Ensure methods are correctly defined, and fix any typos or incorrect method calls. Check how arrays and method calls interact.

=end

class ThemePark
    attr_accessor :rides, :snacks
  
    def initialize
      @rides = ["Roller Coaster", "Ferris Wheel", "Bumper Cars"]
      @snacks = ["Popcorn", "Ice Cream", "Hot Dog"]
    end
  
    def welcome_message
      puts "Welcome to the Theme Park Adventure!"
    end
  
    def check_tickets
      puts "Tickets checked, you're good to go!"
    end
  
    def display_rides
      puts "Rides Available: #{rides.join(', ')}"
    end
  
    def enjoy_ride(ride)
      case ride
      when "Roller Coaster"
        puts "Enjoying the Roller Coaster... 🎢"
      when "Ferris Wheel"
        puts "Enjoying the Ferris Wheel... 🎡"
      when "Bumper Cars"
        puts "Enjoying the Bumper Cars... 🚗"
      else
        puts "Unknown ride: #{ride}"
      end
    end
  
    def enjoy_rides
      @rides.each do |ride|
        enjoy_ride(ride)
      end
      puts "All rides completed!"
    end
  
    def grab_snack(snack)
      case snack
      when "Popcorn"
        puts "🍿 Grabbing popcorn..."
      when "Ice Cream"
        puts "🍦 Eating ice cream..."
      when "Hot Dog"
        puts "🌭 Munching on a hot dog..."
      else
        puts "Unknown snack: #{snack}"
      end
    end
  
    def grab_snacks
      @snacks.each do |snack|
        grab_snack(snack)
      end
    end
  
    def start_adventure
      welcome_message
      check_tickets
      display_rides
      enjoy_rides
      grab_snacks
      puts "What a day at the theme park! Come back soon!"
    end
  end
  
ThemePark.new.start_adventure
  