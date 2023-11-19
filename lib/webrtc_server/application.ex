defmodule Server.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Server
    ]

    opts = [strategy: :rest_for_one, name: Server.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
