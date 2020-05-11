defmodule CollabWeb.Router do
  use CollabWeb, :router

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  scope "/api/v1", CollabWeb do
    pipe_through :api
    # pending update
    resources "/users", User.UserController, except: [:new, :index, :edit, :update]
    put("/users/:id", User.UserController, :update)
    post("/users/sign_in", User.SessionController, :login)

    resources "/tasks", Task.TaskController, except: [:new, :index, :edit, :update]
  end
end
