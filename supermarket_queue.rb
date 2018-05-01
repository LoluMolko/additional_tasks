require 'pry'
class Supermarket
  def queue_time(clients, r)
    register = (1..r).to_a
    register = register.map {|e| e -= e}

    clients.each do |client|
      index = register.find_index(register.min)
      register[index] += client
    end
    return register.max
  end
end

supermarket = Supermarket.new
puts supermarket.queue_time([5, 3, 4], 1) #=> 12
puts supermarket.queue_time([10, 2, 3, 3], 2) #=> 10
puts supermarket.queue_time([2, 3, 10], 2) #=> 12
