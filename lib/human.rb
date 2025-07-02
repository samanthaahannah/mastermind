require_relative "player"

class Human < Player
  def process_guesses(board, board_array,guesses = [], rand_cols = [], marks = [], incr = 0)
    marks = []
    $is_end = false
    if guesses == rand_cols
      p "You win!"
      marks = ["green", "green", "green", "green"]
      $is_end = true
      board.get_marks(marks, incr)
      board.make_board(board_array, guesses, incr, marks)
    end
    if guesses != rand_cols && guesses[0] == rand_cols[0]
      marks.push("green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols && guesses[1] == rand_cols[1]
      marks.push("green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols && guesses[2] == rand_cols[2]
      marks.push("green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols && guesses[3] == rand_cols[3]
      marks.push("green")
      board.get_marks(marks, incr)
    end
    if guesses != rand_cols 
      p array_count = (rand_cols & guesses).count
      array_count.times {marks.push("yellow")}
      board.get_marks(marks, incr)
    end

  end
end
