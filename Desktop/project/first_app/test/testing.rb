require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://espn.go.com/"
doc = Nokogiri::HTML(open(url))

# puts doc.css('li')[0]

# doc.css('li[class=headlines]').each do |link|
#   puts link
# end

# puts doc.at_css("headlines" ul.menu ).class
#doc.css('li').each do |link|
  # puts link.content
# end

# div class=headlines
#<ul>

links = doc.css("div[class=headlines]")
want = links.css('li')
puts want[0].text
want.each do |line|
  puts line.text
end
