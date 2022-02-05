defmodule MyList do
  def sum_call(list), do: sum(list, 0)

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end

  def map([], _func), do: []

  def map([hd | tl], func) do
    [func.(hd) | map(tl, func)]
  end

  def filter([], _func), do: []

  def filter([hd | tl], func) do
    if func.(hd) do
      [hd] ++ filter(tl, func)
    else
      filter(tl, func)
    end
  end
end
