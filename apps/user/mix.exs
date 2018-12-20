defmodule User.Mixfile do
  use Mix.Project

  def project do
    [app: :user,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :database],
     mod: {User.Application, []}]
  end

  defp deps do
    [
      {:database, in_umbrella: true},
      {:ecto, "~> 2.2"},
      {:comeonin, "~> 4.0"},
      {:argon2_elixir, "~> 1.2"}
    ]
  end

  defp aliases do
    [
      seed: "run priv/repo/seeds.exs"
    ]
  end
end