# Changes -1 to 1 for all allstars

seasons = ['200708', '200809', '201011', '201112', '201415']
positions = ['forwards', 'defense', 'goalies']

@allstars = {'200708' => [], '200809' => [], '201011' => [], '201112' => [], '201415' => []}

["Rick DiPietro",
	"Zdeno Chara",
	"Andrei Markov",
	"Vincent Lecavalier",
	"Daniel Alfredsson",
	"Ilya Kovalchuk",
	"Chris Osgood",
	"Dion Phaneuf",
	"Nicklas Lidstrom",
	"Jarome Iginla",
	"Pavel Datsyuk",
	"Rick Nash",
	"Tomas Vokoun",
	"Tim Thomas",
	"Tomas Kaberle",
	"Kimmo Timonen",
	"Brian Campbell",
	"Sergei Gonchar",
	"Alexander Ovechkin",
	"Jason Spezza",
	"Mike Richards",
	"Eric Staal",
	"Marian Hossa",
	"Scott Gomez",
	"Martin St. Louis",
	"Evgeni Malkin",
	"Marc Savard",
	"Evgeni Nabokov",
	"Manny Legace",
	"Duncan Keith",
	"Chris Pronger",
	"Scott Niedermayer",
	"Ed Jovanovski",
	"Marian Gaborik",
	"Shawn Horcoff",
	"Anze Kopitar",
	"Ryan Getzlaf",
	"Corey Perry",
	"Jason Arnott",
	"Henrik Sedin",
	"Mike Ribeiro",
	"Joe Thornton",
	"Martin Brodeur",
	"Roberto Luongo",
	"Sidney Crosby",
	"Henrik Zetterburg",
	"Sergei Zubov",
	"Dany Heatley",
	"Paul Stastny"].each do |name|
		last = name.upcase.split(' ').last
		first = name.upcase.split(' ').first
		name = "#{last}_#{first}"
		@allstars['200708'] << name
	end

["Carey Price",
	"Mike Komisarek",
	"Andrei Markov",
	"Vincent Lecavalier",
	"Alexei Kovalev",
	"Evgeni Malkin",
	"Jean-Sebastien Giguere",
	"Scott Niedermayer",
	"Brian Campbell",
	"Ryan Getzlaf",
	"Jonathan Toews",
	"Patrick Kane",
	"Tim Thomas",
	"Henrik Lundqvist",
	"Mark Streit",
	"Jay Bouwmeester",
	"Tomas Kaberle",
	"Zdeno Chara",
	"Jeff Carter",
	"Alexander Ovechkin",
	"Zach Parise",
	"Eric Staal",
	"Ilya Kovalchuk",
	"Thomas Vanek",
	"Martin St. Louis",
	"Dany Heatley",
	"Marc Savard",
	"Roberto Luongo",
	"Niklas Backstrom",
	"Stephane Robidas",
	"Shea Weber",
	"Dan Boyle",
	"Sheldon Souray",
	"Keith Tkachuk",
	"Mike Modano",
	"Patrick Marleau",
	"Jarome Iginla",
	"Shane Doan",
	"Milan Hejduk",
	"Dustin Brown",
	"Rick Nash",
	"Joe Thornton",
	"Nicklas Lidstrom",
	"Pavel Datsyuk",
	"Sidney Crosby"].each do |name|
		last = name.upcase.split(' ').last
		first = name.upcase.split(' ').first
		name = "#{last}_#{first}"
		@allstars['200809'] << name
	end

["Eric Staal",
	"Mike Green",
	"Ryan Kesler",
	"Cam Ward",
	"Alexander Ovechkin",
	"Daniel Sedin",
	"Zdeno Chara",
	"Rick Nash",
	"Henrik Lundqvist",
	"Marc Staal",
	"Patrick Sharp",
	"Dan Boyle",
	"Carey Price",
	"Jeff Skinner",
	"Kris Letang",
	"Claude Giroux",
	"Erik Karlsson",
	"Corey Perry",
	"Patrik Elias",
	"David Backes",
	"Paul Stastny",
	"Logan Couture",
	"Tyler Ennis",
	"Michael Grabner",
	"Jamie McBain",
	"Tyler Seguin",
	"P. K. Subban",
	"Nicklas Lidstrom",
	"Patrick Kane",
	"Martin St. Louis",
	"Steven Stamkos",
	"Duncan Keith",
	"Henrik Sedin",
	"Shea Weber",
	"Tim Thomas",
	"Daniel Briere",
	"Dustin Byfuglien",
	"Jonathan Toews",
	"Marc-Andre Fleury",
	"Jonas Hiller",
	"Brad Richards",
	"Keith Yandle",
	"Brent Burns",
	"Martin Havlat",
	"Anze Kopitar",
	"Matt Duchene",
	"Loui Eriksson",
	"Phil Kessel",
	"Taylor Hall",
	"Cam Fowler",
	"Evgeny Dadonov",
	"Oliver Ekman-Larsson",
	"Kevin Shattenkirk",
	"Derek Stepan"].each do |name|
		last = name.upcase.split(' ').last
		first = name.upcase.split(' ').first
		name = "#{last}_#{first}"
		@allstars['201011'] << name
	end

["Daniel Alfredsson",
	"Henrik Lundqvist",
	"Erik Karlsson",
	"Jason Spezza",
	"Jonathan Quick",
	"Claude Giroux",
	"Kris Letang",
	"Steven Stamkos",
	"Brian Elliott",
	"Shea Weber",
	"Daniel Sedin",
	"Dan Girardi",
	"Keith Yandle",
	"Milan Michalek",
	"Henrik Sedin",
	"James Neal",
	"Alexander Edler",
	"John Tavares",
	"Scott Hartnell",
	"Jason Pominville",
	"Logan Couture",
	"Zdeno Chara",
	"Joffrey Lupul",
	"Pavel Datsyuk",
	"Tim Thomas",
	"Evgeni Malkin",
	"Marian Hossa",
	"Kimmo Timonen",
	"Corey Perry",
	"Carey Price",
	"Phil Kessel",
	"Ryan Suter",
	"Jimmy Howard",
	"Brian Campbell",
	"Patrick Kane",
	"Dion Phaneuf",
	"Jarome Iginla",
	"Dennis Wideman",
	"Marian Gaborik",
	"Jordan Eberle",
	"Tyler Seguin",
	"Jamie Benn",
	"Sean Couturier",
	"Justin Faulk",
	"Carl Hagelin",
	"Nick Johnson",
	"Matt Read",
	"Craig Smith",
	"Luke Adam",
	"Raphael Diaz",
	"Colin Greening",
	"Cody Hodgson",
	"Ryan Johansen",
	"Gabriel Landeskog",
	"Mikko Koivu",
	"Alex Ovechkin",
	"Jonathan Toews",
	"Dustin Byfuglien",
	"Adam Henrique",
	"Ryan Nugent-Hopkins",
	"Adam Larsson"].each do |name|
		last = name.upcase.split(' ').last
		first = name.upcase.split(' ').first
		name = "#{last}_#{first}"
		@allstars['201112'] << name
	end

["Nick Foligno",
	"Patrick Kane",
	"Drew Doughty",
	"Ryan Johansen",
	"Duncan Keith",
	"Anze Kopitar",
	"Steven Stamkos",
	"Phil Kessel",
	"Carey Price",
	"Claude Giroux",
	"Dustin Byfuglien",
	"Marc-Andre Fleury",
	"Brian Elliott",
	"Brent Burns",
	"Jonathan Drouin",
	"Kevin Shattenkirk",
	"Bobby Ryan",
	"Radim Vrbata",
	"Oliver Ekman-Larsson",
	"Zemgus Girgensons",
	"Alexander Ovechkin",
	"Ryan Nugent-Hopkins",
	"Jonathan Toews",
	"Ryan Getzlaf",
	"Rick Nash",
	"Tyler Seguin",
	"Shea Weber",
	"Jakub Voracek",
	"Corey Crawford",
	"John Tavares",
	"Roberto Luongo",
	"Brent Seabrook",
	"Vladimir Tarasenko",
	"Patrice Bergeron",
	"Jaroslav Halak",
	"Mike Hoffman",
	"Aaron Ekblad",
	"Patrick Elias",
	"Ryan Suter",
	"Mark Giordano",
	"Justin Faulk",
	"Filip Forsberg",
	"Johnny Gaudreau",
	"Jiri Sekac",
	"Mike Hoffman",
	"Jonathan Drouin",
	"Aaron Ekblad",
	"Tanner Pearson",
	"Jimmy Howard",
	"Pekka Rinne",
	"Sergei Bobrovsky",
	"Evgeni Malkin",
	"Sidney Crosby",
	"Erik Johnson",
	"Tyler Johnson"].each do |name|
		last = name.upcase.split(' ').last
		first = name.upcase.split(' ').first
		name = "#{last}_#{first}"
		@allstars['201415'] << name
	end

seasons.each do |season|

	positions.each do |position|

		lines = []

		# Open CSV and modify content
		IO.readlines("files/#{season}_#{position}.csv").each do |line|

			# Find and replace -1 with 1 for allstars
			content = line.split(',')
			name = content[0]
			if @allstars["#{season}"].include?(name)
				content[-1] = "\t1;"
			end
			lines << content.join(',')
		end

		# Rewrite file
		File.open("files/#{season}_#{position}.csv", 'w') do |file|
		  file.puts lines
		end
	end
end