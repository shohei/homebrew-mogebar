require 'formula'

HOMEBREW_MOGEBAR_VERSION = '0.0.4'
class Mogebar < Formula
  homepage 'https://github.com/shohei/homebrew-mogebar/'
  url 'https://github.com/shohei/homebrew-mogebar.git', :tag => "v#{HOMEBREW_MOGEBAR_VERSION}"
  version HOMEBREW_MOGEBAR_VERSION
  head 'https://github.com/shohei/homebrew-mogebar.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'mogebar').chmod 0755
  end
end
