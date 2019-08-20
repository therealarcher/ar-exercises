require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each {|x| puts x.name, x.annual_revenue}
@womens_stores_over1M = Store.where("womens_apparel = true AND annual_revenue < 1000000")
@womens_stores_over1M.each {|y| puts y.name, y.annual_revenue}

# @name_annual_revenue = @mens_stores.where()
