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
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, length: { in: 40..200 }
  validates :belongs_to, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, length: { minimum: 1 }
end

store_name = $stdin.gets.chomp
new_store = Store.create(name: store_name)
new_store.errors.full_messages.each do |msg|
  puts msg
end