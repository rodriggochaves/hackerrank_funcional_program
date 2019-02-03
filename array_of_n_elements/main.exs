defmodule Solution do
  def main(0) do
    []
  end

  def main(n) do
    [n] ++ main(n - 1)
  end
end

{n, _} = IO.gets('') |>
         Integer.parse

Solution.main(n) 
|> IO.inspect(limit: :infinity)
