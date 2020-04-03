defmodule Collab.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    execute("CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";")

    create table(:users) do
      add :name, :string, null: false
      add :email, :string, null: false
      add :password_hash, :string, null: false

      add(:user_uuid, :uuid, default: fragment("uuid_generate_v4()"))

      timestamps()
    end
  end
end
