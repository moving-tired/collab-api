defmodule CollabWeb.User.SessionView do
  use CollabWeb, :view

  def render("session.json", %{user: user, token: token}) do
    %{
      status: "ok",
      data: %{
        name: user.name,
        token: token
      }
    }
  end

  def render("user.json", %{user: user}) do
    %{
      status: "ok",
      data: %{
        name: user.name
      }
    }
  end
end
