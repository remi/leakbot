defmodule Leakbot.Mixfile do
  use Mix.Project

  def project do
    [app: :leakbot,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :slack],
     mod: {Leakbot, []}]
  end

  defp deps do
    [{:slack, "~> 0.9.1"}]
  end
end
