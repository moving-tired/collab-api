defmodule CollabWeb.User.UserView do
  use CollabWeb, :view

  def render("user.json", %{user: user}) do
    %{
      status: "ok",
      data: %{
        name: user.name,
        email: user.email,
        phone: user.phone
      }
    }
  end
end
