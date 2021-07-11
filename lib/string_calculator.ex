defmodule StringCalculator do
  @moduledoc """
  Documentation for `StringCalculator`.
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
    |> Enum.map(fn(v) ->
      val = case Integer.parse(String.trim(v)) do
        {intVal, _} -> intVal
      end

      if check_negative(val) do
        raise ArgumentError, "Negative"
      else
        val
      end
    end
    )
    |> Enum.reject(fn(val) -> 
      val > 1_000
    end)
    |> Enum.sum()
  end

  defp check_negative(val) do
    if val < 0 do
      true
    else
      false
    end
  end
end
