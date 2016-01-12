class Rabbit

  attr_accessor :children, :month

  def initialize
    @month = 0
    @children = Array.new
  end

  def grow
    @month += 1
    if @month >= 3
      born()
    end
  end

  def born
    child = Rabbit.new
    @children << child
  end

end

