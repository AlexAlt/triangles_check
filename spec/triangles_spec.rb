require('rspec')
require('triangles')

describe (Triangles) do

  describe("#triangle?") do
    it("return true if it is a triangle") do
        test_triangle = Triangles.new(6, 6, 10)
        expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe("#equilateral?") do
    it("return true if the triangle is an equilateral triangle") do
      test_triangle = Triangles.new(9, 9, 9)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("return true if it is an isosceles triangle") do
        test_triangle = Triangles.new(6, 6, 10)
        expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("return true is it is a scalene triangle") do
      test_triangle = Triangles.new(6, 9, 10)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

  describe("#triangle?") do
    it("return false if it is Not a triangle") do
        test_triangle = Triangles.new(6, 6, 13)
        expect(test_triangle.triangle?()).to(eq(false))
    end
  end
end
