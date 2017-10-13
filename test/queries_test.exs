defmodule FishingSpot.QueriesTest do
  use ExUnit.Case, async: true
  import Ecto.Query
  ExUnit.configure(trace: true)

  alias FishingSpot.Repo
  alias FishingSpot.Location
  alias FishingSpot.LocationTrip
  alias FishingSpot.LocationType
  alias FishingSpot.Fisherman
  alias FishingSpot.FishermanTrip
  alias FishingSpot.FishLanded
  alias FishingSpot.FishSpecies
  alias FishingSpot.FlyType
  alias FishingSpot.Trip
  alias FishingSpot.Account

  alias FishingSpot.Query

  setup do
   :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  # See schema diagram here: https://gist.githubusercontent.com/parkerl/b25e56ee9a76e93be0b0/raw/3351336524cbd57bff1d6ab04d6a0a85beb5e5e8/gistfile1.txt

  test "find all fishermen" do
    fishermen = false # FILL ME, Repo.all ...
    assert 8 = length(fishermen)
  end

  test "select a tuple of name and date_of_birth for all fishermen" do
    fishermen_names_and_dates = false # FILL ME, Repo.all ...
    assert(
      Enum.reduce(fishermen_names_and_dates, true, fn
        x, acc when is_tuple(x) -> acc && true
        x, acc -> acc && false
      end),
      "result is not a list of tuples"
    )
  end


  test "order fishermen by name" do
    fishermen = false # FILL ME, Repo.all ...
    assert "Joe" = hd(fishermen)
  end

  test "find length of the biggest fish" do
    biggest_fish_length = false # FILL ME, Repo.all ...
    assert Decimal.new(90) == biggest_fish_length
  end

  test "find the two fishermen named Lew, born on 1976/01/05" do
    {_, date} = Ecto.Date.cast("1976-01-05")
    name      = "Lew"

    fishermen = #false # FILL ME, Repo.all
    Repo.all(
      from fisherman in Fisherman,
      where: [name: "Lew", date_of_birth: ^date]
    )

    assert [%Fisherman{id: 4}, %Fisherman{id: 8}] = fishermen
  end

  test "find the biggest fish catcher" do
    fisherman = false # FILL ME, Repo.one ...
    assert {"Kirk", _90_0} = fisherman
  end
end
