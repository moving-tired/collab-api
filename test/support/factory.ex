defmodule Collab.Factory do
  @moduledoc """
  Collab Factory
  """
  # with Ecto
  use ExMachina.Ecto, repo: Collab.Repo

  def user_factory do
    %Collab.User{
      name: "Jane Smith",
      email: "email@example.com",
      password_hash: Bcrypt.hash_pwd_salt("123456")
    }
  end

  def task_factory do
    %Collab.Task{
      name: "Ajuda ida ao supermercado",
      description: "Description ajuda",
      to_date: ~U[2020-05-01 11:11:11Z],
      created_by: build(:user)
    }
  end
end
