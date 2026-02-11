# Homebrew tap for CryptoKeeper

Install [CryptoKeeper](https://github.com/ryanonmars/CryptoKeeper) via Homebrew:

```bash
brew tap ryanonmars/cryptokeeper
brew install cryptokeeper
```

## Updating the formula for new releases

1. In `Formula/cryptokeeper.rb` update `version`, `url`, and `sha256`.
2. Get the SHA256 for the new macOS zip from the [releases](https://github.com/ryanonmars/CryptoKeeper/releases) page, or run:
   ```bash
   curl -sL "https://github.com/ryanonmars/CryptoKeeper/releases/download/vX.Y.Z/cryptokeeper-vX.Y.Z-macos.zip" | shasum -a 256
   ```
