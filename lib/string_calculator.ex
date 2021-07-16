defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`
  """

  def calc("") do
    0
  end

  def calc(nil) do
    0
  end

  def calc(string) do
    delimiter = [",", "\n", "***", "/"]

    string
    |> String.splitter(delimiter)
    |> Enum.map(&String.to_integer(String.trim(&1)))
    |> check_negative()
    |> Enum.reject(&(&1) < 0)
    |> Enum.reject(&(&1) > 1_000)
    |> Enum.sum()
  end

  defp check_negative(list) do
    negatives = list |> Enum.filter(&(&1) < 0)

    if negatives == [] do
      list
    else
      raise ArgumentError, Enum.join(negatives, ", ")
    end
  end
end
