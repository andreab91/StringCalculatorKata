defmodule StringCalculatorKata do
  def add("") do
    0
  end

  def add("//" <> string_without_header) do
    [custom_delimiter, string] = String.split(string_without_header, "\n")
    string |> add(custom_delimiter)
  end

  def add(string) do
    default_delimiters = ["\n", ","]
    string |> add(default_delimiters)
  end

  defp add(string, delimiters) do
    string 
      |> String.split(delimiters) 
      |> check_negatives 
      |> sum_all_values
  end

  defp check_negatives(list) do
    negatives = Enum.filter(list, fn(x) -> String.to_integer(x) < 0 end)
    if negatives == [] do
      list
    else
      raise "negatives not allowed: #{negatives |> Enum.join(", ")}"
    end
  end

  defp sum_all_values(list) do
    Enum.reduce(list, 0, fn(x, sum) ->
      sum + String.to_integer(x)
    end)
  end
end
