defmodule NflRushingBackendWeb.PlayerController do
  use NflRushingBackendWeb, :controller

  def index(conn, _params) do
    players = NflRushingBackend.Repo.all(NflRushingBackendWeb.Player)

    json conn, players
  end
end
