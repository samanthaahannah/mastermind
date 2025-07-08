require 'ruby2d'

class Board
	def legend_text
		font = 'fonts/Roboto-VariableFont_wdth,wght.ttf'

		Text.new(
			'1 =             2 =               3 =           4 =             5 =               6 = ',
			x: 20, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'white',
			z: 10
			)

		Text.new(
			'Blue',
			x: 50, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'blue',
			z: 10
			)

		Text.new(
			'green',
			x: 145, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'green',
			z: 10
			)

		Text.new(
			'red',
			x: 250, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'red',
			z: 10
			)

		Text.new(
			'aqua',
			x: 330, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'aqua',
			z: 10
			)

		Text.new(
			'yellow',
			x: 420, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'yellow',
			z: 10
			)

		Text.new(
			'purple',
			x: 525, y: 5,
			font: font,
			style: 'bold',
			size: 18,
			color: 'purple',
			z: 10
			)
	end
	
  def make_boardline(guesses = [], human)		
		if human.role == "guesser"
			col1 = guesses[0]
			col2 = guesses[1]
			col3 = guesses[2]
			col4 = guesses[3]

			col1 == nil ? col1 = "black" : guesses[0]
			col2 == nil ? col2 = "black" : guesses[1]
			col3 == nil ? col3 = "black" : guesses[2]
			col4 == nil ? col4 = "black" : guesses[3]
		elsif human.role == "randomizer"
			col1 = $rand_cols[0]
			col2 = $rand_cols[1]
			col3 = $rand_cols[2]
			col4 = $rand_cols[3]

			col1 == nil ? col1 = "black" : $rand_cols[0]
			col2 == nil ? col2 = "black" : $rand_cols[1]
			col3 == nil ? col3 = "black" : $rand_cols[2]
			col4 == nil ? col4 = "black" : $rand_cols[3]
		end

		Square.new(
			x: 100, y: 30 + $incr,
			size: 50,
			color: col1,
			z: 10
			)

		Square.new(
			x: 160, y: 30 + $incr,
			size: 50,
			color: col2,
			z: 10
			)

		Square.new(
			x: 220, y: 30 + $incr,
			size: 50,
			color: col3,
			z: 10
			)

		Square.new(
			x: 280, y: 30 + $incr,
			size: 50,
			color: col4,
			z: 10
			)
  end

	def get_chosen_colors()
		Square.new(
			x: 100, y: 760,
			size: 50,
			color: $rand_cols[0],
			z: 10
			)

		Square.new(
			x: 160, y: 760,
			size: 50,
			color: $rand_cols[1],
			z: 10
			)

		Square.new(
			x: 220, y: 760,
			size: 50,
			color: $rand_cols[2],
			z: 10
			)

		Square.new(
			x: 280, y: 760,
			size: 50,
			color: $rand_cols[3],
			z: 10
			)
	end

	def choose_colors(chosen_colors = [])
		col1 = chosen_colors[0]
    col2 = chosen_colors[1]
    col3 = chosen_colors[2]
    col4 = chosen_colors[3]

		col1 == nil ? col1 = "black" : chosen_colors[0]
		col2 == nil ? col2 = "black" : chosen_colors[1]
		col3 == nil ? col3 = "black" : chosen_colors[2]
		col4 == nil ? col4 = "black" : chosen_colors[3]

		Square.new(
			x: 100, y: 760,
			size: 50,
			color: col1,
			z: 10
			)

		Square.new(
			x: 160, y: 760,
			size: 50,
			color: col2,
			z: 10
			)

		Square.new(
			x: 220, y: 760,
			size: 50,
			color: col3,
			z: 10
			)

		Square.new(
			x: 280, y: 760,
			size: 50,
			color: col4,
			z: 10
			)
	end

	def base_board
		if $player_chosen == true
		(0..660).step(60) do |i|
			Square.new(
				x: 100, y: 30 + i,
				size: 50,
				color: 'black',
				z: 10
				)

			Square.new(
				x: 160, y: 30 + i,
				size: 50,
				color: 'black',
				z: 10
			  )

			Square.new(
				x: 220, y: 30 + i,
				size: 50,
				color: 'black',
				z: 10
			  )

			Square.new(
				x: 280, y: 30 + i,
				size: 50,
				color: 'black',
				z: 10
				)

			Square.new(
				x: 340, y: 35 + i,
				size: 15,
				color: 'black',
				z: 10
				)

			Square.new(
				x: 365, y: 35 + i,
				size: 15,
				color: 'black',
				z: 10
				)

			Square.new(
				x: 390, y: 35 + i,
				size: 15,
				color: 'black',
				z: 10
				)

			Square.new(
				x: 415, y: 35 + i,
				size: 15,
				color: 'black',
				z: 10
				)
			end
		end
		Line.new(
  		x1: 100, y1: 750,
  		x2: 400, y2: 750,
  		width: 2,
  		color: 'gray',
  		z: 2
			)
			
		Square.new(
			x: 100, y: 760,
			size: 50,
			color: 'black',
			z: 10
			)

		Square.new(
			x: 160, y: 760,
			size: 50,
			color: 'black',
			z: 10
			)

		Square.new(
			x: 220, y: 760,
			size: 50,
			color: 'black',
			z: 10
			)

		Square.new(
			x: 280, y: 760,
			size: 50,
			color: 'black',
			z: 10
			)
	end
	
	def get_marks(marks = [])
		mark1 = marks[0]
    mark2 = marks[1]
    mark3 = marks[2]
    mark4 = marks[3]

		mark1 == nil ? mark1 = "black" : marks[0]
		mark2 == nil ? mark2 = "black" : marks[1]
		mark3 == nil ? mark3 = "black" : marks[2]
		mark4 == nil ? mark4 = "black" : marks[3]

			Square.new(
				x: 340, y: 35 + $incr,
				size: 15,
				color: mark1,
				z: 10
				)

			Square.new(
				x: 365, y: 35 + $incr,
				size: 15,
				color: mark2,
				z: 10
				)

			Square.new(
				x: 390, y: 35 + $incr,
				size: 15,
				color: mark3,
				z: 10
				)

			Square.new(
				x: 415, y: 35 + $incr,
				size: 15,
				color: mark4,
				z: 10
				)
	end

	def make_board(board, board_array, guesses, marks, human, computer)
		font = 'fonts/Roboto-VariableFont_wdth,wght.ttf'
		if human.role == "guesser"
			case
			when $incr < 720 && $is_end == false
				board_array.push(make_boardline(guesses, human))
				sleep 5
			when $incr < 720 && $is_end == true
				Text.new(
					'You won, yay :D! Want to play again? (Y/N)',
					x: 100, y: 820,
					font: font,
					style: 'bold',
					size: 18,
					color: 'aqua',
					z: 10
				)
				$is_end = true
				get_chosen_colors()

			when $incr >= 720 && $is_end == false
				Text.new(
					"You lost, sorry... :( Want to play again? (Y/N)",
					x: 100, y: 820,
					font: font,
					style: 'bold',
					size: 18,
					color: 'aqua',
					z: 10
				)
				$is_end = true
				get_chosen_colors()
			end	
		elsif human.role == "randomizer"
			board_array2 = []
			board_array2.push(choose_colors($user_chosen_colors))
			while $incr < 720 && $is_end == false && $computer_turn == true
				computer.guess_colors(board, board_array, guesses, marks, human, computer)
				board_array.push(make_boardline($rand_cols, human))
				$incr += 60
			end
			if $incr < 720 && $is_end == true
				Text.new(
					'The computer won, yay :D! Want to play again? (Y/N)',
					x: 100, y: 820,
					font: font,
					style: 'bold',
					size: 18,
					color: 'aqua',
					z: 10
				)
				$is_end = true
				$computer_turn = false
			end

			if $incr >= 720 && $is_end == false
				Text.new(
					"The computer lost! Want to play again? (Y/N)",
					x: 100, y: 820,
					font: font,
					style: 'bold',
					size: 18,
					color: 'aqua',
					z: 10
				)
				$is_end = true
				$computer_turn = false
			end	
		end
	end
end
