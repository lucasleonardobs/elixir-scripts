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

  def filter([head | tail], func) do
    if func.(head) do
      [head] ++ filter(tail, func)
    else
      filter(tail, func)
    end
  end
end
