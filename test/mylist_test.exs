defmodule ListTest do
  use ExUnit.Case

  describe "sum_call/1" do
    test "when empty list is provided, returns zero" do
      list = []

      response = MyList.sum_call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "when valid list is provided, returns the list sum" do
      list = [1, 2, 3]

      response = MyList.sum_call(list)

      expected_response = 6

      assert response == expected_response
    end
  end

  describe "map/2" do
    test "when empty list is provided, returns an empty list" do
      list = []
      func = fn x -> x end

      response = MyList.map(list, func)

      expected_response = []

      assert response == expected_response
    end

    test "when valid list is provided, returns the map list" do
      list = [1, 2, 3, 4]
      func = fn x -> x + 1 end

      response = MyList.map(list, func)

      expected_response = [2, 3, 4, 5]

      assert response == expected_response
    end
  end

  describe "filter/2" do
    test "when empty list is provided, returns an empty list" do
      list = []
      func = fn x -> x end

      response = MyList.filter(list, func)

      expected_response = []

      assert response == expected_response
    end

    test "when valid list is provided, returns the list filtered" do
      list = [2, 3, 4, 5]
      func = fn x -> x > 3 end

      response = MyList.filter(list, func)

      expected_response = [4, 5]

      assert response == expected_response
    end
  end
end
