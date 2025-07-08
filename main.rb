require "ruby2d"
require "colorize"     

require_relative "lib/computer"
require_relative "lib/human"
require_relative "lib/player"
require_relative "lib/board"

set height: 850

def make_decision()
		font = 'fonts/Roboto-VariableFont_wdth,wght.ttf'

			@decision_text = Text.new(
				'Do you want to guess, or let the computer guess?',
				x: 100, y: 20,
				font: font,
				style: 'bold',
				size: 18,
				color: 'aqua',
				z: 10
			)

      @decision = Text.new(
				'A = You, B = Computer',
				x: 100, y: 40,
				font: font,
				style: 'bold',
				size: 18,
				color: 'aqua',
				z: 10
			)
      
end

def testing()
  make_decision()
  $player_chosen = false
  board = Board.new
  human = Human.new("")
  computer = Computer.new("")
  $computer_turn = false

  guesses = []
  marks = []
  board_array = []
  $user_chosen_colors = []
  $rand_cols = []
  $incr = 0
  $is_end = false

  keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "y", "n" "escape", "return", "backspace"]

  on :key_down do |event|
        case
        when event.key == '1' && guesses.length < 4 && $is_end == false && human.role == "guesser"
          color = "blue"
          guesses.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '1' && $user_chosen_colors.length < 4 && $is_end == false && human.role == "randomizer"
          color = "blue"
          $user_chosen_colors.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '2' && guesses.length < 4 && $is_end == false && human.role == "guesser"
          color = "green"
          guesses.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '2' && $user_chosen_colors.length < 4 && $is_end == false && human.role == "randomizer"
          color = "green"
          $user_chosen_colors.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '3' && guesses.length < 4 && $is_end == false && human.role == "guesser"
          color = "red"
          guesses.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '3' && $user_chosen_colors.length < 4 && $is_end == false && human.role == "randomizer"
          color = "red"
          $user_chosen_colors.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '4' && guesses.length < 4 && $is_end == false && human.role == "guesser"
          color = "aqua"
          guesses.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '4' && $user_chosen_colors.length < 4 && $is_end == false && human.role == "randomizer"
          color = "aqua"
          $user_chosen_colors.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '5' && guesses.length < 4 && $is_end == false && human.role == "guesser"
          color = "yellow"
          guesses.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '5' && $user_chosen_colors.length < 4 && $is_end == false && human.role == "randomizer"
          color = "yellow"
          $user_chosen_colors.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '6' && guesses.length < 4 && $is_end == false && human.role == "guesser"
          color = "purple"
          guesses.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == '6' && $user_chosen_colors.length < 4 && $is_end == false && human.role == "randomizer"
          color = "purple"
          $user_chosen_colors.push(color)
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == 'backspace' && guesses.length <= 4 && $is_end == false && human.role == "guesser"
          guesses.pop()
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == 'backspace' && $user_chosen_colors.length <= 4 && $is_end == false && human.role == "randomizer"
          $user_chosen_colors.pop()
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == 'escape'
          exit
        when event.key == 'y' && $is_end == true
          clear
          make_decision()
          $player_chosen = false
          board = Board.new
          human = Human.new("")
          computer = Computer.new("")
          $computer_turn = false
          
          guesses = []
          marks = []
          board_array = []
          $user_chosen_colors = []
          $rand_cols = []
          $incr = 0
          $is_end = false
          $rand_cols = computer.randomize_colors(human)
        when event.key == 'n' && $is_end == true
          exit
        when event.key == 'a' && $player_chosen == false
          $rand_cols = computer.randomize_colors(human)
          human.role = 'guesser'
          computer.role = 'randomizer'
          $player_chosen = true
          board.legend_text()
          board.get_marks(marks)
          board.base_board()
          board.make_board(board, board_array, guesses, marks, human, computer)
          @decision_text.remove
          @decision.remove
        when event.key == 'b' && $player_chosen == false
          $rand_cols = computer.randomize_colors(human)
          human.role = 'randomizer'
          computer.role = 'guesser'
          $player_chosen = true
          board.legend_text()
          board.get_marks(marks)
          board.base_board()
          board.make_board(board, board_array, guesses, marks, human, computer)
          @decision_text.remove
          @decision.remove
        when keys.none? {|key| event.key.include?(key)} && guesses.length <= 4 && $is_end == false && human.role == "guesser"
          puts "Invalid input"
        when event.key == 'return' && guesses.length >= 4 && $is_end == false && human.role == "guesser"
          human.process_guesses(board, board_array, guesses, marks, human, computer)
          guesses = []
          $incr += 60
          board.make_board(board, board_array, guesses, marks, human, computer)
        when event.key == 'return' && $user_chosen_colors.length >= 4 && $is_end == false && human.role = "randomizer"
          $computer_turn = true
          board.make_board(board, board_array, guesses, marks, human, computer)
          $incr += 60
        end
      end
end

testing()

show