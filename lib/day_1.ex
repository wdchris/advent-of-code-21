defmodule DayOne do
  def sonar_sweep([head | tail]), do: sonar_sweep(head, tail)

  defp sonar_sweep(_, []), do: 0

  defp sonar_sweep(prev, [head | tail]) when prev >= head do
    sonar_sweep(head, tail)
  end

  defp sonar_sweep(prev, [head | tail]) when prev < head do
    1 + sonar_sweep(head, tail)
  end

  def sonar_sweep_sliding(arr) do
    take_threes([], arr)
    |> sonar_sweep()
  end

  defp take_threes(threes, [head | tail]) do
    with {:ok, sum} <- sum_three([head | tail])
    do
      take_threes([sum | threes], tail)
    else
      :error ->
        threes
        |> Enum.reverse()
    end
  end

  defp sum_three([head | [two | [three | _]]]) do
    {:ok, head + two + three}
  end

  defp sum_three([_ | _]), do: :error


  def read_file(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
  end
end
