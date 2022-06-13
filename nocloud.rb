# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nocloud < Formula
  desc "NoCloud Platform CLI"
  homepage "https://github.com/slntopp/nocloud"
  version "0.2.2-r5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.2-r5/nocloud_0.2.2-r5_Darwin_arm64.tar.gz"
      sha256 "de7411b7b155541be28ca3c247981089addcb2167b3bd18c8772f6fdc8cb3314"

      def install
        bin.install "nocloud"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.2-r5/nocloud_0.2.2-r5_Darwin_x86_64.tar.gz"
      sha256 "ef25e746728bc2c11385d829fb6db552cbe219794af1f35260dac7829c5d14d8"

      def install
        bin.install "nocloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.2-r5/nocloud_0.2.2-r5_Linux_x86_64.tar.gz"
      sha256 "a3eec671691ddd74899b0f1aed4abd2539d2b27dad9f5cca8866f628708c2d7b"

      def install
        bin.install "nocloud"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/slntopp/nocloud-cli/releases/download/v0.2.2-r5/nocloud_0.2.2-r5_Linux_arm64.tar.gz"
      sha256 "52fa2289b76895f0ce1126d09bd37a6fd6821062d1933d16d97cc1740f92fe8c"

      def install
        bin.install "nocloud"
      end
    end
  end

  def caveats; <<~EOS
    Start with nocloud help login ;)
  EOS
  end
end
