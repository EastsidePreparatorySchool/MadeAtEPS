defmodule MadeAtEps do
  @moduledoc """
  MadeAtEps keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def uploads_priv_dir do
    Path.join([:code.priv_dir(:made_at_eps), "static", "uploads"])
  end
end
