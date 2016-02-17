require 'formula'

HOMEBREW_MOGE_VERSION = '0.0.1'
class Moge < Formula
  homepage 'https://github.com/shohei/homebrew-moge/'
  url 'https://github.com/shohei/homebrew-moge.git', :tag => "v#{HOMEBREW_BREWALL_VERSION}"
  version HOMEBREW_BREWALL_VERSION
  head 'https://github.com/shohei/homebrew-moge.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'moge').chmod 0755
  end
end
