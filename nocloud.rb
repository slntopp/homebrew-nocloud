# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nocloud < Formula
  desc "NoCloud Platform CLI"
  homepage "https://github.com/slntopp/nocloud"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.5/nocloud_0.2.5_Darwin_x86_64.tar.gz"
      sha256 "34018e9d49c87a9a5104df3d1f22728d8ef445e2fe9f30283e0497b2091a7bea"

      def install
        bin.install "nocloud"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.5/nocloud_0.2.5_Darwin_arm64.tar.gz"
      sha256 "4c7a4c7cee062b39667a1d200d040e2e635f9f029ef30d3c738aac449cbaf3bd"

      def install
        bin.install "nocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.5/nocloud_0.2.5_Linux_arm64.tar.gz"
      sha256 "e945b648f7aabc15719d7e8c34f29e4c65e070d27f0d507b4e62893dde3a2277"

      def install
        bin.install "nocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.5/nocloud_0.2.5_Linux_x86_64.tar.gz"
      sha256 "ed35042707820d17c27c8eb6bd84876cd40027daccea66259e9e2d340923efcc"

      def install
        bin.install "nocloud"
      end
    end
  end

  def caveats
    <<~EOS
      Start with nocloud help login ;)
    EOS
  end
end
