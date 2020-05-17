defmodule Collab.UserRepo do
  @moduledoc """
  User repository
  """

  alias Collab.{Repo, User}

  def get_user!(id) do
    Repo.get!(User, id)
    |> Repo.preload(:location)
  end
end
