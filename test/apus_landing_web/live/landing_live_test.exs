defmodule ApusLandingWeb.LandingLiveTest do
  use ApusLandingWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "renders the landing page without the community chat section", %{conn: conn} do
    {:ok, view, _html} = live(conn, ~p"/")

    assert has_element?(view, "#landing-shell")
    assert has_element?(view, "#landing-hero")
    assert has_element?(view, "#landing-primary-cta[href=\"#setup\"]")
    assert has_element?(view, "#landing-footer-docs[href=\"#features\"]")
    refute has_element?(view, "#chat")
    refute render(view) =~ "Ask about Apus"
  end

  test "renders the hero install snippet with copy button", %{conn: conn} do
    {:ok, view, _html} = live(conn, ~p"/")

    assert has_element?(view, "#hero-install")
    assert has_element?(view, "#hero-install [data-copy-btn]")
    assert render(view) =~ "curl -fsSL https://raw.githubusercontent.com/ivanhoe/apus_cli/main/scripts/install.sh | bash"
  end
end
