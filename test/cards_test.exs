defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck" do
    assert Cards.create_deck() != nil
  end
end
