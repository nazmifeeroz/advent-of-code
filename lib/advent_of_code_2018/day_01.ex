defmodule AdventOfCode2018.Day01 do
  def part1(input_data) do
    Enum.sum(input_data)
  end

  def part2(input_data) do
    input_data
    |> Stream.cycle()
    |> Enum.reduce_while({0, MapSet.new([0])}, fn x, {sum, hits} ->
      sum = sum + x

      if MapSet.member?(hits, sum) do
        {:halt, {sum, hits}}
      else
        {:cont, {sum, MapSet.put(hits, sum)}}
      end
    end)
    |> (&elem(&1, 0)).()
  end

  def stream_file(path) do
    path
    |> File.stream!()
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.to_integer/1)
  end
end
