# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warpdl < Formula
  desc "The official Warp CLI download manager"
  homepage "https://warpdl.org"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.9/warp_0.0.9_macOS_arm64.tar.gz"
      sha256 "4d1b01e270122e03e68644f02e7df8fc028f242fc5315e1f58a3ae9ed79f7d30"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.9/warp_0.0.9_macOS_amd64.tar.gz"
      sha256 "bb532f9eb883dc7966875e8e6b70e085f95ee84f45724887efcb2b3239b736ef"

      def install
        bin.install "warpdl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.9/warp_0.0.9_linux_amd64.tar.gz"
      sha256 "9476be4f98855c8c34772ed59496eda9752fe7d698a2154e0f868c0006c27208"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.9/warp_0.0.9_linux_armv6.tar.gz"
      sha256 "516452559db1da86fce4a33e6a5757a74bbff85b2ff8dbcbd530c7a7d436872a"

      def install
        bin.install "warpdl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/warpdl/warp-releases/releases/download/0.0.9/warp_0.0.9_linux_arm64.tar.gz"
      sha256 "ffa5a0371bb23dbb938b907193209d7b6f88f6fa9ff6477bb8d1366c07b1fc38"

      def install
        bin.install "warpdl"
      end
    end
  end

  test do
    system "#{bin}/warpdl --version"
  end
end
