defmodule AdventOfCode do
  @moduledoc """
  Documentation for `AdventOfCode`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AdventOfCode.hello()
      :world

  """
  def hello do
    :world
  end

  def day_one(part) do
    case part do
    1 ->
      DayOne.read_file("resources/day_one_input.dat")
      |> DayOne.sonar_sweep()
    2 ->
      DayOne.read_file("resources/day_one_input.dat")
      |> DayOne.sonar_sweep_sliding()
    end
  end
end
