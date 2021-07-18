defmodule RomanNumeralTest do
  use ExUnit.Case

  test "returns coresspondent roman number" do
    decimal_romans = [
      {1, "I"},
      {2, "II"},
      {3, "III"},
      {4, "IV"},
      {5, "V"},
      {6, "VI"},
      {10, "X"},
      {11, "XI"},
      {50, "L"},
      {11, "XI"},
      {11, "XI"},
    ]

    Enum.each(decimal_romans, fn({decimal, roman}) ->
      assert RomanNumeral.convert(decimal) == roman
    end)
  end
end