cask "sidebrain" do
  version "0.70.0"
  sha256 "ed2a177010304e6007ddd5b0096b234c45e49e56abe09f278a58f98d8d56d971"

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
