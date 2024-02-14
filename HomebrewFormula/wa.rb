# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wa < Formula
  desc "The Wa Programming Language"
  homepage "https://github.com/wa-lang/wa"
  version "0.9.1"
  license "AGPL-3.0 license"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wa-lang/wa/releases/download/v0.9.1/wa_0.9.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8cecd5532d13617e16200627e977ce2641c5fd09ed0d1eb43d8d4c2dc3468544"

      def install
        bin.install "wa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wa-lang/wa/releases/download/v0.9.1/wa_0.9.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0a397f375e18a53ebb16a441c3335204264995bd833985264401c123547090a4"

      def install
        bin.install "wa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wa-lang/wa/releases/download/v0.9.1/wa_0.9.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8b9cd9d0aefcbf236ffeb5727c3559042b7407686ec645d4378c3e926e94777c"

      def install
        bin.install "wa"
      end
    end
  end

  test do
    system "#{bin}/wa"
  end
end
