require 'ruby2d'

class Board
  def make_boardline(guesses = [], incr = 0)		

		col1 = guesses[0]
    col2 = guesses[1]
    col3 = guesses[2]
    col4 = guesses[3]
		col1 == nil ? col1 = "gray" : guesses[0]
		col2 == nil ? col2 = "gray" : guesses[1]
		col3 == nil ? col3 = "gray" : guesses[2]
		col4 == nil ? col4 = "gray" : guesses[3]
    
		Text.new(
			'1 =             2 =               3 =           4 =             5 =               6 = ',
			x: 20, y: 5,
			font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
			style: 'bold',
			size: 18,
			color: 'white',
			z: 10
		)
			Text.new(
				'Blue',
				x: 50, y: 5,
				font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
				style: 'bold',
				size: 18,
				color: 'blue',
				z: 10
			)

			Text.new(
				'green',
				x: 145, y: 5,
				font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
				style: 'bold',
				size: 18,
				color: 'green',
			z: 10
			)

			Text.new(
			  'red',
				x: 250, y: 5,
				font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
				style: 'bold',
				size: 18,
				color: 'red',
				z: 10
			)

			Text.new(
				'aqua',
				x: 330, y: 5,
				font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
				style: 'bold',
				size: 18,
				color: 'aqua',
				z: 10
			)

			Text.new(
				'yellow',
				x: 420, y: 5,
				font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
				style: 'bold',
				size: 18,
				color: 'yellow',
				z: 10
			)

			Text.new(
				'purple',
				x: 525, y: 5,
				font: 'lib/Roboto-VariableFont_wdth,wght.ttf',
				style: 'bold',
				size: 18,
				color: 'purple',
				z: 10
			)
			Square.new(
						x: 100, y: 30 + incr,
						size: 50,
						color: col1,
						z: 10
						)
			Square.new(
						x: 160, y: 30 + incr,
						size: 50,
						color: col2,
						z: 10
						)
			Square.new(
						x: 220, y: 30 + incr,
						size: 50,
						color: col3,
						z: 10
						)
			Square.new(
						x: 280, y: 30 + incr,
						size: 50,
						color: col4,
						z: 10
						)
			Square.new(
						x: 340, y: 35 + incr,
						size: 15,
						color: 'red',
						z: 10
						)
			Square.new(
						x: 340, y: 60 + incr,
						size: 15,
						color: 'red',
						z: 10
						)
			Square.new(
						x: 365, y: 35 + incr,
						size: 15,
						color: 'red',
						z: 10
						)
			Square.new(
						x: 365, y: 60 + incr,
						size: 15,
						color: 'red',
						z: 10
						)
  end
	
	def make_board(guesses, incr)
		unless incr > 720
			p incr
			board_array = []
			board_array.push(make_boardline(guesses, incr))
		end
	end
end
