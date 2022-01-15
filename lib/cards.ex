defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  creates a deck of cards.

  ## Examples

      iex> Cards.create_deck()
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    ## cards = for suit <- suits do
    ##  for value <- values do
    ##    "#{value} of #{suit}"
    ##  end
    ## end

    ## List.flatten(cards)


    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  @doc """
  shuffle the deck of cards

  ## Examples

      iex> Cards.shuffle(deck)
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  tests if card is in deck

  ## Examples

      iex> Cards.contains?(deck, card)
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
  creates a deal of a deck of card

  ## Examples

      iex> Cards.deal(deck, hand_count)
  """
  def deal(deck, hand_count) do
    {hand, _} = Enum.split(deck, hand_count)

    hand
  end

  @doc """
  creates a deal of a deck of card

  ## Examples

      iex> Cards.create_hand(hand_count)
  """
  def create_hand(hand_count) do
    create_deck()
    |> shuffle()
    |> deal(hand_count)
  end
end
