require "ruby2d"
require "colorize"

require_relative "lib/computer"
require_relative "lib/human"
require_relative "lib/player"
require_relative "lib/board"



set height: 750
guesses = []
incr = 0
board = Board.new

keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "return", "backspace"]
board.make_board(guesses, incr)
#random_colors = computer.randomize_colors(board, i, is_end, human)
on :key_down do |event|
      case
      when event.key == '1' && guesses.length < 4
        color = "blue"
        guesses.push(color)
        guesses.length
        board.make_board(guesses, incr)
      when event.key == '2' && guesses.length < 4
        color = "green"
        guesses.push(color)
        guesses.length
        board.make_board(guesses, incr)
      when event.key == '3' && guesses.length < 4
        color = "red"
        guesses.push(color)
        guesses.length
        board.make_board(guesses, incr)
      when event.key == '4' && guesses.length < 4
        color = "aqua"
        guesses.push(color)
        guesses.length
        board.make_board(guesses, incr)
      when event.key == '5' && guesses.length < 4
        color = "yellow"
        guesses.push(color)
        guesses.length
        board.make_board(guesses, incr)
      when event.key == '6' && guesses.length < 4
        color = "purple"
        guesses.push(color)
        guesses.length
        board.make_board(guesses, incr)
      when event.key == 'backspace' && guesses.length <= 4
        guesses.pop()
        guesses.length
        board.make_board(guesses, incr)
      when keys.none? {|key| event.key.include?(key)} && guesses.length <= 4
        puts "Invalid input"
      when event.key == 'return' && guesses.length >= 4
        guesses = []
        incr += 60
        board.make_board(guesses, incr)
      end
    end
show