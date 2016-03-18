defmodule Swoosh.Adapters.Test do
  @moduledoc """
  """

  @behaviour Swoosh.Adapter

  def deliver(email, _config) do
    send(self(), {:email, email})
  end
end
