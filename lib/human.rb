require_relative "player"

class Human < Player
  attr_accessor :role
  def initialise(role)
      @role = role
  end

  def process_guesses(board, board_array, guesses = [], marks = [], human, computer)
    marks = ["black", "black", "black", "black"]
    $is_end = false

    if guesses == $rand_cols
      marks = ["green", "green", "green", "green"]
      $is_end = true
      board.get_marks(marks)
      board.make_board(board, board_array, guesses, marks, human, computer)
    end
    if guesses != $rand_cols && guesses[0] == $rand_cols[0]
      marks.shift
      marks.unshift("green")
      board.get_marks(marks)
    end
    if guesses != $rand_cols && guesses[1] == $rand_cols[1]
      marks.delete_at(1)
      marks.insert(1,"green")
      board.get_marks(marks)
    end
    if guesses != $rand_cols && guesses[2] == $rand_cols[2]
      marks.delete_at(2)
      marks.insert(2,"green")
      board.get_marks(marks)
    end
    if guesses != $rand_cols && guesses[3] == $rand_cols[3]
      marks.pop
      marks.push("green")
      board.get_marks(marks)
    end
    if $rand_cols.include?(guesses[0]) == true && guesses[0] != $rand_cols[0]
      marks.shift
      marks.unshift("yellow")
      board.get_marks(marks)
    end
    if $rand_cols.include?(guesses[1]) == true && guesses[1] != $rand_cols[1]
      marks.delete_at(1)
      marks.insert(1,"yellow")
      board.get_marks(marks)
    end
    if $rand_cols.include?(guesses[2]) == true && guesses[2] != $rand_cols[2]
      marks.delete_at(2)
      marks.insert(2,"yellow")
      board.get_marks(marks)
    end
    if $rand_cols.include?(guesses[3]) == true && guesses[3] != $rand_cols[3]
      marks.pop
      marks.push("yellow")
      board.get_marks(marks)
    end
  end
end
