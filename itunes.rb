#! /usr/bin/env ruby

############################################################
#     Remote Control Itunes From The Terminal
#    
#     Author: Daniel Stanoescu
#     Started: -
#     Last Modified:
#
#############################################################

require 'rubygems'
require 'appscript'

# This stuff needs updating.
# Program which controls ITunes:

it = Appscript.app('ITunes')
it.run

def controlApp(aps,songName)
	
	@song = aps.playlists["Music"].tracks[songName]
	puts "Going to play: #{@song.artist.get} - #{@song.name.get}"
	@song.play
end

if ARGV[0] == "."
	it.pause
elsif
	ARGV.each do |value|	
		@song = "#{@song}" + "#{value} "	
	end	
	controlApp(it,@song.chop)
end
