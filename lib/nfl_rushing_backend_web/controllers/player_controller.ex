defmodule NflRushingBackendWeb.PlayerController do
  use NflRushingBackendWeb, :controller

  def index(conn, _params) do
    players = NflRushingBackend.Repo.all(NflRushingBackend.Player)

    json conn, players
  end
end
