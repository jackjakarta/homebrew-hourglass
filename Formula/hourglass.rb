class Hourglass < Formula
  desc "A beautiful, safe, keyboard-first home for your cron jobs"
  homepage "https://github.com/jackjakarta/hourglass"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-darwin-arm64.tar.gz"
      sha256 "f407ef9c55334d152b97a789d816078c2583b9ee4e4f2f2ee6327f4987d234df"
    else
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-darwin-amd64.tar.gz"
      sha256 "e2a0e7029f054453d8053125ea72f836d1bb261062187a0d7da9faf766a6f331"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-linux-arm64.tar.gz"
      sha256 "3df3689c8bcd13917ee86c46efe4078b680bf4bf033886912cd21908849076a9"
    else
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-linux-amd64.tar.gz"
      sha256 "5caf64ad7a3d138deff14eee264cb76c751785a32050d6960f1b649873c46da8"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    system "#{bin}/hourglass", "-h"
  end
end
