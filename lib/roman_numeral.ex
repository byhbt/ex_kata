defmodule RomanNumeral do

  @roman_mapping %{
    1 => "I",
    4 => "IV",
    5 => "V",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
  }

  # @numeral_list Map.keys(@roman_mapping)|> Enum.sort(&(&1 > &2))
  @numeral_list Map.keys(@roman_mapping)

  def convert(number) do
    to_roman(@numeral_list, number, "")
  end

  defp to_roman(_mapping, 0, result) do
    result
  end

  defp to_roman([max | rest] = numeral_list, number, result) do
    if number >= max do
      to_roman(numeral_list, number - max, result <> @roman_mapping[max])
    else
      to_roman(rest, number, result)
    end
  end
end
