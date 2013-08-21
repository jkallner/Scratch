#!/usr/bin/env ruby
puts "Please input the radius of the circle:"
input_radius = gets.to_f
def circle_info(radius)
  {:area => Math::PI * (radius * radius), :perimeter => Math::PI * (2 * radius)}
end
results_hash = circle_info(input_radius)
  puts "The area of the circle is: #{results_hash[:area]}"
  puts "The perimeter of the circle is: #{results_hash[:perimeter]}"
  









