class Triangle
  # triangle code
  attr_accessor :ab, :bc, :ca, :type
  
  def initialize(ab:,bc:,ca:)
    @ab = ab 
    @bc = bc 
    @ca = ca 
  end 
  
  def kind 
    if @ab == 0 || @bc == 0 || @ca == 0 || (@ab + @bc) <= @ca ||  (@ab + @ca) <= @bc || (@ca + @bc) <= @ab
      begin 
        raise StandardError
      rescue StandardError 
 
  class TriangleError < StandardError
    # triangle error code
  end
end