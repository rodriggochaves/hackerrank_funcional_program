defmodule Solution do
  def read_input do
    String.split(IO.read(:stdio, :all), [" ", "\n"]) |>
    Enum.filter(fn(elem) -> elem != "" end) |>
    Enum.map(&String.to_integer/1)
  end

  def main(list) do
    Enum.filter(list, fn x -> rem(x, 2) == 1 end) |>
    Enum.reduce(0, fn acc, x -> acc + x end)
  end
end

Solution.read_input 
|> Solution.main
|> IO.inspect
