class Board
  def get_color_arrays()
    blue = "O".colorize(:light_blue)
    orange = "O".colorize(:orange)
    yellow = "O".colorize(:yellow)
    green = "O".colorize(:green)
    wrong_col = "X".colorize(:red)
    wrong_pos = "X".colorize(:white)

    colors = [[blue, orange, yellow, green],
              [blue, orange, yellow, green],
              [blue, orange, yellow, green],
              [blue, orange, yellow, green]]

    correct_cols = [wrong_col, wrong_pos]

    randomize_colors(colors, correct_cols)
  end

  def make_board
    puts "      +-+-+-+-+"
    puts "      | | | | |"
    puts "      +-+-+-+-+"
  end
end