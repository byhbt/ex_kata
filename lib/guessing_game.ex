defmodule GuessingGame do
  def play(low \\ 1, high \\ 100) do
    IO.puts "Now...\nCalm and let think about the number \nWrite it on the paper. I will guess it for you :D"

    user_answer = IO.gets "Is it either bigger or smaller or equal #{mid(low, high)} (range #{low} - #{high}) ? "

    case String.trim(user_answer) do
      "bigger" -> bigger(low, high)
      "smaller" -> smaller(low, high)
      "yes" -> "Cool! I can read your mind ;)"
      _ -> IO.puts "Please answer (bigger/smaller/yes) only. AI is not implemented yet!"
    end
  end

  def mid(low, high) do
    div(low + high, 2)
  end

  def bigger(low, high) do
    play(mid(low, high), high)
  end

  def smaller(low, high) do
    play(low, mid(low, high))
  end
end
