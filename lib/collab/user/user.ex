defmodule Collab.User do
  @moduledoc """
  User schema
  """

  use Ecto.Schema

  alias Collab.Location

  schema "users" do
    field :email, :string
    field :name, :string
    field :password_hash, :string
    field :password, :string, virtual: true
    field :birthday, :date
    field :phone, :string
    field :confirmed, :boolean
    belongs_to :location, Location

    timestamps()
  end
end
