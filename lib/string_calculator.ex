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
    string
    |> String.splitter([",", "\n", "***", "/"])
    |> Enum.map(fn v ->
      String.to_integer(String.trim(v))
    end)
    |> check_negative()
    |> Enum.reject(fn val -> 
      val < 0
    end)
    |> Enum.reject(fn val ->
      val > 1_000
    end)
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
