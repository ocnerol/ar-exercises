require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@aggregate_total_revenue = Store.sum("annual_revenue")
@average_aggregate_annual_revenue = @aggregate_total_revenue / Store.count
puts "The total revenue for the entire company is: $" + @aggregate_total_revenue.to_s
puts "The average revenue for the entire company is: $" + @average_aggregate_annual_revenue.to_s
