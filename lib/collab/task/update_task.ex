defmodule Collab.UpdateTask do
  @moduledoc """
  Module responsible for updating a task
  """

  import Ecto.Changeset

  alias Collab.{Location, Repo, TaskRepo}

  def run(id, params) do
    TaskRepo.get_task!(id)
    |> cast(params, [:name, :description, :to_date, :created_by_id])
    |> cast_assoc(:location, with: &Location.changeset/2)
    |> Repo.update()
  rescue
    Ecto.NoResultsError -> nil
  end
end
