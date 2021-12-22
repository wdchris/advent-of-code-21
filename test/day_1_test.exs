defmodule DayOneTest do
  use ExUnit.Case

  describe "sonar_sweep" do
    test "is 0 for one depth" do
      input = [118]
      assert DayOne.sonar_sweep(input) == 0
    end

    test "is 0 for decreased depth" do
      input = [118,117]
      assert DayOne.sonar_sweep(input) == 0
    end

    test "is 1 for increased depth" do
      input = [118,121]
      assert DayOne.sonar_sweep(input) == 1
    end

    test "is 2 for varying depth" do
      input = [118,121, 120, 130]
      assert DayOne.sonar_sweep(input) == 2
    end
  end

  describe "sonar_sweep_sliding" do
    test "is 0 for one depth" do
      input = [118, 120, 122]
      assert DayOne.sonar_sweep_sliding(input) == 0
    end

    test "is 0 for decreased depth" do
      input = [118, 120, 122, 117]
      assert DayOne.sonar_sweep_sliding(input) == 0
    end

    test "is 1 for increased depth" do
      input = [118, 120, 122, 124]
      assert DayOne.sonar_sweep_sliding(input) == 1
    end

    test "is 5 for varying depth" do
      input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
      assert DayOne.sonar_sweep_sliding(input) == 5
    end
  end
end
