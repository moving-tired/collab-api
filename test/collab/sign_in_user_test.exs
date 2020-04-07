defmodule Collab.SignInUserTest do
  use Collab.DataCase, async: true

  import Collab.Factory

  alias Collab.{User, SignInUser}

  describe "run/2" do
    setup do
      insert(:user)
      :ok
    end

    test "returns ok when email and password match" do
      assert {:ok, %User{}} = SignInUser.run("email@example.com", "123456")
    end

    test "returns error when there is no user with this email" do
      assert {:error, :email_or_password_invalid} = SignInUser.run("zz@example.com", "123456")
    end

    test "returns error when the password is invalid" do
      assert {:error, :email_or_password_invalid} = SignInUser.run("email@example.com", "wrong")
    end
  end
end
