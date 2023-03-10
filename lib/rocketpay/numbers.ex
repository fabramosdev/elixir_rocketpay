defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Stream.map(&String.to_integer/1)
      |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_file({:error, reason}),
    do: {:error, %{message: "Invalid  file! ((Erro: #{reason}))"}}
end
