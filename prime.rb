#!/usr/bin/env ruby
puts "This program will find all the prime numbers between the two numbers you input."
puts "Please enter two numbers to search between other than 0 of course :)"
puts "Enter number 1:"
number_1 = gets.to_f
puts "Enter number 2:"
number_2 = gets.to_f

#This loop ensures that the number entered is not 0
while number_1 == 0 or number_2 == 0
  puts "You put a number in that was invalid or equalled zero. try again."
  puts "Enter number 1:"
  number_1 = gets.to_f
  puts "Enter number 2:"
  number_2 = gets.to_f
end

#now the class that will determine whether or not a number is prime
class PrimeNum
  def initialize(input_number)
    @input_number = input_number
  end
  
  #Method for testing if a given number is prime or not
  def is_prime?(@input_number)
    i = 1
    while i <= @input_number
      if @input_number % i == 0 && divisible_counter < 3
        divisible_counter.next
        i.next
      else
      break return false
      end
    return true
  end