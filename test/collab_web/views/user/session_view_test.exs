defmodule CollabWeb.User.SessionViewTest do
  use ExUnit.Case, async: true

  alias CollabWeb.User.SessionView

  import Collab.Factory

  test "render/2 returns ok and the user data" do
    user = params_for(:user, name: "Joe Smith")

    assert %{
             status: "ok",
             data: %{
               name: "Joe Smith",
               token: "foo"
             }
           } = SessionView.render("session.json", %{user: user, token: "foo"})
  end

end
