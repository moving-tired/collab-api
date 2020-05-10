defmodule CollabWeb.Task.TaskController do
  use CollabWeb, :controller

  alias Collab.{CreateTask, Repo, Task}

  def create(conn, params) do
    case CreateTask.run(params) do
      {:ok, %Task{} = task} ->
        render(conn, "task.json", %{task: task})

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_status(400)
        |> json(%{error: changeset})
    end
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(Task, String.to_integer(id)) do
      %Task{} = task ->
        render(conn, "task.json", %{task: task})

      nil ->
        {:error, :not_found}
    end
  end

  def delete(conn, %{"id" => id}) do
    case Repo.get(Task, String.to_integer(id)) do
      %Task{} = task ->
        delete(conn, task)

      nil ->
        {:error, :not_found}
    end
  end

  def delete(conn, task) do
    case Repo.delete(task) do
      {:ok, task} ->
        render(conn, "task.json", %{task: task})

      {:error, changeset} ->
        conn
        |> put_status(400)
        |> json(%{error: changeset})
    end
  end
end
