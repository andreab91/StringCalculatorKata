defmodule StringCalculatorKataTest do
  use ExUnit.Case

  test "given empty string returns zero" do
    assert StringCalculatorKata.add("") == 0
  end

  test "given single number returns the number itself" do
    assert StringCalculatorKata.add("1") == 1
  end

  test "given two numbers comma separated returns the sum" do
    assert StringCalculatorKata.add("1,2") == 3
  end

  test "new line as delimiter" do
  	assert StringCalculatorKata.add("1\n2,3") == 6
  end
end
