class Question
 
  def initialize () 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end 

#values here aren't needed outside as accessible values
 
  def ask_question (current_player)
    puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
    player_answer = gets.chomp.to_i 
     if @answer === player_answer 
      puts "#{current_player.name}:YES! You are correct."
     else
      puts "#{current_player.name}: Seriously? No!"
      #you still have access to the player's methods becaues you pass in the current_player class instance
      current_player.lose_life
     end
  end

end