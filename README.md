# Elixir Scripts

**How to use?**

Run the command to open "interative" elixir terminal
```
iex -S mix
```

## SumList
*What is?*
SumList is a algorithm to sum all elements in a list, example:

```
iex(1)> SumList.call([1, 2, 3])
6
```

To run SumList, execute SumList.call([1, 2, 3])

## MapList
*What is?*
MapList is a map algorithm thats receive a list and a function and run the function in all list items, example:

```
iex(1)> MapList.map([1, 2, 3], fn x -> x + 1 end)
[2, 3, 4]
```

