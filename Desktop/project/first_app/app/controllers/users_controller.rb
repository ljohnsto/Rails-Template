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
    full_object = links.css('li')
    @object = full_object.css('a')
    # puts want[0].text
    # want.each do |line|
    #   puts line.text
    # end
  end

end
