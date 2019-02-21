use Mix.Config

config :tl_db, ecto_repos: [TL.DB.Repo]

import_config "#{Mix.env}.exs"
