#!/usr/bin/env ruby
puts "Please input the radius of the circle:"
input_radius = gets.to_f
# Keep looping until the user gives us a valid number
# Non number entires such as words would equate to 0 with the .to_f method above
while input_radius == 0
  puts "Please try a number that doesn't equal 0"
  puts "Please input the radius of the circle:"
  input_radius = gets.to_f
end
# The following method will take an input radius and then return a hash
# with the area and perimiter of the circle additionally it will calculate
#the volume of a sphere and surface area based upon the input radius
def circle_info(radius)
  {:area => Math::PI * (radius * radius),
   :perimeter => Math::PI * (2 * radius),
   :sphere_volume => ((4/3)* Math::PI * (radius ** 3)),
   :sphere_surface_area => (4* (Math::PI * (radius * radius)))}
end
# Displays the results of the circle_info method
results_hash = circle_info(input_radius)
  puts "The area of the circle is: #{results_hash[:area].round(2)}"
  puts "The perimeter of the circle is: #{results_hash[:perimeter].round(2)}"
  puts "The volume of a sphere based upon the given radius is: #{results_hash[:sphere_volume].round(2)}"
  puts "The surface area of the sphere would be: #{results_hash[:sphere_surface_area].round(2)}"









