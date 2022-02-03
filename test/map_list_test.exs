defmodule MapListTest do
  use ExUnit.Case

  describe "map/2" do
    test "returns the empty list map" do
      list = []
      func = fn x -> x end
      response = MapList.map(list, func)
      expected_response = []

      assert response == expected_response
    end

    test "returns the map list" do
      list = [1, 2, 3, 4]
      func = fn x -> x + 1 end
      response = MapList.map(list, func)
      expected_response = [2, 3, 4, 5]

      assert response == expected_response
    end
  end
end
