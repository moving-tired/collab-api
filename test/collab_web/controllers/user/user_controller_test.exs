defmodule CollabWeb.User.UserControllerTest do
  use CollabWeb.ConnCase, async: true

  import Collab.Factory

  describe "create/2" do
    setup %{conn: conn} do
      insert(:user, id: 1, name: "John Smith", email: "john@gmail.com")
      %{conn: conn}
    end

    test "returns 200 when credentials are valid" do
      res = build_conn()
        |> post("/api/v1/users", %{
            "name" => "Test name",
            "email" => "test@gmail.com",
            "password" => "123456",
            "phone" => "+551999999999",
            "birthday" => DateTime.utc_now()
          })
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "id" => _,
                 "name" => "Test name",
                 "email" => "test@gmail.com",
                 "phone" => "+551999999999"
               }
             } = json_response(res, 200)
    end

    test "returns 200 when we try to get the user" do
      res = conn()
        |> get("/api/v1/users/1")
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "id" => _,
                 "name" => "John Smith",
                 "email" => "john@gmail.com",
                 "phone" => nil
               }
             } = json_response(res, 200)
    end

    test "returns 404 when we try to get the user that not exists" do
      res = conn()
        |> get("/api/v1/users/12344354")
        |> doc

      assert %{
               "status" => "not_found"
             } = json_response(res, 404)
    end

    test "returns 200 when we try to update a user" do
      res = conn()
        |> put("/api/v1/users/1", %{
          "name" => "Test 2",
          "email" => "test@gmail.com",
          "password" => "123456",
          "phone" => "+551999999999",
          "birthday" => DateTime.utc_now()
        })
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                "id" => _,
                "name" => "Test 2",
                "email" => "test@gmail.com",
                "phone" => "+551999999999"
              }
             } = json_response(res, 200)
    end

    test "returns 200 when we try to update a user and it doesn't exist" do
      res = conn()
        |> put("/api/v1/users/2", %{
          "name" => "Test name",
          "email" => "test@gmail.com",
          "password" => "123456",
          "phone" => "+551999999999",
          "birthday" => DateTime.utc_now()
        })
        |> doc

      assert %{
               "status" => "not_found",
             } = json_response(res, 404)
    end
  end
end
