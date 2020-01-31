defmodule NflRushingBackend.Player do
  use Ecto.Schema
  import Ecto.Changeset
  alias NflRushingBackend.Player

  schema "players" do
    field :player, :string
    field :team, :string
    field :position, :string
    field :attempts, :integer
    field :attemptspergame, :decimal
    field :yards, :decimal
    field :avg, :decimal
    field :yardspergame, :decimal
    field :touchdowns, :integer
    field :longestrush, :integer
    field :firstdown, :integer
    field :firstdownpercentage, :decimal
    field :twentyyards, :integer
    field :fortyyards, :integer
    field :fumbles, :integer

    timestamps()
  end

  def changeset(player, params \\ %{}) do
    player
    |> cast(params, [:player, :team, :position, :attempts, :attemptspergame, :yards, :avg, :yardspergame, :touchdowns, :longestrush, :firstdown, :firstdownpercentage, :twentyyards, :fortyyards, :fumbles])
  end
end