cask "sidebrain" do
  version "0.74.0"
  sha256 "576c999f7a11002d696b251dff11ecc3bfd98c4443db078ce96cdd5f0c3d5c2c"

  url "https://dl.sidebrain.eu/downloads/SideBrain-#{version}-aarch64.dmg"
  name "SideBrain"
  desc "Second brain: capture knowledge and make it searchable"
  homepage "https://sidebrain.eu/"

  livecheck do
    url "https://dl.sidebrain.eu/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "SideBrain.app"

  caveats <<~EOS
    SideBrain is not notarized by Apple. macOS quarantines the downloaded
    app, so the very first launch requires a one-time right-click -> "Open"
    (Gatekeeper). To skip that step, install with:
      brew install --cask --no-quarantine m-dohmen/sidebrain/sidebrain
  EOS
end
