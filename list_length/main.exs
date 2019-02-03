defmodule Solution do
  def read_input do
    String.split(IO.read(:stdio, :all), [" ", "\n"]) |>
    Enum.filter(fn(elem) -> elem != "" end) |>
    Enum.map(&String.to_integer/1)
  end

  def main([_ | []]) do
    1
  end

  def main([_ | tail]) do
    1 + main(tail)
  end
end

Solution.read_input 
|> Solution.main
|> IO.inspect
