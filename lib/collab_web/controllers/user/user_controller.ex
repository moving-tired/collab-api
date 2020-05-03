defmodule CollabWeb.User.UserController do
  use CollabWeb, :controller

  alias Collab.{CreateUser, Repo, User}

  import Ecto.Changeset

  def create(conn, params) do
    case CreateUser.run(params) do
      {:ok, %User{} = user} -> prepare_user(user)
      {:error, %Ecto.Changeset{} = changeset} -> {:error, changeset}
    end
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(User, String.to_integer(id)) do
      %User{} = user -> prepare_user(user)
      nil -> {:error, :not_found}
    end
  end

  defp prepare_user(user) do
    #    not sure if it is needed
    result = user
             |> Enum.map(
                  fn
                    {k, "password"} -> {k, "****"}
                    other -> other
                  end
                )
             |> Enum.into(%{})

    {:ok, result}
  end


end