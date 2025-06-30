require "ruby2d"
require "colorize"

require_relative "lib/computer"
require_relative "lib/human"
require_relative "lib/player"
require_relative "lib/board"

set height: 730
is_end = false

def play_game(is_end)
  i = 0
  board = Board.new
  computer = Computer.new
  human = Human.new
  random_colors = computer.randomize_colors(board, i, is_end, human)
  board.make_board(computer, board, i, is_end, human, random_colors)
end

play_game(is_end)
show