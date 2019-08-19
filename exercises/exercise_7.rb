require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store7 = Store.create( annual_revenue: 0, mens_apparel: true, womens_apparel: true)
@employee = @store1.employees.create(last_name: "Virani", hourly_rate: 220)
puts @store7.errors.messages
puts @employee.errors.messages