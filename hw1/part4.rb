=begin
HW 1-4: BASIC OBJECT ORIENTED PROGRAMMING

Part A: Create a class Dessert with getters and setters for name and calories. Define instance methods healthy?, 
which returns true if a dessert has less than 200 calories, and delicious? which returns true for all desserts.

Part B: Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. Modify delicious? 
to return false if the flavor is "black licorice" (but delicious? should still return true for all other flavors and 
for all non-JellyBean desserts).
=end
class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name
  attr_accessor :calories

  def healthy?
    @calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @flavor = flavor
  end
  
  attr_accessor :flavor

  def delicious?
    return false if flavor.eql? "black licorice"
    true
  end
end
