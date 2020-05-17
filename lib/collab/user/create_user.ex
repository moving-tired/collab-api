defmodule Collab.CreateUser do
  @moduledoc """
  Module responsible for creating new user
  """

  import Ecto.Changeset

  alias Collab.{Location, Repo, User}

  def run(params) do
    %User{}
    |> cast(params, [:name, :email, :password, :phone, :birthday])
    |> validate_required([:name, :email, :password, :phone, :birthday])
    |> validate_format(:email, ~r/@/)
    |> put_password()
    |> cast_assoc(:location, required: false, with: &Location.changeset/2)
    |> Repo.insert()
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
