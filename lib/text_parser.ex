defmodule TextParser do
  def parse(file_path) do
    file_path
    |> File.read!()
    |> String.split(~r{\W})
    |> Enum.filter(fn word -> word != "" end)
    |> Enum.frequencies()
  end
end
