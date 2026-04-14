class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "v0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c4522dd97d5ca931767fdf7f7405eee380e8958215a3522b0edccc37a2428f90"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e64bb125f6e738209d1c2b08021ca150823620a93b5ad606b9f775af98dcfc3f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e530e476e04f7cd3b5be1bb15755e44a132bab771148f502048c194523726842"
    end
  end

  def install
    bin.install "okapi"
  end
end
