require "formula"

class Bmx < Formula
  homepage "http://sourceforge.net/p/bmxlib/home/Home/"
  url "https://downloads.sourceforge.net/project/bmxlib/bmx-snapshot-20170814/bmx-snapshot-20170814.tar.gz"
  sha256 "2c86a106a7abf56822b3dbfa9a680ca65a64529e466b80e2bd34ac4805db524f"

  depends_on "pkg-config" => :build
  depends_on "libtool" => :build
  depends_on "expat"
  depends_on "uriparser"
  depends_on "libmxf"
  depends_on "libmxfpp"

  def install
    Dir.chdir "bmx"
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
