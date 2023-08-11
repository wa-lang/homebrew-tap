# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Wa < Formula
  desc "The Wa Programming Language"
  homepage "https://github.com/wa-lang/wa"
  version "0.8.1"
  license "AGPL-3.0 license"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wa-lang/wa/releases/download/v0.8.1/wa_0.8.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "99406d89941127958aaf19830b3af1adfd0535cedae18be9c7141fd34b2889fb"

      def install
        bin.install "wa"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wa-lang/wa/releases/download/v0.8.1/wa_0.8.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "32325c11647ed57705280e4f59641e127dfca8b5d9a463024117c8ccda179f74"

      def install
        bin.install "wa"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wa-lang/wa/releases/download/v0.8.1/wa_0.8.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ed36236529597749d42f4a6744a5613b84c91d147b2f9a6e821e7eabb8d13043"

      def install
        bin.install "wa"
      end
    end
  end

  test do
    system "#{bin}/wa"
  end
end
