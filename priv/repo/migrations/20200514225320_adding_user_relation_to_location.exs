defmodule Collab.Repo.Migrations.AddingUserRelationToLocation do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :location_id, references(:locations)
    end
  end
end
