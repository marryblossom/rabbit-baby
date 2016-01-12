require_relative 'rabbit'

class World
  @@rabbits = Array.new

  def month_plus(rabbit)
    @@rabbits << rabbit
    rabbit.grow()

    rabbit.children.each { |child| month_plus(child) }
  end

  def count(month)
    root_rabbit = Rabbit.new
    month.times do
      month_plus(root_rabbit)
    end
    @@rabbits.uniq().size
  end
end

