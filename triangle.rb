# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  if a<=0 || b<=0 || c<=0
  	raise TriangleError, "any side must not be less than or equal to zero"
  elsif a+b<=c || a+c<=b || c+b<=a 
  	raise TriangleError, "any two sides must be larger than the third"
  elsif a == b && b == c
  	:equilateral
  elsif a==b && a!=c || a==c && b!=a || c==b && a!=b
  	:isosceles
  else
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
