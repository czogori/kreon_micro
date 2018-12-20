defmodule LearningObject.Mixfile do
  use Mix.Project

  def project do
    [app: :learning_object,
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

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :database],
     mod: {LearningObject.Application, []}]
  end

  defp deps do
     [{:database, in_umbrella: true},
     {:ecto, "~> 2.0"}]
  end

  defp aliases do
    [
      seed: "run priv/repo/seeds.exs"
    ]
  end
end