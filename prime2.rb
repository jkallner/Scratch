#!/usr/bin/env ruby
 
#Ask the user for a number to test if it is a prime number or not 
puts "Pleas input a number to test if its a prime number: "
input_number = gets.to_f

#Ensure that the user doesn't put in zero as zero isn't a prime (division by zero)
#Also note that by some definitions negative numbers are in fact prime numbers and therefore valid
while input_number == 0
puts "You submitted and invalid number or zero, please input a different number: "
input_number = gets.to_f
end

#Method for testing if a given number is prime or not
def is_prime(input_number)
  divisible_counter = 0
   for x in 1..input_number do
    if input_number % x == 0
      divisible_counter += 1
      break if divisible_counter > 2
    end
   end
    if divisible_counter < 3
      test_results = true
    else
      test_results = false
    end
    return test_results
end

#Show the results of our test
results = is_prime(input_number)
puts "\n#{results}"

