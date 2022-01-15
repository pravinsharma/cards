defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "creates a deck of 20 cards" do
    assert length(Cards.create_deck()) == 20
  end

  test "shuffles a deck of cards randomizes it" do
    deck = Cards.create_deck
    refute Cards.shuffle(deck) == deck
  end

  test "deal a deck of 5 cards" do
    deck = Cards.create_deck
    assert length(Cards.deal(deck, 5)) == 5
  end

  test "create a unique hand" do
    hand1 = Cards.create_hand(4)
    hand2 = Cards.create_hand(4)
    assert hand1 != hand2
  end
end
