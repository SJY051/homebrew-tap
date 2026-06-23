cask "hanjakey" do
  version "0.1.2"
  sha256 "46564e6813d62c9c61576309f99e5e6b9daa822bd6ea2e402da8bf642d91d842"

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
    HanjaKey is self-signed (not yet Apple-notarized), so macOS Gatekeeper blocks the
    first launch. Once, after installing:

      * System Settings -> Privacy & Security -> "Open Anyway", or run:
          xattr -dr com.apple.quarantine "/Applications/HanjaKey.app"

    Then grant Accessibility (System Settings -> Privacy & Security -> Accessibility),
    which HanjaKey needs to read and replace text in other apps.
  EOS
end
