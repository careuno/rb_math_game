class Player 
  #attr_ methods allow other classes outside of Player class to read it
  attr_reader :name, :lives


  def initialize (name) 
    @name = name
    @lives = 3
  end 


  def lose_life 
    @lives-= 1
  end 

  # def name 
  #   @name
  # end 

  # def lives 
  #   @lives
  # end 

end