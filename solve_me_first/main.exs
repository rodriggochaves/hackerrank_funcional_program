defmodule Solution do
  def sum(a, b) do
    a + b
  end
end

{a, _} = IO.gets('') |> Integer.parse
{b, _} = IO.gets('') |> Integer.parse

IO.puts(Solution.sum(a, b))
