class Triangle
  # write code herclass Triangle
  # write code here
  attr_accessor :l1, :l2, :l3
  def initialize(l1, l2, l3)
    self.l1 = l1
    self.l2 = l2
    self.l3 = l3
  end
  def kind
    if valid_sides?
      if l1==l2 && l2==l3
        :equilateral
      elsif l1==l2 || l1==l3 || l2==l3
        :isosceles
      else l1!=l2 && l1!=l3 && l1!=l3
        :scalene
      end
    end
  end  
    def valid_sides?
      if l1<=0 || l2<=0 || l3<=0 || l1+l2<=l3 || l1+l3<=l2 || l2+l3<=l1
          raise TriangleError 
      else
        true  
      end
    end
      class TriangleError < StandardError
      end

end
