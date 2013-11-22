require 'formula'

class RubyBuild < Formula
  homepage 'https://github.com/sstephenson/ruby-build'
  url 'https://github.com/underscorebrody/ruby-build/archive/20131122.tar.gz'
  sha1 '32835eea9b71fbf628d1b37a21af884e0c671815'

  head 'https://github.com/sstephenson/ruby-build.git'

  depends_on 'autoconf' => [:recommended, :run]
  depends_on 'pkg-config' => [:recommended, :run]
  depends_on 'libyaml' => :recommended
  depends_on 'openssl' => :optional

  def install
    ENV['PREFIX'] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/ruby-build --version | grep #{version}"
  end
end
