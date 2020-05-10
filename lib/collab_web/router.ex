defmodule CollabWeb.Router do
  use CollabWeb, :router

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  scope "/api/v1", CollabWeb do
    pipe_through :api
    #    post("/user", User.SessionController, :create)
    resources "/users", User.UserController, except: [:new, :index]
    post("/user/sign_in", User.SessionController, :login)
  end
end
