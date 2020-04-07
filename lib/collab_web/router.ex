defmodule CollabWeb.Router do
  use CollabWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", CollabWeb do
    pipe_through :api

    post("/user/sign_in", User.SessionController, :create)
  end
end
