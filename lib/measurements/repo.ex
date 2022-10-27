defmodule Measurements.Repo do
  use Ecto.Repo,
    otp_app: :measurements,
    adapter: Ecto.Adapters.Postgres
end
