import Config

database_url =
  "postgres://etczizlc:UyFqB_6cuzWpfmw38ZoPwbrJfBDRb6ZW@tuffi.db.elephantsql.com/etczizlc" ||
    raise """
    environment variable DATABASE_URL is missing.
    For example: ecto://USER:PASS@HOST/DATABASE
    """

config :findmy_personal, FindmyPersonal.Repo,
  # ssl: true,
  url: database_url,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "2")

secret_key_base =
  "cLovnHw1s8n14fN6skXGzI67vCqjpMqScV7oBHWW/+RIfKJk+P3cujx+HgjSYgu9" ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """

config :findmy_personal, FindmyPersonalWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4000"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: secret_key_base

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
config :findmy_personal, FindmyPersonalWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
