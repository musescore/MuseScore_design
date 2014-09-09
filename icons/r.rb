#!/usr/bin/env ruby

require "rexml/document"
require "fileutils"
include REXML


INKSCAPE = '/usr/bin/inkscape'
#INKSCAPE = '/usr/bin/inkscape' # like this works for me, while using `which` inkscape hangs
SRC = "src.svg"

def chopSVG(icon)
	FileUtils.mkdir_p(icon[:dir]) unless File.exists?(icon[:dir])
	unless (File.exists?(icon[:file]) && !icon[:forcerender])
		FileUtils.cp("#{icon[:dir]}/../#{SRC}",icon[:file]) 
		puts " >> #{icon[:name]}"
		cmd = "#{INKSCAPE} -f #{icon[:file]} --select #{icon[:id]} --verb=FitCanvasToSelection  --verb=EditInvertInAllLayers "
		cmd += "--verb=EditDelete --verb=EditSelectAll --verb=SelectionUnGroup --verb=SelectionUnGroup --verb=SelectionUnGroup --verb=StrokeToPath --verb=FileVacuum "
		cmd += "--verb=FileSave --verb=FileClose > /dev/null 2>&1"
		system(cmd)
		#saving as plain SVG gets rid of the classes :/
		cmd = "#{INKSCAPE} -f #{icon[:file]} -z --vacuum-defs -l #{icon[:file]} > /dev/null 2>&1"
		system(cmd)
		svgcrop = Document.new(File.new(icon[:file], 'r'))
		svgcrop.root.each_element("//rect") do |rect| 
			w = ((rect.attributes["width"].to_f * 10).round / 10.0).to_i #get rid of 24 vs 23.99999 
			h = ((rect.attributes["width"].to_f * 10).round / 10.0).to_i #Inkscape bugs
			if (w == 24 && h == 24) || (w == 48 && h == 48)
				rect.remove
			end
		end
    icon_f = File.new(icon[:file],'w+')
    icon_f.puts svgcrop
    icon_f.close
    cmd = "awk '/metadata/{getline; while($0!~/\\metadata\>/) {getline}; getline}1' #{icon[:file]}" 
    cmd += " | tr -d '\n' | tr -s ' ' | sed -f simplifySVG.sed"
    cmd += " > #{icon[:file]}.tmp; mv -f #{icon[:file]}.tmp #{icon[:file]}"
	system(cmd)
	system("")
	else
		puts " -- #{icon[:name]} already exists"
	end
end #end of function


#main
# Open SVG file.

if (ARGV[0].nil?)
  puts "\nno folder to export"
else
  ARGV.each do |folder|
        svg = Document.new(File.new("#{folder}/#{SRC}", 'r'))
        puts "Rendering from icons in #{folder}/#{SRC}"
	# Go through every layer.
	svg.root.each_element("/svg/g[@inkscape:groupmode='layer']") do |context| 
		context_name = context.attributes.get_attribute("id").value  
		puts "Going through layer '" + context_name + "'"
		context.each_element("g") do |icon|
			#puts "DEBUG #{icon.attributes.get_attribute('id')}"
			dir = "#{folder}/#{context_name}"
			#puts "To folder: #{dir}"
			icon_name = icon.attributes.get_attribute("id").value
			chopSVG({	:name => icon_name,
					:id => icon.attributes.get_attribute("id"),
					:dir => dir,
					:file => "#{dir}/#{icon_name}.svg"})
		end
	end
  end
  puts "\nrendered all SVGs"
end
