defmodule StringCalculatorKataTest do
  use ExUnit.Case

  test "given empty string returns zero" do
    assert StringCalculatorKata.add("") == 0
  end

  test "given single number returns the number itself" do
    assert StringCalculatorKata.add("1") == 1
  end
end
