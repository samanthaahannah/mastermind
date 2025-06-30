require_relative "player"

class Human < Player

  def get_guess_1(col1)
    guess_1 = gets.chomp.to_i
    if guess_1.between?(1,6) == false
      puts "Invalid input"
      get_guess_1(col1)
    else
      case
      when guess_1 == 1
        guess_1 = "blue"
      when guess_1 == 2
        guess_1 = "green"
      when guess_1 == 3
        guess_1 = "red"
      when guess_1 == 4
        guess_1 = "aqua"
      when guess_1 == 5
        guess_1 = "yellow"
      when guess_1 == 6
        guess_1 = "purple"
      end
    end
  end

  def get_guess_2(col2)
    guess_2 = gets.chomp.to_i
    if guess_2.between?(1,6) == false
      puts "Invalid input"
      get_guess_2(col2)
    else
      case
      when guess_2 == 1
        guess_2 = "blue"
      when guess_2 == 2
        guess_2 = "green"
      when guess_2 == 3
        guess_2 = "red"
      when guess_2 == 4
        guess_2 = "aqua"
      when guess_2 == 5
        guess_2 = "yellow"
      when guess_2 == 6
        guess_2 = "purple"
      end
    end
  end

  def get_guess_3(col3)
    guess_3 = gets.chomp.to_i
    if guess_3.between?(1,6) == false
      puts "Invalid input"
      get_guess_3(col3)
    else
      case
      when guess_3 == 1
        guess_3 = "blue"
      when guess_3 == 2
        guess_3 = "green"
      when guess_3 == 3
        guess_3 = "red"
      when guess_3 == 4
        guess_3 = "aqua"
      when guess_3 == 5
        guess_3 = "yellow"
      when guess_3 == 6
        guess_3 = "purple"
      end
    end
  end

  def get_guess_4(col4)
    guess_4 = gets.chomp.to_i
    if guess_4.between?(1,6) == false
      puts "Invalid input"
      get_guess_4(col4)
    else
      case
      when guess_4 == 1
        guess_4 = "blue"
      when guess_4 == 2
        guess_4 = "green"
      when guess_4 == 3
        guess_4 = "red"
      when guess_4 == 4
        guess_4 = "aqua"
      when guess_4 == 5
        guess_4 = "yellow"
      when guess_4 == 6
        guess_4 = "purple"
      end
    end
  end

  def get_input(computer, board, i, is_end, human, randomize_colors)
    
    guess_1 = get_guess_1(guess_1)
    guess_2 = get_guess_2(guess_2)
    guess_3 = get_guess_3(guess_3)
    guess_4 = get_guess_4(guess_4)

    p guesses = [guess_1, guess_2, guess_3, guess_4]
    
    i += 60

    board.make_board(computer, board, i, is_end, human, randomize_colors)
  end
end