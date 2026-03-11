defmodule ApusLanding.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {NodeJS.Supervisor, [path: LiveVue.SSR.NodeJS.server_path(), pool_size: 4]},
      ApusLandingWeb.Telemetry,
      ApusLanding.Repo,
      {DNSCluster, query: Application.get_env(:apus_landing, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ApusLanding.PubSub},
      # Start a worker by calling: ApusLanding.Worker.start_link(arg)
      # {ApusLanding.Worker, arg},
      # Start to serve requests, typically the last entry
      ApusLandingWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApusLanding.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ApusLandingWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
