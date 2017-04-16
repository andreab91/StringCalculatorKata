defmodule StringCalculatorKata do
  def add("") do
    0
  end

  def add(string) do
    String.to_integer(string)
  end
end
