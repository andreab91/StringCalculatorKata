defmodule StringCalculatorKata do
  def add("") do
    0
  end

  def add(string) do
    delimiters = ["\n", ","]
    #String.split(string, ["\n", ","]) 
    #  |> Enum.reduce(0, fn(x, sum) 
    #    -> String.to_integer(x) + sum 
    #  end)
    string |> String.split(delimiters) |> sum
  end

  def sum(list) do
    Enum.reduce(list, 0, fn(x, sum) ->
      sum + String.to_integer(x)
    end)
  end
end
