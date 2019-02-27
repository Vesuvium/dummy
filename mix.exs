defmodule Dummy.MixProject do
  use Mix.Project

  def project do
    [
      app: :dummy,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 0.9.1", only: [:dev, :test], runtime: false},
      {:meck, "~> 0.8.13"}
    ]
  end
end