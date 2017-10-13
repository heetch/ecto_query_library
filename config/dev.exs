use Mix.Config
config :fishing_spot, FishingSpot.Repo,
    adapter: Ecto.Adapters.Postgres,
    database: "fishing_spot_dev",
    username: "postgres",
    password: "postgres",
    hostname: "localhost"
