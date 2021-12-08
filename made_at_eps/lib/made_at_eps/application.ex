defmodule MadeAtEps.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MadeAtEpsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: MadeAtEps.PubSub},
      # Start the Endpoint (http/https)
      MadeAtEpsWeb.Endpoint
      # Start a worker by calling: MadeAtEps.Worker.start_link(arg)
      # {MadeAtEps.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MadeAtEps.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MadeAtEpsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
