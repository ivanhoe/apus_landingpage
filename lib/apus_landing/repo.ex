defmodule ApusLanding.Repo do
  use Ecto.Repo,
    otp_app: :apus_landing,
    adapter: Ecto.Adapters.SQLite3
end
