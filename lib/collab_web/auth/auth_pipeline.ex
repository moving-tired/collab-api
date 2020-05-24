defmodule CollabWeb.AuthPipeline do
  @moduledoc false

  use Guardian.Plug.Pipeline,
      otp_app: :collab,
      module: CollabWeb.Guardian,
      error_handler: CollabWeb.AuthErrorHandler

  plug(Guardian.Plug.VerifySession)
  # If there is an authorization header, restrict it to an access token and validate it
  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug(Guardian.Plug.EnsureAuthenticated)
  plug(Guardian.Plug.LoadResource)
end