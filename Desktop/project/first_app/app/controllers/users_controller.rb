require 'rubygems'
require 'nokogiri'
require 'open-uri'


class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
    url = "http://espn.go.com/"
    doc = Nokogiri::HTML(open(url))
    links = doc.css("div[class=headlines]")
    @want = links.css('li')
    # puts want[0].text
    # want.each do |line|
    #   puts line.text
    # end
  end

end
