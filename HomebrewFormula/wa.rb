# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wa < Formula
  desc "The Wa Programming Language"
  homepage "https://github.com/wa-lang/wa"
  version "0.8.0-test1"
  license "AGPL-3.0 license"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wa-lang/wa/releases/download/v0.8.0-test1/wa_0.8.0-test1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e205f5c348d51d9978344bd202ecf8c215ea665debc2bddadae0c7d0501662d0"

      def install
        bin.install "wa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wa-lang/wa/releases/download/v0.8.0-test1/wa_0.8.0-test1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8eda40ef14c261f12849c1b9463a8787083918de124ef4b324cccbd97f5b3348"

      def install
        bin.install "wa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wa-lang/wa/releases/download/v0.8.0-test1/wa_0.8.0-test1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "61baca52796f51425eabc78b1911a84bf1c5390789525f817f70c9b407239e72"

      def install
        bin.install "wa"
      end
    end
  end

  test do
    system "#{bin}/wa"
  end
end
