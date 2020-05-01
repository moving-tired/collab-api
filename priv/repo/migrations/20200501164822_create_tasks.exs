defmodule Collab.Repo.Migrations.AddingTask do
  use Ecto.Migration

  def change do
    create table(:tasks, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :description, :string, null: false
      add :to_date, :utc_datetime, null: false

      add :created_by_id, references(:users)

      timestamps()
    end
  end
end
