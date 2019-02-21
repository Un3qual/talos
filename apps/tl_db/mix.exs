defmodule TL.DB.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tl_db,
      version: "0.0.1",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.8",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {TL.DB.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:postgrex, "~> 0.14.1"},
      {:ecto, "~> 3.0"},
      {:ecto_sql, "~> 3.0"},
      # Time parsing
      {:timex, "~> 3.5"},
      # Password Hashing
      {:comeonin, "~> 4.1.2"},
      {:argon2_elixir, "~> 1.2"},
      {:bcrypt_elixir, "~> 1.0"},
      {:pbkdf2_elixir, "~> 0.12.3"},
      # Better struct creation
      {:typed_struct, "~> 0.1.4"},
      # Auto reloading
      {:cortex, "~> 0.5.0", only: [:dev, :test]},
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
