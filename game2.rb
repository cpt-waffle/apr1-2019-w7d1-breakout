class Human

  attr_accessor :name, :age, :health
  def initialize name, age, health
    @name = name
    @age = age
    @attack = 2
    @health = 10
  end

  def greeting
    puts "Hi my name is " + @name
    puts "My age is #{@age}"
  end

  def attack
    @attack
  end
end

class Knight < Human
  def initialize name, age, health
    super name, age, health

  end

  def greeting
    # yield
    puts @name + ": And my Axe!! Attack equals #{self.attack}"
  end

  def attack
    super * 3
  end

end

class Mage < Human
  def initialize name,age, health
    super name,age, health
  end

  def greeting
    puts @name + ": YOU SHALL NOT PASS!!!!"
  end

  def attack
    super * 6
  end
end


class Battle
  attr_reader :p1, :p2
  def initialize p1, p2
    @p1 = p1 # Knight so i should be able to use thier methods
    @p2 = p2 # Mage so i should be able to use their bethods
    @turn = 0
  end

  def battle
    if @turn == 0
      @p1.health = @p1.health - @p2.attack
      @turn = 1
    elsif @turn == 1
      @p2.health = @p2.health - @p1.attack
      @turn = 0
    else
      puts "BATTLE ENDED!!!!"
      @turn = 2
    end
  end



end


# guy_one = Human.new 'Vasiliy', 55

# guy_one.greeting


warrior = Knight.new age: 52, health:1000, name: 'Sir Mix Alot'
# warrior.name = 'Steven'
warrior.greeting

warlock = Mage.new 'Gandorf', 102, 1000
warlock.greeting

end_game = Battle.new warrior, warlock