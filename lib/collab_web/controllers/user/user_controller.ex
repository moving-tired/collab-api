defmodule CollabWeb.User.UserController do
  use CollabWeb, :controller

  alias Collab.{CreateUser, Repo, User}

  def create(conn, params) do
    case CreateUser.run(params) do
      {:ok, %User{} = user} ->
        render(conn, "user.json", %{user: user})

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_status(400)
        |> json(%{error: changeset})
    end
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(User, String.to_integer(id)) do
      %User{} = user ->
        render(conn, "user.json", %{user: user})

      nil ->
        {:error, :not_found}
    end
  end

  def delete(conn, %{"id" => id}) do
    case Repo.get(User, String.to_integer(id)) do
      %User{} = user ->
        delete(conn, user)

      nil ->
        {:error, :not_found}
    end
  end

  def delete(conn, user) do
    case Repo.delete(user) do
      {:ok, user} ->
        render(conn, "user.json", %{user: user})

      {:error, changeset} ->
        conn
        |> put_status(400)
        |> json(%{error: changeset})
    end
  end
end
