defmodule APIacFilterIPBlacklist.MixProject do
  use Mix.Project

  def project do
    [
      app: :apiac_filter_ip_blacklist,
      description: "APIac Elixir plug for IP blacklisting",
      version: "1.0.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        main: "readme",
        extras: ["README.md"]
      ],
      package: package(),
      source_url: "https://github.com/tanguilp/apiac_filter_ip_blacklist"
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
      {:apiac, "~> 1.0"},
      {:inet_cidr, "~> 1.0.0"},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  def package() do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/tanguilp/apiac_filter_ip_blacklist"}
    ]
  end
end
