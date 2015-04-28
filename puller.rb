require 'nokogiri'
require 'open-uri'

seasons = ['200708', '200809', '200910', '201011', '201112', '201213', '201314', '201415']
positions = ['forwards', 'defense']

def parse_file(doc1, doc2, csv)

	exclusions = [1, 3, 9, 13, 14, 15, 16, 17, 18, 19, 20, 23, 24, 25, 26, 27, 28, 31, 34, 38, 39, 40, 43, 44, 45, 46, 47]

	rows1 = doc1.css('tr').select{|row| row['bgcolor'] == '#eedddd' || row['bgcolor'] == '#ddddee'}
	rows2 = doc2.css('tr').select{|row| row['bgcolor'] == '#eedddd' || row['bgcolor'] == '#ddddee'}

	rows = []

	rows1.each_with_index do |row, index|
		rows[index] = rows1[index].search('td') + rows2[index].search('td')
	end

	rows.each do |row|
	  	row.each_with_index do |cell, index|
			content = cell.content

			if index == 1
				content = content.split(', ').join('_')
			end
			csv.write(content + ' ') unless exclusions.include?(index+1)
		end
		csv.write('-1')
		csv.puts
	end
end

def goalie_parse_file(doc, csv)

	exclusions = [1, 3, 9, 11, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27]

	rows1 = doc.css('tr').select{|row| row['bgcolor'] == '#eedddd' || row['bgcolor'] == '#ddddee'}

	rows = []

	rows1.each_with_index do |row, index|
		rows[index] = rows1[index].search('td')
	end

	rows.each do |row|
	  	row.each_with_index do |cell, index|
			content = cell.content

			if index == 1
				content = content.split(', ').join('_')
			end
			csv.write(content + ' ') unless exclusions.include?(index+1)
		end
		csv.write('-1')
		csv.puts
	end
end

seasons.each do |season|
	positions.each do |position|

		doc1 = Nokogiri::HTML(open("http://stats.hockeyanalysis.com/ratings.php?disp=1&db=#{season}&sit=all&pos=#{position}&type=individual&teamid=0&minutes=60&sort=name&sortdir=ASC"))
		doc2 = Nokogiri::HTML(open("http://stats.hockeyanalysis.com/ratings.php?disp=1&db=#{season}&sit=all&pos=#{position}&type=goals&teamid=0&minutes=60&sort=name&sortdir=ASC"))
		csv = File.new("#{season}_#{position}.csv", "w")

		parse_file(doc1, doc2, csv)
	end

	# Goalies need too much customization
	doc = Nokogiri::HTML(open("http://stats.hockeyanalysis.com/ratings.php?disp=1&db=#{season}&sit=all&type=goals&teamid=0&pos=goalies&minutes=180&disp=1&sort=name&sortdir=ASC"))
	csv = File.new("#{season}_goalies.csv", "w")

	goalie_parse_file(doc, csv)
end

