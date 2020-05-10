defmodule Collab.CreateTask do
  @moduledoc """
  Module responsible for creating task
  """
  import Ecto.Changeset

  alias Collab.{Repo, Task}

  @doc """
  Creates a changeset based on the `model` and `params`.
  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def run(params) do
    %Task{}
    |> cast(params, [:name, :description, :to_date, :created_by_id])
    |> validate_required([:name, :description, :to_date, :created_by_id])
    |> foreign_key_constraint(:created_by_id)
    |> Repo.insert()
  end
end
