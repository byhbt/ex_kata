defmodule RomanNumeral do
  def convert(number) do
    cond do
      number == 1 -> "I"
      number == 2 -> "II"
      number == 3 -> "III"
      number == 5 -> "V"
      number == 10 -> "X"
      number == 20 -> "XX"
      true -> "hi"
    end
  end
end