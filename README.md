# Elixir Scripts

**How to use?**

Run the command to open "interative" elixir terminal
```
iex -S mix
```

## MyList

### Sum

*What is?*
Sum is a algorithm to sum all elements in a list, example:

```
iex(1)> MyList.sum_call([1, 2, 3])
6
```

### Map

*What is?*
Map is a map algorithm thats receive a list and a function and run the function in all list items, example:

```
iex(1)> MyList.map([1, 2, 3], fn x -> x + 1 end)
[2, 3, 4]
```
