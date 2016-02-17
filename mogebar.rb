require 'formula'

HOMEBREW_MOGEBAR_VERSION = '0.0.3'
class Mogebar < Formula
  # homepage 'https://github.com/shohei/homebrew-mogebar/'
  homepage 'https://github.com/shohei/homebrew-mogebar/archive/master.zip'
  url 'https://github.com/shohei/homebrew-mogebar.git', :tag => "v#{HOMEBREW_MOGEBAR_VERSION}"
  version HOMEBREW_MOGEBAR_VERSION
  head 'https://github.com/shohei/homebrew-mogebar.git', :branch => 'master'

  dir = `pwd`
  puts dir
  puts 'initial'
  files= `ls`
  puts files 
  skip_clean 'bin'
  puts 'after skip_clean'
  files= `ls`
  puts files 

  def install
  puts 'inside install'
    files= `ls`
    puts files 
    com = `cat moge.rb`
    puts com
    dir = `pwd`
    puts dir
    puts 'mogemoge'
    bin.install 'bin/mogebar'
    # (bin+'mogebar').chmod 0755
  end
end
