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
    field :phone, :string
    field :confirmed, :boolean

    timestamps()
  end
end
