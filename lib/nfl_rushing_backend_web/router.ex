defmodule NflRushingBackendWeb.Router do
  use NflRushingBackendWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  scope "/", NflRushingBackendWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api/v1", NflRushingBackendWeb do
    pipe_through :api

    get "/player", PlayerController, :index
  end

end
