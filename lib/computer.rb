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

    $rand_cols = [col1, col2, col3, col4]
    return $rand_cols
  end

  def guess_colors(board, board_array, guesses = [], marks = [], human, computer)

    zipped_arr = $rand_cols.zip($user_chosen_colors)
    zipped_arr.each_with_index do |group, idx| 
      next if group.all? {|item| item == group[0]} == true
      $rand_cols[idx] = ["blue", "green", "red", "aqua", "yellow", "purple"].sample
    end
    process_guesses(board, board_array, guesses, marks, human, computer)
  end

  def process_guesses(board, board_array, guesses = [], marks = [], human, computer)
    marks = ["black", "black", "black", "black"]
    $is_end = false

    if $user_chosen_colors == $rand_cols
      marks = ["green", "green", "green", "green"]
      $is_end = true
      board.get_marks(marks)
      board.make_board(board, board_array, guesses, marks, human, computer)
    end
    if $user_chosen_colors != $rand_cols && $user_chosen_colors[0] == $rand_cols[0]
      marks.shift
      marks.unshift("green")
      board.get_marks(marks)
    end
    if $user_chosen_colors != $rand_cols && $user_chosen_colors[1] == $rand_cols[1]
      marks.delete_at(1)
      marks.insert(1,"green")
      board.get_marks(marks)
    end
    if $user_chosen_colors != $rand_cols && $user_chosen_colors[2] == $rand_cols[2]
      marks.delete_at(2)
      marks.insert(2,"green")
      board.get_marks(marks)
    end
    if $user_chosen_colors != $rand_cols && $user_chosen_colors[3] == $rand_cols[3]
      marks.pop
      marks.push("green")
      board.get_marks(marks)
    end
    if $user_chosen_colors.include?($rand_cols[0]) == true && $user_chosen_colors[0] != $rand_cols[0]
      marks.shift
      marks.unshift("yellow")
      board.get_marks(marks)
      if $user_chosen_colors[1] != $rand_cols[1]
        $rand_cols[0], $rand_cols[1] = $rand_cols[1], $rand_cols[0]
      end
      if $user_chosen_colors[2] != $rand_cols[2]
        $rand_cols[0], $rand_cols[2] = $rand_cols[2], $rand_cols[0]
      end
      if $user_chosen_colors[3] != $rand_cols[3]
        $rand_cols[0], $rand_cols[3] = $rand_cols[3], $rand_cols[0]
      end
    end
    if $user_chosen_colors.include?($rand_cols[1]) == true && $user_chosen_colors[1] != $rand_cols[1]
      marks.delete_at(1)
      marks.insert(1,"yellow")
      board.get_marks(marks)
      if $user_chosen_colors[0] != $rand_cols[0]
        $rand_cols[1], $rand_cols[0] = $rand_cols[0], $rand_cols[1]
      end
      if $user_chosen_colors[2] != $rand_cols[2]
        $rand_cols[1], $rand_cols[2] = $rand_cols[2], $rand_cols[1]
      end
      if $user_chosen_colors[3] != $rand_cols[3]
        $rand_cols[1], $rand_cols[3] = $rand_cols[3], $rand_cols[1]
      end
    end
    if $user_chosen_colors.include?($rand_cols[2]) == true && $user_chosen_colors[2] != $rand_cols[2]
      marks.delete_at(2)
      marks.insert(2,"yellow")
      board.get_marks(marks)
      if $user_chosen_colors[0] != $rand_cols[0]
        $rand_cols[2], $rand_cols[0] = $rand_cols[0], $rand_cols[2]
      end
      if $user_chosen_colors[1] != $rand_cols[1]
        $rand_cols[2], $rand_cols[1] = $rand_cols[1], $rand_cols[2]
      end
      if $user_chosen_colors[3] != $rand_cols[3]
        $rand_cols[2], $rand_cols[3] = $rand_cols[3], $rand_cols[2]
      end
    end
    if $user_chosen_colors.include?($rand_cols[3]) == true && $user_chosen_colors[3] != $rand_cols[3]
      marks.pop
      marks.push("yellow")
      board.get_marks(marks)
      if $user_chosen_colors[0] != $rand_cols[0]
        $rand_cols[3], $rand_cols[0] = $rand_cols[0], $rand_cols[3]
      end
      if $user_chosen_colors[1] != $rand_cols[1]
        $rand_cols[3], $rand_cols[1] = $rand_cols[1], $rand_cols[3]
      end
      if $user_chosen_colors[2] != $rand_cols[2]
        $rand_cols[3], $rand_cols[2] = $rand_cols[2], $rand_cols[3]
      end
    end
  end
end