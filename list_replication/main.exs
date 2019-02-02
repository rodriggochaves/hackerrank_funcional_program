defmodule Solution do
  def read do
    [s | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
    { k, _ } = Integer.parse(s)
    { k, tail }
  end

  def replication(n, list) do
    Enum.each(list, fn (elem) ->
      for _ <- 1..n, do: 
        IO.puts("#{elem}")
    end)
  end
end

{s, list} = Solution.read
Solution.replication(s, list)
