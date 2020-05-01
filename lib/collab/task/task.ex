defmodule Collab.Task do
  @moduledoc """
  Task entity schema
  """

  use Ecto.Schema
  import Ecto.Changeset

  alias Collab.User

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "tasks" do
    field :name, :string
    field :description, :string
    field :to_date, :utc_datetime
    field :end_date, :utc_datetime

    belongs_to :created_by, User
    timestamps()
  end

  @required_fields ~w(name description requester_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.
  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end