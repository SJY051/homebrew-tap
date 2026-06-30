cask "hanjakey" do
  version "0.1.4"
  sha256 "5b9ffe94d6dc1a02d3558d2e8713fdfee453ff2e0740c3afcd3cf330256fb03c"

  url "https://github.com/SJY051/HanjaKey/releases/download/v#{version}/HanjaKey-v#{version}.dmg"
  name "HanjaKey"
  desc "Hangul-to-Hanja and special-symbol converter for the menu bar"
  homepage "https://github.com/SJY051/HanjaKey"

  depends_on macos: :sonoma

  app "HanjaKey.app"

  zap trash: [
    "~/Library/Application Support/HanjaKey",
    "~/Library/Preferences/com.asqi.HanjaKey.plist",
  ]

  caveats <<~EOS
    HanjaKey is Apple-notarized, so it launches with no Gatekeeper warning. On first
    launch, grant Accessibility (System Settings -> Privacy & Security -> Accessibility),
    which HanjaKey needs to read and replace text in other apps.

    Upgrading from a self-signed build (v0.1.2 / v0.1.3)? The signing identity changed,
    so you may need to re-grant Accessibility once.
  EOS
end
