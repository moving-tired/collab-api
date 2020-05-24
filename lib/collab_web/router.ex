defmodule CollabWeb.Router do
  use CollabWeb, :router

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  pipeline :auth do
    plug(CollabWeb.AuthPipeline)
  end

  scope "/api/v1", CollabWeb do
    pipe_through :api
    post("/users/sign_in", User.SessionController, :login)
  end

  scope "/api/v1", CollabWeb do
    pipe_through [:api, :auth]
    # pending update
    resources "/users", User.UserController, except: [:new, :index, :edit]
    resources "/tasks", Task.TaskController, except: [:new, :index, :edit]
    post("/users/sign_in", User.SessionController, :login)
  end

end
