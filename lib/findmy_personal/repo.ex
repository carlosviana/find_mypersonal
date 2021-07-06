defmodule FindmyPersonal.Repo do
  use Ecto.Repo,
    otp_app: :findmy_personal,
    adapter: Ecto.Adapters.Postgres
end
