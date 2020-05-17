defmodule CollabWeb.User.UserView do
  use CollabWeb, :view

  def render("user.json", %{user: user}) do
    %{
      status: "ok",
      data: %{
        id: user.id,
        name: user.name,
        email: user.email,
        phone: user.phone,
        location: location_json(user.location)
      }
    }
  end

  defp location_json(nil) do
    %{}
  end
  
  #todo
  defp location_json(%Ecto.Association.NotLoaded{}) do
    %{}
  end

  defp location_json(location) do
    %{
      latitude: location.latitude,
      longitude: location.longitude
    }
  end

end
