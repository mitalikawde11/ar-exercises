require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create 3 more stores
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
puts "-- Stores list which carries men's apparel --"
@mens_stores.each do |mens_store|
  print "Store name: ", mens_store.name
  print "      "
  print "annual revenue: ", mens_store.annual_revenue
  puts ""
end

@womens_stores = Store.where(womens_apparel: true, annual_revenue: ..1000000 )
puts "-- Stores list which carries women's apparel --"
@womens_stores.each do |womens_store|
  print "Store name: ", womens_store.name
  print "      "
  print "annual revenue: ", womens_store.annual_revenue
  puts ""
end