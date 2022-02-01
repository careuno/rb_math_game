require './Player'
require './Question'

class Game
 
  def initialize () 
    @Player1 = Player.new("Player 1")
    @Player2 = Player.new("Player 2")
  end 

  def start
    puts "game started"
    current_player = @Player1
    while !end_game do 
      question= Question.new #need to initialize before asking
    #loop to ask questions to alternating player 
      question.ask_question(current_player)
      show_score
    #output player lives after answer
    puts "--------------------- NEW TURN ------------------"
      if current_player == @Player1 
        current_player = @Player2
      else 
        current_player = @Player1
      end
    end
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "-------------------- GAME OVER -----------------"
    puts "Good bye!"

  end


  def show_score
    puts "P1: #{@Player1.lives}/3 vs. P2: #{@Player2.lives}/3"
  end

  def end_game 
    @Player1.lives == 0 || @Player2.lives == 0
  end 

  def winner 
    #'guard clause'
    #this is returning a player class (remember you have access to player methods)
    return @Player1 if @Player1.lives > 0
    return @Player2 if @Player2.lives > 0
  end 

end