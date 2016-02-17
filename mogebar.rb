require 'formula'

HOMEBREW_MOGE_VERSION = '0.0.1'
class Mogebar < Formula
  homepage 'https://github.com/shohei/homebrew-mogebar/'
  url 'https://github.com/shohei/homebrew-mogebar.git', :tag => "v#{HOMEBREW_BREWALL_VERSION}"
  version HOMEBREW_BREWALL_VERSION
  head 'https://github.com/shohei/homebrew-mogebar.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'mogebar').chmod 0755
  end
end
