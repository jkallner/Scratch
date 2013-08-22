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
# Create new Circle_nfo class to do all calculations
class Circle_nfo
  def initialize(input_radius)
    @input_radius = input_radius
  end
  
  #method to calculate the area of the circle
  def circle_area
    Math::PI * (@input_radius ** 2)
  end
  
  #method to calculate the perimeter of the circle
  def circle_perimeter
    Math::PI * (2 * @input_radius)
  end
  
  #method to calculate the volume of a sphere based upon the input radius
  def sphere_volume
    ((4/3) * Math::PI * (@input_radius ** 3))
  end
  
  #method to calculate the surface area of said sphere
  def spehere_surface_area
    (4 * (Math::PI * (@input_radius ** 2)))
  end
  
end

mycircle = Circle_nfo.new(input_radius)
puts "The area of your circle is: #{mycircle.circle_area.round(2)}"
puts "The perimeter of your circle is: #{mycircle.circle_perimeter.round(2)}"
puts "The volume of a sphere based upon your input radius is: #{mycircle.sphere_volume.round(2)}"
puts "The surface area of the sphere is: #{mycircle.spehere_surface_area.round(2)}"
#def circle_info(radius)
#  {:area => Math::PI * (radius * radius),
#   :perimeter => Math::PI * (2 * radius),
#   :sphere_volume => ((4/3)* Math::PI * (radius ** 3)),
#   :sphere_surface_area => (4* (Math::PI * (radius * radius)))}
#end

# Displays the results of the circle_info method
#results_hash = circle_info(input_radius)
#  puts "The area of the circle is: #{results_hash[:area].round(2)}"
#  puts "The perimeter of the circle is: #{results_hash[:perimeter].round(2)}"
#  puts "The volume of a sphere based upon the given radius is: #{results_hash[:sphere_volume].round(2)}"
#  puts "The surface area of the sphere would be: #{results_hash[:sphere_surface_area].round(2)}"
  