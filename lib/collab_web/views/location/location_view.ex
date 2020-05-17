defmodule CollabWeb.Location.LocationView do
  use CollabWeb, :view

  def render("location.json", %{location: location}) do
    %{
      latitude: location.latitude,
      longitude: location.longitude
    }
  end
end
