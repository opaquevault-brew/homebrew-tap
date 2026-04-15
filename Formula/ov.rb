# typed: false
# frozen_string_literal: true

class Ov < Formula
  desc "Zero-knowledge, quantum-safe secret manager for AI coding agents"
  homepage "https://opaquevault.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.opaquevault.com/v0.1.0/ov_darwin_amd64.tar.gz"
      sha256 "7b296c78adcd61de0f27966ee83bcb6b216ba45132fac3323e1626ac5da143cd"

      define_method(:install) do
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.opaquevault.com/v0.1.0/ov_darwin_arm64.tar.gz"
      sha256 "4ef2157b023b57c17dbefcdc5e917c03dac8eb16ce09435731d6df99e4de3619"

      define_method(:install) do
        bin.install "ov"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://releases.opaquevault.com/v0.1.0/ov_linux_amd64.tar.gz"
      sha256 "6a560190e19d45f89fd28940df795b2f3bf8b15aa1f8b9f244cbf064bdda480b"
      define_method(:install) do
        bin.install "ov"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.opaquevault.com/v0.1.0/ov_linux_arm64.tar.gz"
      sha256 "c33f1329625044044092d36e30c64708ba3a0b7d24558ada0906145f40b86cb3"
      define_method(:install) do
        bin.install "ov"
      end
    end
  end

  test do
    system "#{bin}/ov", "--version"
  end

  def caveats
    <<~EOS
      Run this in every project that uses OpaqueVault:
        ov init

      This writes secret-handling rules to CLAUDE.md (or .cursorrules, AGENTS.md)
      so your AI coding agent uses 'ov' instead of reading .env files directly.

      For a global rule that applies to all projects:
        ov init --global

      Then authenticate:
        ov auth login
    EOS
  end
end
