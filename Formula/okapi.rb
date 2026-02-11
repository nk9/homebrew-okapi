class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "334f587d9d4c085fbfeb11087f74624b0a29a70fd739cacac8b487d57c5de086"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3cb3f036d3a05fcbbc406c7546342f74e1ee1afc0a19d00dee61f5f46f922a3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21fa62d83b48994e565a5cdea0c19920e748cd98a024a5ff0911f033985e12aa"
    end
  end

  def install
    bin.install "okapi"
  end
end
