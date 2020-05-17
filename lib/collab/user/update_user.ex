defmodule Collab.UpdateUser do
  @moduledoc """
  Module responsible for updating a user
  """

  import Ecto.Changeset

  alias Collab.{Location, Repo, UserRepo}

  def run(id, params) do
    UserRepo.get_user!(id)
    |> cast(params, [:id, :name, :email, :password, :phone, :birthday])
    |> validate_format(:email, ~r/@/)
    |> put_password()
    |> cast_assoc(:location, with: &Location.changeset/2)
    |> Repo.update()
  rescue
    Ecto.NoResultsError -> nil
  end

  defp put_password(
         %Ecto.Changeset{
           valid?: true,
           changes: %{
             password: password
           }
         } = changeset
       ) do
    put_change(changeset, :password_hash, Bcrypt.hash_pwd_salt(password))
  end

  defp put_password(changeset), do: changeset
end
