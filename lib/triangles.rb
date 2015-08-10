class Triangles
  define_method(:initialize) do |side_one, side_two, side_three|
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  define_method(:triangle?) do
    @side_one.+(@side_two)>@side_three && @side_one.+(@side_three)>@side_two && @side_three.+(@side_two)>@side_one
  end

  define_method(:equilateral?) do
    @side_one == (@side_two && @side_three)
  end

  define_method(:isosceles?) do
    @side_one == (@side_two || @side_three) || @side_two == @side_three
  end

  define_method(:scalene?) do
    @side_one != (@side_two && @side_three) && @side_two != @side_three
  end
end
