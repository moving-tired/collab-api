defmodule CollabWeb.Task.TaskView do
  use CollabWeb, :view

  def render("task.json", %{task: task}) do
    %{
      id: task.id,
      name: task.name,
      toDate: task.to_date,
      created_by_id: task.created_by_id
    }
  end
end
