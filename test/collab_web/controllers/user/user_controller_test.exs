defmodule CollabWeb.User.UserControllerTest do
  use CollabWeb.ConnCase, async: true

  describe "create/2" do
    setup %{conn: conn} do
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
  end
end
