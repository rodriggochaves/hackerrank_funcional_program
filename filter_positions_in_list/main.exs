defmodule Solution do
  def read_input do
    String.split(IO.read(:stdio, :all), [" ", "\n"]) |>
    Enum.filter(fn(elem) -> elem != "" end) |>
    Enum.map(&String.to_integer/1)
  end

  def remove_odds(list) do
    Enum.with_index(list) |>
    Enum.filter(fn(elem) -> 
      {_, index} = elem
      rem(index, 2) == 1
    end) |>
    Enum.map(fn(elem) -> 
      {number, _} = elem
      number
    end)
  end
end

Solution.read_input
Solution.remove_odds(list) |>
Enum.each(fn(x) -> IO.puts(x) end)
