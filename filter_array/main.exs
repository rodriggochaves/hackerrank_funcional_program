defmodule Solution do
  def read_input do
    [s | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
    { k, _ } = Integer.parse(s)
    list = Enum.filter(tail, fn(elem) -> elem != "" end) |>
           Enum.map(&String.to_integer/1)    
    { k, list }
  end

  def filter(s, [head | tail]) when head < s do
    [ head ] ++ filter(s, tail)
  end

  def filter(s, [_ | tail]) do
    filter(s, tail)
  end

  def filter(_, []) do
    []
  end
end

{s, list} = Solution.read_input
new_list = Solution.filter(s, list)
Enum.each(new_list, fn(elem) -> IO.puts(elem) end)
