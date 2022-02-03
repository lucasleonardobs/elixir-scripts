defmodule MapList do
  def map([], _), do: []

  def map([hd | tl], func) do
    [func.(hd) | map(tl, func)]
  end
end
