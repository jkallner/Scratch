#!/usr/bin/env ruby
def circle_info(radius)
  {:area => Math::PI * (radius * radius), :perimeter => Math::PI * (2 * radius)}
end
results_hash = circle_info(10)
  puts "The area of the circle is: #{results_hash[:area]}"
  puts "The perimeter of the circle is: #{results_hash[:perimeter]}"
  









