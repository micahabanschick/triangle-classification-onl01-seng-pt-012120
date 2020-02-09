class Triangle
  # triangle code
  attr_accessor :ab, :bc, :ca, :type
  
  def initialize(ab:,bc:,ca:)
    @ab = ab 
    @bc = bc 
    @ca = ca 
  end 
  
  def kind 
    if @ab <= 0 || @bc <= 0 || @ca <= 0 || (@ab + @bc) <= @ca ||  (@ab + @ca) <= @bc || (@ca + @bc) <= @ab
      begin 
        raise Triangle::TriangleError
      rescue Triangle::TriangleError => error 
        puts error.message
      end 
    elsif @ab == @bc && @bc == @ca 
      @type = :equilateral 
    elsif @ab == @bc || @bc == @ca || @ab == @ca 
      @type = :isosceles 
    else 
      @type = :scalene 
    end 
  end 
 
  class TriangleError < StandardError
    # triangle error code
    def message
      puts "oops"
    end 
  end
end