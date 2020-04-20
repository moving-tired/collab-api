defmodule Collab.Repo.Migrations.MissingUserFields do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :phone,  :text
      add :birthday, :date
    end
  end
end
