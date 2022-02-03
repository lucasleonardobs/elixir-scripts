defmodule MyList do
  def sum_call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end

  def map([], _), do: []

  def map([hd | tl], func) do
    [func.(hd) | map(tl, func)]
  end
end
