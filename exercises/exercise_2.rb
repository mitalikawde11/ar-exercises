require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Update first store
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
puts "@store 1: ", @store1.name
@store1.update(name: "New Westminster")
@store1.save
puts "@store 1 name after update: ", @store1.name