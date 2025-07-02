require_relative "player"
require_relative "board"

class Computer < Player
  def randomize_colors(human)
    col1 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col2 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col3 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col4 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample

     p rand_cols = [col1, col2, col3, col4]
    return rand_cols
  end
end