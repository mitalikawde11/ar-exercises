require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Delete third store
@store3 = Store.find_by(id: 3)
@store3.destroy
puts @store3
puts "Store count after deleting third store: ", Store.count
