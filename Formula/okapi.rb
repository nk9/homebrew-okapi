class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "v0.0.0" # This will be updated by the script

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_SHA_ARM_MAC"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "REPLACE_SHA_INTEL_MAC"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "REPLACE_SHA_LINUX"
    end
  end

  def install
    bin.install "okapi"
  end
end
