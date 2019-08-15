defmodule PLTBasicTest do
  use ExUnit.Case
  doctest PLTBasic

  test "greets the world" do
    assert PLTBasic.hello() == :world
  end
end
