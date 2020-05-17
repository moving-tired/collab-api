defmodule CollabWeb.Task.TaskView do
  use CollabWeb, :view

  def render("task.json", %{task: task}) do
    %{
      status: "ok",
      data: %{
        id: task.id,
        name: task.name,
        description: task.description,
        to_date: task.to_date,
        created_by_id: task.created_by_id,
        location: location_json(task.location)
      }
    }
  end

  defp location_json(nil) do
    %{}
  end

  # todo
  defp location_json(%Ecto.Association.NotLoaded{}) do
    %{}
  end

  defp location_json(location) do
    %{
      latitude: location.latitude,
      longitude: location.longitude
    }
  end
end
