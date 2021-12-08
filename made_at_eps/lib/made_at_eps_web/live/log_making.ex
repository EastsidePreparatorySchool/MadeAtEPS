defmodule MadeAtEpsWeb.LogMakingLive do
  use MadeAtEpsWeb, :live_view


  @impl true
  def mount(_params, session, socket) do
    socket = socket |> assign(:uploaded_files, []) |> allow_upload(:photo, accept: ~w(.jpg .jpeg), max_entries: 2)
    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("validate", _params, socket) do
    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("cancel-upload", %{"ref" => ref}, socket) do
    {:noreply, cancel_upload(socket, :photo, ref)}
  end

  def handle_event("save", _params, socket) do
    # uploaded_files =
    #   consume_uploaded_entries(socket, :photo, fn %{path: path}, _entry ->
    #     dest = Path.join([MadeAtEps.uploads_priv_dir(), Path.basename(path)])
    #     File.cp!(path, dest)
    #     Routes.static_path(socket, "/uploads/#{Path.basename(dest)}")
    #   end)
    # {:noreply, update(socket, :uploaded_files, &(&1 ++ uploaded_files))}
    uploaded_files =
      consume_uploaded_entries(socket, :photo, fn %{path: path}, _entry ->
        dest = Path.join(MadeAtEps.uploads_priv_dir(), Path.basename(path))
        File.cp!(path, dest)
        Routes.static_path(socket, "/uploads/#{Path.basename(dest)}")
      end)

    {:noreply, update(socket, :uploaded_files, &(&1 ++ uploaded_files))}
  end
  def error_to_string(err), do: to_string(err)
end
