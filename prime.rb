#!/usr/bin/env ruby

#Initial display the tell the user what the program does and then asks for input
puts "This program will find all the prime numbers between the two numbers you input."
puts "Please enter two numbers to search between other than 0 of course :)"
puts "Enter number 1:"
number_1 = gets.to_i
puts "Enter number 2:"
number_2 = gets.to_i

#This loop ensures that the number entered is not 0
while number_1 == 0 or number_2 == 0
  puts "You put a number in that was invalid or equalled zero. try again."
  puts "Enter number 1:"
  number_1 = gets.to_i
  puts "Enter number 2:"
  number_2 = gets.to_i
end

#Method for testing if a given number is prime or not
def is_prime(input_number)
  divisible_counter = 0
  (1..input_number).each do |x|
   if input_number % x == 0
     divisible_counter += 1
     return false if divisible_counter > 2
   end
  end
  true
end

#Here we will cycle through all the numbers between number_1 and number_2 and test each one to determine
#if it is a prime number or not.  If it is, it gets appended to the array
prime_numbers = Array.new
(number_1..number_2).each do |x|
  if is_prime(x)
    prime_numbers << x
  end
end

#tests to see if 0 was included in the list and then removes it if so
if prime_numbers.include? 0
  prime_numbers.delete(0)
end

#Display our results
puts "The prime numbers between the two provided numbers are:\n #{prime_numbers}"