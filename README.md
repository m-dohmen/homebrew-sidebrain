# homebrew-sidebrain

Homebrew tap for [SideBrain](https://sidebrain.eu/) — your second brain:
capture knowledge and make it searchable (macOS, Apple Silicon).

## Install

```sh
brew install --cask m-dohmen/sidebrain/sidebrain
```

SideBrain is not notarized by Apple, so macOS quarantines the downloaded
app and the very first launch requires a one-time right-click → "Open"
(Gatekeeper). To skip that step:

```sh
brew install --cask --no-quarantine m-dohmen/sidebrain/sidebrain
```

## Upgrade

```sh
brew upgrade --cask sidebrain
```

SideBrain also ships a built-in auto-updater, so an installed app keeps
itself current independently of Homebrew.

## Maintenance

The cask is updated automatically on every SideBrain release by
`packaging/homebrew/update-cask.sh` in the main repository (invoked at the
end of `deploy-downloads.sh`). Please do not edit `Casks/sidebrain.rb`
manually — the next release would overwrite version and checksum.
