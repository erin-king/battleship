require 'pry'
require './lib/ship'
require './lib/board'

class Game
  attr_reader :computer_board,
              :human_board,
              :computer_cruiser,
              :computer_submarine,
              :human_cruiser,
              :human_submarine,
              :coordinate_arg

  def initialize
    @computer_board = Board.new
    @human_board = Board.new
    @computer_cruiser = Ship.new("Cruiser", 3)
    @computer_submarine = Ship.new("Submarine", 2)
    @human_cruiser = Ship.new("Cruiser", 3)
    @human_submarine = Ship.new("Submarine", 2)
    @computer_board.cells
    @human_board.cells
    @coordinate_arg = []
  end

 def main_menu
   puts "Welcome to BATTLESHIP!"
   puts "Enter p to play. Enter q to quit."

   input = gets.chomp

   if input == "q"
     exit
   end

  get_coordinate_inputs
 end

  def get_coordinate_inputs
    puts "Please enter the 3 coordinates for a cruiser"
    @coordinate_arg << gets.chomp
    binding.pry
    puts @coordinate_arg
  end





  # def place_computer_ships(ship_arg, coordinate_arg)
  #   cruiser = Ship.new("Cruiser", 3)
  #   # submarine = Ship.new("Submarine", 2)
  #   @computer_board.place(cruiser, coordinate_arg)
  #   # binding.pry
  # end


end
