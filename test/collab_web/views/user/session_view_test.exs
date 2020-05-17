defmodule CollabWeb.User.SessionViewTest do
  use ExUnit.Case, async: true

  alias CollabWeb.User.SessionView

  import Collab.Factory

  test "render/2 returns ok and the user data" do
    user = %Collab.User{ name: "Joe Smith", id: 1 }

    assert %{
             status: "ok",
             data: %{
               name: "Joe Smith",
               id: 1,
               token: "foo"
             }
           } = SessionView.render("session.json", %{user: user, token: "foo"})
  end
end
