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
@store1.employees.create(first_name: "Priyanka", last_name: "Patel", hourly_rate: 35)
@store2.employees.create(first_name: "Aaditya", last_name: "Mishra", hourly_rate: 50)
@store2.employees.create(first_name: "Sonam", last_name: "Tata", hourly_rate: 65)
