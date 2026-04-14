# This file is auto-updated by GoReleaser on each release.
# Do not edit manually.
class Ov < Formula
  desc "Zero-knowledge, quantum-safe secret manager for AI coding agents"
  homepage "https://opaquevault.com"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/huntrock17/opaquevault/releases/download/v0.0.0/ov_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/huntrock17/opaquevault/releases/download/v0.0.0/ov_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/huntrock17/opaquevault/releases/download/v0.0.0/ov_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/huntrock17/opaquevault/releases/download/v0.0.0/ov_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "ov"
  end

  test do
    system "#{bin}/ov", "--version"
  end
end
