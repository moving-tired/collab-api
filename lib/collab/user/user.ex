defmodule Collab.User do
  @moduledoc """
  User schema
  """

  use Ecto.Schema

  schema "users" do
    field :email, :string
    field :name, :string
    field :password_hash, :string
    field :password, :string, virtual: true
    field :birthday, :date
    field :confirmed, :boolean
    field :phone, :string

    field :user_uuid, :binary_id

    timestamps()
  end
end
