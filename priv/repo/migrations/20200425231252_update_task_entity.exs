defmodule Collab.Repo.Migrations.UpdateTaskEntity do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :confirmed, :boolean, default: false
    end

    alter table(:tasks) do
      add :requester_id, :uuid, null: false
      add :volunteer_id, :uuid, null: true
    end

  end
end
