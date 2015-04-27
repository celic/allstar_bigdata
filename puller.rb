require 'nokogiri'
require 'open-uri'

season = '201415'
position = 'defense'

doc = Nokogiri::HTML(open("http://stats.hockeyanalysis.com/ratings.php?db=#{season}&sit=all&type=individual&teamid=0&pos=#{position}&minutes=60&disp=1&sort=name&sortdir=ASC"))

puts doc