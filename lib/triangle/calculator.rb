module Triangle
  # A calculator responsible for solving (or not) triangles
  class Calculator
    # Sets an instance variable from the sides hash.
    #
    # == Parameters:
    # side::
    #   A string that represents a hash key in the sides hash.
    # 
    # sides::
    #   The sides hash.
    #
    # == Returns:
    # An instance variable set to the value of the hash key.
    #   
    def set_side_variable(side, sides)
      instance_variable_set("@side_#{side}", sides.fetch(side.to_sym))
    end

    # Sets an instance variable from the angles hash.
    #
    # == Parameters:
    # angle::
    #   A string that represents a hash key in the angles hash.
    # 
    # angles::
    #   The angles hash.
    #
    # == Returns:
    # An instance variable set to the value of the hash key.
    #   
    def set_angle_variable(angle, angles)
      instance_variable_set("@angle_#{angle}", angles.fetch(angle.to_sym))
    end

    # Calls variable setters and data validators.
    #
    # == Parameters:
    # sides::
    #   A hash containing keys a, b, and c.
    #
    # angles::
    #   A hash containing keys a, b, c.
    #
    # == Returns:
    # * A TriangleError if not enough information was given to solve the triangle.
    #
    # * A String if the triangle appears to have no solution.
    #
    # * true if the calculator is ready to begin calculations
    #
    def initialize(sides={:a => nil, :b => nil, :c => nil}, angles={:a => nil, :b => nil, :c => nil})
      sides.each_key{|s| set_side_variable(s, sides) }
      angles.each_key{|a| set_angle_variable(a, angles) }
    end
  end
end
