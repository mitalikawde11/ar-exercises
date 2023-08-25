require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# One-to-many association
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Priyanka", last_name: "Patel", hourly_rate: 100)
@store2.employees.create(first_name: "Aaditya", last_name: "Mishra", hourly_rate: 150)
@store2.employees.create(first_name: "Soniya", last_name: "Tata", hourly_rate: 75)
employee2 = @store2.employees.create(first_name: "", last_name: "Tata", hourly_rate: 75)
puts employee2.errors.full_messages