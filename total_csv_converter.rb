# Converts .csv to a proper .txt

positions = ['offense', 'defense', 'goalies']

positions.each do |position|

	param_x = []
	param_y = []

	# Open CSV and modify content
	IO.readlines("files/total_#{position}.csv").each do |line|

		content = line.split(',')

		content[0] = param_x.count + 1
		x_content = content[0..-2].join
		y_content = content[-1].chomp[0..-2]

		param_x << x_content
		param_y << [param_y.count + 1, y_content].join
	end

	txt = File.new("files/total_#{position}_DAT.txt", "w")

	txt.write("#PARAMETERS\n")
	txt.write("param p:= #{param_x[0].split.count - 1};\n")
	txt.write("param n:= #{param_y.count};\n")
	txt.write("param c:= .1;\n")

	txt.puts
	txt.puts

	txt.write("#ALL X DATA\n")
	txt.write("param X :\n")
	(1..(param_x[0].split.count-1)).each do |n|
		txt.write("\t#{n}")
	end
	txt.write("\n")
	txt.write(":=\n")

	param_x.each do |x|
		txt.write("#{x}\n")
	end

	txt.write(";\n")


	txt.puts
	txt.puts

	txt.write("#ALL Y DATA\n")
	txt.write("param Y :=\n")

	param_y.each do |y|
		txt.write("#{y}\n")
	end

	txt.write(";\n")
end

