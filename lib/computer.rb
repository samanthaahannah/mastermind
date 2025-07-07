require_relative "player"

class Computer < Player
attr_accessor :role
  def initialize(role)
      @role = role
  end

  def randomize_colors(human)
    col1 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col2 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col3 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    col4 = ["blue", "green", "red", "aqua", "yellow", "purple"].sample

     p rand_cols = [col1, col2, col3, col4]
    return rand_cols
  end

  def guess_colours(board, board_array, guesses = [], rand_cols = [], marks = [], incr = 0)
    marks = ["black", "black", "black", "black"]
    $is_end = false

    if guesses == rand_cols
      p "You win!"
      marks = ["green", "green", "green", "green"]
      $is_end = true
      board.get_marks(marks, incr)
      board.make_board(board_array, guesses, incr, marks)
    end
    if guesses != rand_cols && guesses[0] == rand_cols[0]
      marks.shift
      marks.unshift("green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols && guesses[1] == rand_cols[1]
      marks.delete_at(1)
      marks.insert(1,"green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols && guesses[2] == rand_cols[2]
      marks.delete_at(2)
      marks.insert(2,"green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols && guesses[3] == rand_cols[3]
      marks.pop
      marks.push("green")
      board.get_marks(marks, incr)
    end
    if rand_cols.include?(guesses[0]) == true && guesses[0] != rand_cols[0]
      marks.shift
      marks.unshift("yellow")
      board.get_marks(marks, incr)
    end
    if rand_cols.include?(guesses[1]) == true && guesses[1] != rand_cols[1]
      marks.delete_at(1)
      marks.insert(1,"yellow")
      board.get_marks(marks, incr)
    end
    if rand_cols.include?(guesses[2]) == true && guesses[2] != rand_cols[2]
      marks.delete_at(2)
      marks.insert(2,"yellow")
      board.get_marks(marks, incr)
    end
    if rand_cols.include?(guesses[3]) == true && guesses[3] != rand_cols[3]
      marks.pop
      marks.push("yellow")
      board.get_marks(marks, incr)
    end
  end
end