cask "sidebrain" do
  version "0.71.5"
  sha256 "486cfc400ed40dee1b8f09b66322e0543a8bb256e00b2f56267c2f8380a1a296"

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
