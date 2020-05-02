defmodule Collab.CreateTaskTest do
  @moduledoc """
  Create task test module
  """

  use Collab.DataCase, async: true

  alias Collab.{CreateTask, Task}

  import Collab.Factory

  describe "run/1" do
    test "returns a structure when the params are valid" do
      user = insert(:user)
      params = %{
        name: "Ajuda ida ao supermercado",
        description: "Description ajuda",
        to_date: ~U[2020-05-01 11:11:11Z],
        created_by_id: user.id
      }

      assert {:ok, %Task{} = task} = CreateTask.run(params)
      assert task.name == "Ajuda ida ao supermercado"
      assert task.description == "Description ajuda"
      assert task.to_date == ~U[2020-05-01 11:11:11Z]
      assert task.created_by_id == user.id
    end

  end


end