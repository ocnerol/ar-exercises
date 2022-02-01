require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistley = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each do |store|
  puts "The " + store.name + " location generates an annual revenue of " + store.annual_revenue.to_s + "."
end

@womens_stores_under_1_million = Store.where('annual_revenue < 1000000').where(mens_apparel: false, womens_apparel: true)

@womens_stores_under_1_million.each do |store|
  puts "The " + store.name + " location sells only women's clothing and generates an annual revenue of " + store.annual_revenue.to_s + "."
end