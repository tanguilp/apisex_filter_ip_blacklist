defmodule APIacFilterIPBlacklist.MixProject do
  use Mix.Project

  def project do
    [
      app: :apiac_filter_ip_blacklist,
      version: "0.2.0",
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
      {:apiac, github: "tanguilp/apiac", tag: "0.2.0"},
      {:inet_cidr, "~> 1.0.0"},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end
end
