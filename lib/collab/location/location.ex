defmodule Collab.Location do
  @moduledoc """
  Locations module and it's changeset
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :latitude, :float
    field :longitude, :float

    timestamps()
  end

  def changeset(location, attrs) do
    location
    |> cast(attrs, [:latitude, :longitude])
    |> validate_required([:latitude, :longitude])
  end
end
