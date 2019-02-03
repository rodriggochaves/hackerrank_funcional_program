defmodule Solution do
  def read_input do
    String.split(IO.read(:stdio, :all), [" ", "\n"]) |>
    Enum.filter(fn(elem) -> elem != "" end) |>
    Enum.map(&String.to_integer/1)
  end

  def main([head | []]) do
    [head]
  end

  def main([head | tail]) do
    main(tail) ++ [head]
  end
end

Solution.read_input 
|> Solution.main
|> Enum.each(fn x -> IO.puts(x) end)
