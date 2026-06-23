cask "hanjakey" do
  version "0.1.1"
  sha256 "5642bbceb36c61ccb8ef5263352bc1ad421b2654d7e3a35404848f16d87545f3"

  url "https://github.com/SJY051/HanjaKey/releases/download/v#{version}/HanjaKey-v#{version}.dmg",
      verified: "github.com/SJY051/HanjaKey/"
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
    HanjaKey is self-signed (not yet Apple-notarized), so macOS Gatekeeper blocks the
    first launch. Once, after installing:

      * System Settings -> Privacy & Security -> "Open Anyway", or run:
          xattr -dr com.apple.quarantine "/Applications/HanjaKey.app"

    Then grant Accessibility (System Settings -> Privacy & Security -> Accessibility),
    which HanjaKey needs to read and replace text in other apps.
  EOS
end
