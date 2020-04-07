defmodule Collab.Factory do
  @moduledoc """
  Colab Factory
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
end
