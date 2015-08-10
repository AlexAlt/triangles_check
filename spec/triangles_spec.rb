require('rspec')
require('triangles')

describe (Triangles) do
  describe("#triangle?") do
    it("return true if it is a triangle") do
        test_triangle = Triangles.new(6, 6, 10)
        expect(test_triangle.triangle?()).to(eq(true))
    end
  end
end
