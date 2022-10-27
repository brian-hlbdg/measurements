defmodule Measurements.MixProject do
  use Mix.Project

  def project do
    [
      app: :measurements,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Measurements.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.7"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix, "~> 1.6.0"},
      {:phoenix_ecto, "~> 4.2"},
      {:phoenix_html, "~> 3.2.0"},
      {:phoenix_live_dashboard, "~> 0.5"},
      {:phoenix_live_view, "~> 0.16"},
      {:jason, "~> 1.0"}
    ]
  end
end
