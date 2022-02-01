#file to run the game 

require './Player'
require './Question'
require './Game'

# player1 = Player.new("Player 1")
# puts player1.name
# puts player1.lives
# player2 = Player.new("Player 2")
# puts player2.name
# puts player2.lives

# # player1.lose_life
# # puts player1.lives

# question= Question.new

# question.ask_question(player1)
# puts player1.lives


game = Game.new
game.start