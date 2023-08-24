require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Calculations
# the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire company: ", total_revenue

# the average annual revenue for all stores.
avg_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: ", avg_revenue

# the number of stores that are generating $1M or more in annual sales.
stores_count = Store.where(annual_revenue: 1000000..).count
puts "the number of stores that are generating $1M or more in annual sales: ", stores_count
