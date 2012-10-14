require "triangle/version"
require "triangle/calculator"

# A Ruby gem for solving triangles using the laws of cosine and sine functions.
# Any triangle can be solved using the laws of cosine and sine functions given a minimum amount of data: 
# 3 angles, 3 sides, 2 angles and 1 side, or 2 sides and 1 and
module Triangle
  # A class for providing standard TriangleErrors
  class TriangleError < StandardError; end
end
