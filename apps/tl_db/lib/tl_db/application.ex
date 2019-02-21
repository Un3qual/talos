defmodule TL.DB.Application do
  @moduledoc """
  The TL.DB Application Service.

  The tl_db system business domain lives in this application.

  Exposes API to clients such as the `TL.DBWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(TL.DB.Repo, []),
    ], strategy: :one_for_one, name: TL.DB.Supervisor)
  end
end
