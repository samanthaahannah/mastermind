class Board
  def make_boardline(random_colors, i)

    col1 = random_colors[0]
    col2 = random_colors[1]
    col3 = random_colors[2]
    col4 = random_colors[3]
    Square.new(
          x: 100, y: 10 + i,
          size: 50,
          color: col1,
          z: 10
          )
    Square.new(
          x: 160, y: 10 + i,
          size: 50,
          color: col2,
          z: 10
          )
    Square.new(
          x: 220, y: 10 + i,
          size: 50,
          color: col3,
          z: 10
          )
    Square.new(
          x: 280, y: 10 + i,
          size: 50,
          color: col4,
          z: 10
          )
    Square.new(
          x: 340, y: 15 + i,
          size: 15,
          color: 'red',
          z: 10
          )
    Square.new(
          x: 340, y: 40 + i,
          size: 15,
          color: 'red',
          z: 10
          )
    Square.new(
          x: 365, y: 15 + i,
          size: 15,
          color: 'red',
          z: 10
          )
    Square.new(
          x: 365, y: 40 + i,
          size: 15,
          color: 'red',
          z: 10
          )
  end

  def make_board(computer, board, i, is_end, human, randomize_colors)
    unless i > 720
      p i
        human.get_input(computer, board, i, is_end, human, randomize_colors)
        board.make_boardline(randomize_colors, i)
        p "fired"
        p i
    end
  end
end