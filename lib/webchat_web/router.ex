defmodule WebchatWeb.Router do
  use WebchatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WebchatWeb do
    pipe_through :browser

    get "/", MessagesController, :index

    resources "/messages", MessagesController
  end

  # Other scopes may use custom stacks.
  # scope "/api", WebchatWeb do
  #   pipe_through :api
  # end
end
