require_relative "player"

class Computer < Player

  def initialize(role)
      super(role)
  end

  def randomize_colors(human)
    col1 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col2 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col3 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col4 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample

     p rand_cols = [col1, col2, col3, col4]
    return rand_cols
  end

  def guess_colours(picked_colours)
    
  end
end