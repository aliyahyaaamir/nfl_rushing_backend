defmodule NflRushingBackend.Repo.Migrations.CreatePlayer do
  use Ecto.Migration

  def change do

    create table(:players) do
      add :player, :string
      add :team, :string
      add :position, :string
      add :attempts, :integer
      add :attemptspergame, :decimal
      add :yards, :decimal
      add :avg, :decimal
      add :yardspergame, :decimal
      add :touchdowns, :integer
      add :longestrush, :integer
      add :firstdown, :integer
      add :firstdownpercentage, :decimal
      add :twentyyards, :integer
      add :fortyyards, :integer
      add :fumbles, :integer

      timestamps()
    end

    create unique_index(:players, [:player, :team])
  end
end
