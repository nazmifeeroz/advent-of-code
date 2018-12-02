defmodule AdventOfCode2018.Day01Test do
  use ExUnit.Case

  import AdventOfCode2018.Day01

  test "part1" do
    input = [+1, +1, +1] 
    assert 3 == part1(input) 
    input = [+1, +1, -2]
    assert 0 == part1(input) 
    input = [-1, -2, -3] 
    assert -6 == part1(input) 
  end

  test "part2" do
    input = [+1, -1] 
    assert 0 == part2(input)
    input = [+3, +3, +4, -2, -4] 
    assert 10 == part2(input)
    input = [-6, +3, +8, +5, -6] 
    assert 5 == part2(input)
    input = [+7, +7, -2, -7, -4] 
    assert 14 == part2(input)
  end
end
