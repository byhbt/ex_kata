defmodule StringCalculatorTest do
  use ExUnit.Case
  doctest StringCalculator

  @tag :skip
  test "returns zero given an empty string" do
    assert StringCalculator.calc(" ") == 0
  end

  test "return zero given nil value" do
    assert StringCalculator.calc(nil) == 0
  end

  test "returns 1 given 1" do
    assert StringCalculator.calc("1") == 1
  end

  test "return 2 given 1,1" do
    assert StringCalculator.calc("1,1") == 2
  end

  test "raises Exception with Negative value" do
    assert_raise ArgumentError, fn ->
      assert StringCalculator.calc("1,-1")
    end
  end

  test "return 2 given string with breakline 1\n1" do
    assert StringCalculator.calc("1\n1,1") == 3
  end

  test "return 5 given 1,1,3" do
    assert StringCalculator.calc("1,1,3") == 5
  end
end
