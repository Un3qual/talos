use Mix.Config

# Configure your database
config :tl_db, TL.DB.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "tl_db_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
