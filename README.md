# homebrew-tap

[Homebrew](https://brew.sh) tap for [@SJY051](https://github.com/SJY051)'s macOS apps.

## Usage

```sh
brew tap SJY051/tap
brew install --cask hanjakey
```

…or in one line, without tapping first:

```sh
brew install --cask SJY051/tap/hanjakey
```

Upgrade with `brew upgrade --cask hanjakey`; remove with `brew uninstall --cask hanjakey`
(add `--zap` to also delete preferences and user data).

## Casks

| Cask | Description |
| --- | --- |
| [`hanjakey`](Casks/hanjakey.rb) | Menu-bar Hangul → Hanja & special-symbol converter — the Windows Hanja key for macOS ([repo](https://github.com/SJY051/HanjaKey)) |

## Notes

The apps here are currently **self-signed** (not Apple-notarized), so macOS Gatekeeper blocks
the first launch. Each cask prints the one-time "Open Anyway" + Accessibility steps on install;
see each app's own README for details.
