defmodule MbcsUtil.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mbcs_util,
      name: "MbcsUtil",
      version: "0.1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Lib for elixir",
      source_url: "https://github.com/dev800/mbcs_util",
      homepage_url: "https://github.com/dev800/mbcs_util",
      package: package(),
      docs: [
        extras: ["README.md"],
        main: "readme"
      ]
    ]
  end

  def application do
    [
      applications: [:mbcs]
    ]
  end

  defp deps do
    [
      {:mbcs, "~> 1.1"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["happy"],
      licenses: ["BSD 3-Clause"],
      links: %{"Github" => "https://github.com/dev800/mbcs_util"}
    }
  end
end
