defmodule CollabWeb.User.TaskControllerTest do
  use CollabWeb.ConnCase, async: true

  import Collab.Factory

  describe "task/2" do
    setup %{conn: conn} do
      insert(:user, id: 1, name: "John Smith", email: "john@gmail.com")
      insert(:task, id: 1, name: "test task", description: "description")
      %{conn: conn}
    end

    test "returns 200 when we create a task" do
      res =
        build_conn()
        |> post(
             "/api/v1/tasks",
             %{
               "name" => "Test name",
               "description" => "description",
               "created_by_id" => "1",
               "to_date" => DateTime.utc_now(),
               "location" => %{
                 latitude: 11.1,
                 longitude: 11.1
               }
             }
           )
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "id" => _,
                 "name" => "Test name",
                 "created_by_id" => 1,
                 "description" => "description",
                 "to_date" => _,
                 "location" => %{
                   "latitude" => 11.1,
                   "longitude" => 11.1
                 }
               }
             } = json_response(res, 200)
    end

    test "returns 200 when we try to get the task" do
      res =
        conn()
        |> get("/api/v1/tasks/1")
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "id" => _,
                 "name" => "test task",
                 "description" => "description",
                 "location" => %{}
               }
             } = json_response(res, 200)
    end

    test "returns 404 when we try to get the task that not exists" do
      res =
        conn()
        |> get("/api/v1/tasks/12344354")
        |> doc

      assert %{
               "status" => "not_found"
             } = json_response(res, 404)
    end

    test "returns 200 when we try to update a task" do
      res =
        conn()
        |> put(
             "/api/v1/tasks/1",
             %{
               "name" => "Test name2",
               "description" => "description2",
             }
           )
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "id" => _,
                 "name" => "Test name2",
                 "description" => "description2",
                 "location" => %{}
               }
             } = json_response(res, 200)
    end

    test "returns 200 when we try to update a task with location" do
      res =
        conn()
        |> put(
             "/api/v1/tasks/1",
             %{
               "name" => "Test name2",
               "description" => "description2",
               "location" => %{
                 latitude: 11.1,
                 longitude: 11.1
               }
             }
           )
        |> doc

      assert %{
               "status" => "ok",
               "data" => %{
                 "id" => _,
                 "name" => "Test name2",
                 "description" => "description2",
                 "location" => %{
                   "latitude" => 11.1,
                   "longitude" => 11.1
                 }
               }
             } = json_response(res, 200)
    end

    test "returns 404 when we try to update a task and it doesn't exist" do
      res =
        conn()
        |> put(
             "/api/v1/tasks/22222",
             %{
               "name" => "Test name2",
               "description" => "description2"
             }
           )
        |> doc

      assert %{
               "status" => "not_found"
             } = json_response(res, 404)
    end
  end
end
