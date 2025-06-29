require "colorize"

require_relative "lib/computer"
require_relative "lib/human"
require_relative "lib/player"
require_relative "lib/board"

def play_game
  board = Board.new
  board.make_board()
end

play_game()