defmodule Collab.TaskRepo do
  @moduledoc """
  User repository
  """

  alias Collab.{Repo, Task}

  def get_task!(id) do
    Repo.get!(Task, id)
    |> Repo.preload(:location)
  end
end
