defmodule NflRushingBackend.Repo do
  use Ecto.Repo,
    otp_app: :nfl_rushing_backend,
    adapter: Ecto.Adapters.Postgres
end
