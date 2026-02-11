class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "v0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b9346212eaf47e2562961a729e7afb6de685a1eba2b1e54ee8d02bcaa318f2de"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0a958c6d7042db1cea842b0301423042ba61fe9de5d649572a344aceec259039"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffa5bca1b60da9c8829c51f1168198e89c4eeb6655497758e35ba3eaa455deba"
    end
  end

  def install
    bin.install "okapi"
  end
end
