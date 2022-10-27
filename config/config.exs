import Config

config :phoenix, :json_library, Jason
config :measurements,ecto_repos: [Measurements.Repo]
config :measurements, Measurements.Repo,
  database: "measurements_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
