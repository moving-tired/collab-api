defmodule CollabWeb.User.SessionControllerTest do
  use CollabWeb.ConnCase, async: true

  import Collab.Factory

  describe "signin/2" do
    setup %{conn: conn} do
      insert(:user, name: "John Smith", email: "john@gmail.com")
      %{conn: conn}
    end

    test "returns 200 when credentials are valid" do
      res =
        build_conn()
        |> post("/api/v1/users/sign_in", %{
          "email" => "john@gmail.com",
          "password" => "123456"
        })
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "name" => "John Smith",
                 "token" => _
               }
             } = json_response(res, 200)
    end

    test "returns 401 when email is invalid" do
      res =
        build_conn()
        |> post("/api/v1/users/sign_in", %{
          "email" => "johnX@gmail.com",
          "password" => "123456"
        })
        |> doc

      assert %{"status" => "unauthenticated"} = json_response(res, 401)
    end

    test "returns 401 when password is invalid" do
      res =
        post(build_conn(), "/api/v1/users/sign_in", %{
          "email" => "john@gmail.com",
          "password" => "X123456"
        })

      assert %{"status" => "unauthenticated"} = json_response(res, 401)
    end
  end
end
