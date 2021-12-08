defmodule PhotoStoreTest do
  use ExUnit.Case
  doctest PhotoStore

  test "grabs photo urls" do
    assert PhotoStore.all |> Enum.count() > 1
  end
end
