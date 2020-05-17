defmodule Collab.CreateUserTest do
  use Collab.DataCase, async: true

  alias Collab.{CreateUser, User}

  describe "run/1" do
    test "returns a structure when the params are valid" do
      params = %{
        name: "nogs",
        email: "nogs@nogs.com",
        password: "123456",
        phone: "+551999999999",
        birthday: DateTime.utc_now(),
        location: %{latitude: 11.1, longitude: 11.1}
      }

      assert {:ok, %User{} = user} = CreateUser.run(params)
      assert user.name == "nogs"
      assert user.email == "nogs@nogs.com"
      assert user.password_hash != "123456"
      assert user.location.latitude == 11.1
      assert user.location.longitude == 11.1
    end

    test "returns error when name is missing" do
      params = %{
        name: "",
        email: "nogs@nogs.com",
        password: "123456",
        phone: "+551999999999",
        birthday: DateTime.utc_now()
      }

      assert {:error, %Ecto.Changeset{} = changeset} = CreateUser.run(params)
      %{name: ["can't be blank"]} = errors_on(changeset)
    end

    test "returns error when name phone is missing" do
      params = %{
        name: "here",
        email: "nogs@nogs.com",
        password: "123456",
        birthday: DateTime.utc_now()
      }

      assert {:error, %Ecto.Changeset{} = changeset} = CreateUser.run(params)
      %{phone: ["can't be blank"]} = errors_on(changeset)
    end

    test "returns error when name birthday is missing" do
      params = %{name: "here", email: "nogs@nogs.com", password: "123456", phone: "+551999999999"}
      assert {:error, %Ecto.Changeset{} = changeset} = CreateUser.run(params)
      %{birthday: ["can't be blank"]} = errors_on(changeset)
    end

    test "returns error when email is missing" do
      params = %{name: "nogs", email: "", password: "123456"}
      assert {:error, %Ecto.Changeset{} = changeset} = CreateUser.run(params)
      %{email: ["can't be blank"]} = errors_on(changeset)
    end

    test "returns error when password is missing" do
      params = %{name: "nogs", email: "nogs@nogs.com", password: ""}
      assert {:error, %Ecto.Changeset{} = changeset} = CreateUser.run(params)
      %{password: ["can't be blank"]} = errors_on(changeset)
    end
  end
end
