defmodule Collab.Repo.Migrations.AddingTask do
  use Ecto.Migration

  def change do
    create table(:tasks, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :description, :string, null: false
      add :toDate, :date, null: false

      timestamps()
    end
  end
end
