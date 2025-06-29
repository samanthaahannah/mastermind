require_relative "player"
require_relative "board"

class Computer < Player
  def randomize_colors(colors)
    col1 = colors[0].sample
    col2 = colors[1].sample
    col3 = colors[2].sample
    col4 = colors[3].sample

    random_cols = [col1, col2, col3, col4]

    guess_cols(random_cols)
  end
end