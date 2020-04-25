defmodule Collab.CreateTask do
  @moduledoc """
  Module responsable for creating task
  """
  import Ecto.Changeset

  alias Collab.{Repo, Task}

  def run(params, requester_id) do
    %Task{}
    |> cast(params, [:name, :description])
    |> validate_required([:name, :description])
    |> assign_requester(requester_id)
    |> Repo.insert()
  end

  defp assign_requester(%Ecto.Changeset{valid?: true, changes: %{requester_id: requester_id}} = changeset, requester_id) do
    put_change(changeset, :requester_id, requester_id)
  end

end
