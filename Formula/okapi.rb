class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "v0.3.2" # This will be updated by the script

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e8cb72c1da1ae3d36db63998427340aa81703ca5fb60637124053b7a8bf366aa"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8b0bc0e633ad619f1b479c63ef096a98dbd364fb12b26773141f37565f5ee233"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b1f849330352a948919c21847fb4a1cee1decbbc726f31069517c45f61f1302"
    end
  end

  def install
    bin.install "okapi"
  end
end
