defmodule Solution do
  def hello_world_n_times(n) do
    for i <- 0..n, i > 0, do: IO.puts('Hello World')
  end
end

{n, _} = IO.gets('') |> Integer.parse
Solution.hello_world_n_times(n)
