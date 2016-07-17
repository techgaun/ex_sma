defmodule SmaTest do
  use ExUnit.Case
  doctest SMA
  import SMA

  test "sma/2 gives empty list for invalid arguments" do
    assert sma(%{}, 1) === :error
    assert sma([1,2], "badvalue") === :error
    assert sma("badvalue", "badvalue") === :error
    assert sma([1,2,3], 1) === :error
  end

  test "sma/2 gives correct result for valid arguments" do
    # expected behavior
    assert sma([1,2,3], 2) === [1.5, 2.5]
    assert sma([1,2,3], 2) != [1,2,3]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2) === [1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3) == [2, 3, 4, 5, 6, 7, 8, 9]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 4) === [2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == [3, 4, 5, 6, 7, 8]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 6) === [3.5, 4.5, 5.5, 6.5, 7.5]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 7) == [4, 5, 6, 7]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 8) === [4.5, 5.5, 6.5]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9) == [5, 6]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10) === [5.5]
    assert sma([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11) === []
  end
end
