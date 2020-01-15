# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     NflRushingBackend.Repo.insert!(%NflRushingBackend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

defmodule NflRushingBackendSeed do
  alias NflRushingBackendWeb.Player

  def get_json(filename) do

    filename
    |> File.read!
    |> Poison.decode!

  end

  def insert(players) do

    Enum.each players, fn player ->


      Player.changeset(%Player{}, %{player: player["Player"],team: player["Team"],position: player["Pos"],attempts: player["Att"],attemptspergame: player["Att/G"],yards: player["Yds"],avg: player["Avg"],yardspergame: player["Yds/G"],touchdowns: player["TD"],longestrush: player["Lng"],firstdown: player["1st"],firstdownpercentage: player["1st%"],twentyyards: player["20+"],fortyyards: player["40+"],fumbles: player["FUM"]})
      |> Ecto.Changeset.apply_changes
      |> NflRushingBackend.Repo.insert
    end

  end

end

content = NflRushingBackendSeed.get_json("formatted-rushing.json")
NflRushingBackendSeed.insert(content)
