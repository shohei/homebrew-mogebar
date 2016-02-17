require 'formula'

HOMEBREW_MOGEBAR_VERSION = '0.0.1'
class Mogebar < Formula
  # homepage 'https://github.com/shohei/homebrew-mogebar/'
  homepage 'https://github.com/shohei/homebrew-mogebar/archive/master.zip'
  url 'https://github.com/shohei/homebrew-mogebar.git', :tag => "v#{HOMEBREW_MOGEBAR_VERSION}"
  version HOMEBREW_MOGEBAR_VERSION
  head 'https://github.com/shohei/homebrew-mogebar.git', :branch => 'master'

  skip_clean 'bin'

  def install
    dir = `pwd`
    puts dir
    puts 'mogemoge'
    bin.install 'bin/mogebar'
    # (bin+'mogebar').chmod 0755
  end
end
