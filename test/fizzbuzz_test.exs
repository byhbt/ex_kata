defmodule FizzbuzzTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  doctest StringCalculator

  describe "go/1" do
    test "returns fizz given the number is divisible by 3" do
      assert Fizzbuzz.go(3) == "fizz"
    end

    test "returns buzz given the number is divisible by 5" do
      assert Fizzbuzz.go(5) == "buzz"
    end

    test "returns number given the number is NOT divisible by either 3 or 5" do
      assert Fizzbuzz.go(11) == 11
    end
  end

  describe "go/2" do
    test "returns number and fizz given a list of [14, 15]" do
      assert capture_io(fn -> Fizzbuzz.go(14, 15) end) == "14\nfizzbuzz\n"
    end
  end
end
