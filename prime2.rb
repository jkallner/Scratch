#!/usr/bin/env ruby
#now the class that will determine whether or not a number is prime
#class PrimeNum
#  def initialize(input_number)
#    @input_number = input_number
#  end
 
 
 puts "Pleas input a number to test if its a prime number: "
 input_number = gets.to_f
 
#Method for testing if a given number is prime or not
def is_prime(input_number)
  divisible_counter = 0
# (1..input_number).each do |x|
  for x in 1..input_number do
    if input_number % x == 0
     divisible_counter += 1
     puts divisible_counter
    else
    end
  end
  divisible_counter
end

results = is_prime(input_number)

puts results

