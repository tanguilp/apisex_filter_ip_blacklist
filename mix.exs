defmodule APISexFilterIPBlacklist.MixProject do
  use Mix.Project

  def project do
    [
      app: :apisex_filter_ip_blacklist,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.0"},
      {:apisex, github: "tanguilp/apisex", tag: "master"},
      {:inet_cidr, "~> 1.0.0"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end
end
