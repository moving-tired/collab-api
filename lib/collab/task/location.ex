defmodule Collab.Location do
  @moduledoc """
  Location schema
  """

  use Ecto.Schema

  schema "locations" do
    field :address, :string
    field :longitude, :float
    field :latitude, :float

    field :location_uuid, :binary_id

    timestamps()
  end
end
