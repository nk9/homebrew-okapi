class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "v0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "89572345454584329f3abfaf5fae8a362491fefa9f267d8f73ff202feb34c2fe"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5d533f3ece3b9b486b8be60b447a37b0b39ff8f0fe705bf879950f8b326079d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac05d904ffec2b659f834ff34cf7afe7d968915b539a63791ebe360e2219237"
    end
  end

  def install
    bin.install "okapi"
  end
end
