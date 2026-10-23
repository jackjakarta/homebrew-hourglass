class Hourglass < Formula
  desc "A beautiful, safe, keyboard-first home for your cron jobs"
  homepage "https://github.com/jackjakarta/hourglass"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-darwin-arm64.tar.gz"
      sha256 "206ec6df358b1b81af928bc4df7e6185a08c43d0a4ad6c17432b5e441b991080"
    else
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-darwin-amd64.tar.gz"
      sha256 "f311b63f5cc704693d594fbd158275584a8b7f9e1254cc3123e485d7fed47353"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-linux-arm64.tar.gz"
      sha256 "dbca2e10a1f255b7fd6a4f198bfdde694cc965b4ca0dcbc48df9ceb613ac9020"
    else
      url "https://github.com/jackjakarta/hourglass/releases/download/0.1.1/hourglass-linux-amd64.tar.gz"
      sha256 "87d6dd56624d3ebcde43088a3f8b86f7826ba8b54a4e153ddee54f7216424573"
    end
  end

  def install
    bin.install "hourglass"
  end

  test do
    system "#{bin}/hourglass", "-h"
  end
end
