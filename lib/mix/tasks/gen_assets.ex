defmodule Mix.Tasks.GenAssets do
  @moduledoc """
  Generates static PNG assets from SVG sources so that Vite can copy them to
  `priv/static/` during the asset build step.

  Output files (written to `assets/public/`):

    * `assets/public/apple-touch-icon.png` — 180×180 iOS home-screen icon
    * `assets/public/images/og-image.png`  — 1200×630 Open Graph card

  Run once after cloning, or whenever the SVG sources change:

      mix gen_assets

  Requires `rsvg-convert` (part of librsvg):

      brew install librsvg        # macOS
      apt-get install librsvg2-bin  # Debian/Ubuntu
  """

  use Mix.Task

  @shortdoc "Generate PNG assets from SVG sources (requires librsvg)"

  # Search these directories when rsvg-convert is not on PATH.
  @extra_paths ~w[/opt/homebrew/bin /usr/local/bin /usr/bin]

  def run(_args) do
    rsvg = find_rsvg_convert!()
    root = File.cwd!()

    convert!(rsvg,
      Path.join(root, "assets/public/favicon.svg"),
      Path.join(root, "assets/public/apple-touch-icon.png"),
      180, 180)

    convert!(rsvg,
      Path.join(root, "assets/public/images/og-image.svg"),
      Path.join(root, "assets/public/images/og-image.png"),
      1200, 630)

    Mix.shell().info("mix gen_assets: done")
  end

  defp find_rsvg_convert! do
    candidates =
      [System.find_executable("rsvg-convert")]
      |> Kernel.++(Enum.map(@extra_paths, &Path.join(&1, "rsvg-convert")))
      |> Enum.reject(&is_nil/1)
      |> Enum.find(&File.executable?/1)

    candidates ||
      Mix.raise("""
      rsvg-convert not found. Install librsvg:
        macOS:  brew install librsvg
        Debian: apt-get install librsvg2-bin
      """)
  end

  defp convert!(rsvg, src, dst, w, h) do
    case System.cmd(rsvg, ["-w", "#{w}", "-h", "#{h}", src, "-o", dst],
           stderr_to_stdout: true
         ) do
      {_, 0} ->
        size = File.stat!(dst).size
        Mix.shell().info("  wrote #{Path.relative_to_cwd(dst)} (#{size} bytes)")

      {output, code} ->
        Mix.raise("rsvg-convert failed (exit #{code}):\n#{output}")
    end
  end
end
