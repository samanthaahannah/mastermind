require "ruby2d"
require "colorize"

require_relative "lib/computer"
require_relative "lib/human"
require_relative "lib/player"
require_relative "lib/board"

set height: 800

guesses = []
marks = []
board_array = []
incr = 0
$is_end = false

$response = "y"

board = Board.new
human = Human.new("guesser")
computer = Computer.new("randomizer")

keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "y", "escape", "return", "backspace"]
board.base_board()
board.make_board(board_array, guesses, incr, marks)
rand_cols = computer.randomize_colors(human)

on :key_down do |event|
      case
      when event.key == '1' && guesses.length < 4 && $is_end == false && human.role == "guesser"
        color = "blue"
        guesses.push(color)
        board.make_board(board_array, guesses, incr, marks)
      when event.key == '2' && guesses.length < 4 && $is_end == false && human.role == "guesser"
        color = "green"
        guesses.push(color)
        board.make_board(board_array, guesses, incr, marks)
      when event.key == '3' && guesses.length < 4 && $is_end == false && human.role == "guesser"
        color = "red"
        guesses.push(color)
        board.make_board(board_array, guesses, incr, marks)
      when event.key == '4' && guesses.length < 4 && $is_end == false && human.role == "guesser"
        color = "aqua"
        guesses.push(color)
        board.make_board(board_array, guesses, incr, marks)
      when event.key == '5' && guesses.length < 4 && $is_end == false && human.role == "guesser"
        color = "yellow"
        guesses.push(color)
        board.make_board(board_array, guesses, incr, marks)
      when event.key == '6' && guesses.length < 4 && $is_end == false && human.role == "guesser"
        color = "purple"
        guesses.push(color)
        board.make_board(board_array, guesses, incr, marks)
      when event.key == 'backspace' && guesses.length <= 4 && $is_end == false && human.role == "guesser"
        guesses.pop()
        board.make_board(board_array, guesses, incr, marks)
      when event.key == 'escape' && guesses.length <= 4
        exit
      when event.key == 'y' && guesses.length <= 4
        board = Board.new
        human = Human.new("guesser")
        computer = Computer.new("randomizer")
        guesses = []
        marks = []
        board_array = []
        incr = 0
        $is_end = false
        board.base_board()
        board.make_board(board_array, guesses, incr, marks)
        rand_cols = computer.randomize_colors(human)
      when keys.none? {|key| event.key.include?(key)} && guesses.length <= 4 && $is_end == false && human.role == "guesser"
        puts "Invalid input"
      when event.key == 'return' && guesses.length >= 4 && $is_end == false
        human.process_guesses(board, board_array, guesses, rand_cols, marks, incr)
        guesses = []
        incr += 60
        board.make_board(board_array, guesses, incr, marks)
      end
    end

show