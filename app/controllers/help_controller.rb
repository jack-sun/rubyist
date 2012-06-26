# -*- encoding : utf-8 -*-
class HelpController < ApplicationController
  def index
  end

  def textitle
    @textiles = [
      '*bold text*',
      '_italic text_',
      '*_bold italic text_*',
      '+underlined text+',
      '*+bold underlined text+*',
      '_+italic underlined text+_',
      '*_+bold italic underlined text+_*',
      '%{font-size:18pt}font size%',
      '%{color:red}text in red%',
      'a ^2^ + b ^2^ = c ^2^',
      'log ~2~ x',
      '# Chapter 1',
      'h1. H1',
      '"Textile":http://redcloth.org/hobix.com/textile.',
      '!http://redcloth.org/hobix.com/textile/sample.jpg!'
    ]
  end

  def bbcode
    @bbcodes = [
      '[b]bolded text[/b]',
      '[i]italicized text[/i]',
      '[u]underlined text[/u]',
      '[s]strikethrough text[/s]',
      '[code lang="ruby"](1..100).each{|i| puts "Hello" * i}[/code]',
      '[url]http://en.wikipedia.org/wiki/BBCode[/url]',
      '[url=http://en.wikipedia.org/wiki/BBCode]BBcode[/url]',
      '[quote]quoted text[/quote]',
      '[size=10]Large Text[/size]',
      '[color=red]Red Text[/color]',
      '[color=#FF0000]Red Text[/color]',
      '[img]http://redcloth.org/hobix.com/textile/sample.jpg[/img]',
    ]
  end

  def gist
    @gist = "[gist]https://gist.github.com/1247617.js[/gist]"
  end
end
