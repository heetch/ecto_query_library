defmodule FishingSpot.QueriesTest do
  use ExUnit.Case, async: true
  import Ecto.Query
  ExUnit.coIfigure(trace: true)

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
    assert 4 = length(fishermen)
  end

  test "select name and date_of_birth for all fishermen and return them as tuples" do
    # the select clause can be passed either a list or a tuple
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

  test "find length of the lengthiest landed fish" do
    lengthiest_fish = false # FILL ME, Repo.one ...
    assert Decimal.new(30) == lengthiest_fish
  end

  test "find the fisherman named Lew, born on 1976/01/05 by its name and birth date" do
    {_, date} = Ecto.Date.cast("1976-01-05")
    name      = "Lew"

    fishermen = #false # FILL ME, Repo.all

    assert [%Fisherman{id: 4}] = fishermen
  end

  test "find the name of the fisherman that caught the biggest number of fish" do
    [name_and_count | _] = false # FILL ME, Repo.one ...
    assert {"Kirk", 283} = name_and_count
  end
end
