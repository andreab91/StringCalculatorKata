defmodule StringCalculatorKataTest do
  use ExUnit.Case

  test "empty string is zero" do
    assert StringCalculatorKata.add("") == 0
  end
end
