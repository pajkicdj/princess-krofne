# FizzBuzz Assignment
def fizzbuzz
	ii = ""
	for x in 1..100
	  if (x%3 == 0) && (x%5 == 0)
	    ii += "FizzBuzz "
	  elsif (x%5 == 0)
	    ii += "Buzz " 
	  elsif (x%3 == 0)
	  	ii += "Fizz "
	  else
	  	ii += ""
	  end
	end
	print ii
end

fizzbuzz


# Build A Calculator
class Calculator
  def add(a, b)
   a + b
  end

  def subtract(a, b)
   a - b
  end
end


# Array of String Lengths
def length_finder(input_array)
  input_array.map {|i| i.length}
end


#Non-Duplicate Values in an Array
def non_duplicated_values(values)
  values.delete_if {|value| values.count(value) > 1}
end


#Ruby Warrior Game:

#Level 1
class Player
  def play_turn(warrior)
    warrior.walk!
  end
end


#Level 2
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      warrior.walk!
    else
      warrior.attack!
    end
  end
end


#Level 3
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < 20
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
  end
end


#Level 4
class Player
  def play_turn(warrior)
    @health ||= warrior.health
    under_attack = warrior.health < @health
    if (warrior.feel.empty?)
        if (warrior.health >= 20) || (under_attack)
          warrior.walk!
        else
          warrior.rest!
        end
    else
        warrior.attack!
    end
    @health = warrior.health
  end
end



#Level 5
class Player
  def play_turn(warrior)
    @health = warrior.health if @health.nil?
    under_attack = warrior.health < @health
      if (warrior.feel.empty?)
        if (warrior.health >= 20) || (under_attack)
          warrior.walk!
        else
          warrior.rest!
        end
      else
        if warrior.feel.captive?
          warrior.rescue!
        else
          warrior.attack!
        end
      end
      @health = warrior.health
    end
end