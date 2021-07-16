defmodule Fizzbuzz do
  @moduledoc """
  Documentation for `StringCalculator`.
  """

  def go(min, max) do
    Enum.each(min..max, fn n -> IO.puts(go(n)) end)
  end

  def go(number) do
    case {rem(number, 3), rem(number, 5)} do
      {0, 0} -> "fizzbuzz"
      {0, _} -> "fizz"
      {_, 0} -> "buzz"
      _ -> number
    end
  end
end
