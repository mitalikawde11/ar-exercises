require_relative '../setup'
# require_relative './exercise_1'
# require_relative './exercise_2'
# require_relative './exercise_3'
# require_relative './exercise_4'
# require_relative './exercise_5'
# require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter store name: "
print "> "
store_name1 = $stdin.gets.chomp
@store5 = Store.create(name: store_name1, annual_revenue: -1, mens_apparel: false, womens_apparel: false)
@store5.save

@store5.errors.full_messages.each do |err|
    puts "error: #{err} "
end
