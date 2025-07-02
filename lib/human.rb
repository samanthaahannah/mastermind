require_relative "player"

class Human < Player
  def process_guesses(guesses = [], rand_cols = [])
    p "working"
    p guesses

    p rand_cols

    if guesses == rand_cols
      p "You win!"
    end
    if guesses != rand_cols && guesses[0] == rand_cols[0]
      p "The first tile is correct!"
    end
    if guesses != rand_cols && guesses[1] == rand_cols[1]
      p "The second tile is correct!"
    end
    if guesses != rand_cols && guesses[2] == rand_cols[2]
      p "The third tile is correct!"
    end
    if guesses != rand_cols && guesses[3] == rand_cols[3]
      p "The fourth tile is correct!"
    end
    if guesses != rand_cols 
      p "All are wrong"
    end

    
  end
end





