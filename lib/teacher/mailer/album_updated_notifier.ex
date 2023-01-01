defmodule Teacher.Mailer.AlbumUpdatedNotifier do
  use Phoenix.Swoosh,
    view: TeacherWeb.AlbumNotifierView,
    layout: {TeacherWeb.LayoutView, :email}

  def album_updated(album) do
    new()
    |> from("noreply@example.com")
    |> to("hello@elixircasts.io")
    |> subject("Album updated")
    |> render_body("album_updated.html", %{album: album})
  end

end
