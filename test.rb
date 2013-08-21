#!/usr/bin/env ruby
def circle_info(radius)
  return [Math::PI * (radius * radius), Math::PI * (2 * radius)]
end
area, perimeter = circle_info(10)
  puts "The area of the circle is: #{area}"
  puts "The perimeter of the circle is: #{perimeter}"
  









