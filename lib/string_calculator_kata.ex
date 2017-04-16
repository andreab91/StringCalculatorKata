defmodule StringCalculatorKata do
  def add("") do
    0
  end

  def add(string) do
    String.split(string, ",") 
      |> Enum.reduce(0, fn(x, sum) 
        -> String.to_integer(x) + sum 
      end)
  end
end
