defmodule Collab.Repo.Migrations.AddingTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string, null: false
      add :description, :string, null: false
      add :to_date, :utc_datetime, null: false

      add :created_by_id, references(:users), null: false

      timestamps()
    end
  end
end
