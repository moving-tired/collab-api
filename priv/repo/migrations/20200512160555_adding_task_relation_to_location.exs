defmodule Collab.Repo.Migrations.AddingTaskRelationToLocation do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add :location_id, references(:locations)
    end
  end
end
