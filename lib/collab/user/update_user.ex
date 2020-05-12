defmodule Collab.UpdateUser do
  @moduledoc """
  Module responsable for updating a user
  """

  import Ecto.Changeset

  alias Collab.{Repo, UserRepo}

  def run(id, params) do
    try do
      UserRepo.get_user!(id)
      |> cast(params, [:id, :name, :email, :password, :phone, :birthday])
      |> validate_format(:email, ~r/@/)
      |> put_password()
      |> Repo.update()
    rescue
      Ecto.NoResultsError -> nil
    end
  end

  defp put_password(%Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset) do
    put_change(changeset, :password_hash, Bcrypt.hash_pwd_salt(password))
  end

  defp put_password(changeset), do: changeset
end
