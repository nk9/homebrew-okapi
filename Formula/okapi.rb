class Okapi < Formula
  desc " Find lines across files by regex and edit them all at once with your $EDITOR"
  homepage "https://github.com/nk9/okapi"
  version "v0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1668a232cdd4baa45f9d540dd6dac5250273fe60b772169bbd3d770ed979578c"
    else
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "33484cd0d822d87337f306547ebfb5dea60f862907e00c2cba9db5eb1b11e64d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nk9/okapi/releases/download/#{version}/okapi-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3610919a81fd0584c1a12d450fbb54ae450ec10fe9453490088f406f3231dae"
    end
  end

  def install
    bin.install "okapi"
  end
end
