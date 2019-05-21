defmodule Webchat.Repo do
  use Ecto.Repo,
    otp_app: :webchat,
    adapter: Ecto.Adapters.Postgres
end
