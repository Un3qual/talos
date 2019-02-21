use Mix.Config

# Configure your database
config :tl_db, TL.DB.Repo,
  username: "postgres",
  password: "",
  database: "postgres",
  hostname: "localhost",
  pool_size: 10
