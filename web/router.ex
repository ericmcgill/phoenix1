defmodule Phoenix1.Router do
  use Phoenix1.Web, :router

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

  scope "/", Phoenix1 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/p2", Phoenix2 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
  # Other scopes may use custom stacks.
  # scope "/api", Phoenix1 do
  #   pipe_through :api
  # end
end
