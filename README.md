# mastermind

A mastermind game created in Ruby for the Odin Project

## Installation

### Ruby
First make sure Ruby is installed on your system

Below are links to the Ruby2D documentation for Ruby installation instruction for macOS, windows and Linux.

[Ruby for macOS](https://www.ruby2d.com/learn/macos/)

[Ruby for Wundows](https://www.ruby2d.com/learn/windows/)

[Ruby for Linux](https://www.ruby2d.com/learn/linux/)

For those using Linux, make sure you also install the extra packages quoted on the Linux page above by copying and pasting the command for your OS into the terminal.

### Ruby2D

After you've installed Ruby, and the extra packages if you're using Linux, make sure you're in the root directory and install with `bundle install`. This should install the Ruby2D gem

### Running

Now, if you're in the root directory; you should be able to play the game by typing `ruby main.rb`

### Rules
To play the game, you can either play as the guesser, where the computer will choose a set of colours; or you can choose to let the computer guess the colours you choose.

The rules are: you get to choose four colours from a let of six possible colors (These colours are mapped from 1 - 6 on your keyboard). After you hit return, a set of coloured markers on the right will tell you which tiles are correct, and those that have colours in the wrong position (A bit like Wordle).

You then just keep going until either you get the right colour combo, or you run out of space.

To quit, just hit escape anytime

