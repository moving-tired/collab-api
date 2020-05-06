defmodule Collab.Task do
  @moduledoc """
  Task entity schema
  """

  use Ecto.Schema

  alias Collab.User

  schema "tasks" do
    field :name, :string
    field :description, :string
    field :to_date, :utc_datetime

    belongs_to :created_by, User
    timestamps()
  end
end
