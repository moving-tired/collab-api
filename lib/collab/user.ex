defmodule Collab.User do
  use Ecto.Schema

  schema "users" do
    field :email, :string
    field :name, :string
    field :password_hash, :string

    field :user_uuid, :binary_id

    timestamps()
  end

  # @doc false
  # def changeset(user, attrs) do
  #   user
  #   |> cast(attrs, [:_id, :name, :email, :password_hash])
  #   |> validate_required([:_id, :name, :email, :password_hash])
  # end
end
