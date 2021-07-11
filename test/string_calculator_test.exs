defmodule StringCalculatorTest do
  use ExUnit.Case

  doctest StringCalculator

  @tag :skip
  test "returns zero given an empty string" do
    assert StringCalculator.calc(" ") == 0
  end

  test "returns zero given nil value" do
    assert StringCalculator.calc(nil) == 0
  end

  test "returns 1 given 1" do
    assert StringCalculator.calc("1") == 1
  end

  test "returns 2 given 1,1" do
    assert StringCalculator.calc("1,1") == 2
  end

  test "returns 5 given 1,1,3" do
    assert StringCalculator.calc("1,1,3") == 5
  end

  test "returns 2 given string with breakline 1\n1" do
    assert StringCalculator.calc("1\n1,1") == 3
  end

  test "ignores multi delimiter" do
    assert StringCalculator.calc("1***2***3") == 6
  end

  test "ignores big value given number larger than 1000" do
    assert StringCalculator.calc("1001,2") == 2
  end

  test "raises ArgumentError given negative value" do
    assert_raise ArgumentError, fn ->
      assert StringCalculator.calc("1,-1")
    end
  end
end
