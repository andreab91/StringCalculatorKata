defmodule StringCalculatorKata do
  def add("") do
    0
  end

  def add("//" <> string_without_header) do
    [delimiter_group, string] = String.split(string_without_header, "\n")
    custom_delimiters = get_delimiters_from(delimiter_group)

    string |> add(custom_delimiters)
  end

  def add(string) do
    default_delimiters = ["\n", ","]
    string |> add(default_delimiters)
  end

  defp add(string, delimiters) do
    string 
      |> String.split(delimiters)
      |> convert_to_integer
      |> check_negatives 
      |> ignore_big
      |> sum_values
  end

  defp convert_to_integer(list) do
    list |> Enum.map(&String.to_integer(&1))
  end

  defp check_negatives(list) do
    negatives = list |> Enum.filter(&(&1) < 0)
    if negatives == [] do
      list
    else
      raise "Negatives not allowed: " <> Enum.join(negatives, ", ")
    end
  end

  defp ignore_big(list) do
    list |> Enum.filter(&(&1) <= 1000)
  end

  defp sum_values(list) do
    Enum.reduce(list, 0, fn(x, sum) ->
      sum + x
    end)
  end

  defp get_delimiters_from(group) do
    if group |> String.contains?("[") do
      Regex.scan(~r/\[(.*?)\]/, group, capture: :all_but_first) 
      |> List.flatten()
    else
      group
    end
  end
end