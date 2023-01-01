defmodule Teacher.Mailer.AlbumDeletedNotifier do
  use Phoenix.Swoosh,
    view: TeacherWeb.AlbumNotifierView,
    layout: {TeacherWeb.LayoutView, :email}

  def album_deleted(album) do
    new()
    |> from("noreply@example.com")
    |> to("hello@elixircasts.io")
    |> subject("Album deleted")
    |> render_body("album_deleted.html", %{album: album})
  end

end
