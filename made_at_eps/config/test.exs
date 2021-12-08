import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :made_at_eps, MadeAtEpsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "bPDEOb86f9Fe4XAQ9oTXVjRDbLczby+fgYrOBGQ64lUWvL0BAT+7upYBu8YFaOa7",
  server: false

# In test we don't send emails.
config :made_at_eps, MadeAtEps.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
