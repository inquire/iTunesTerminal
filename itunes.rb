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

# Program which controls ITunes:

it = Appscript.app('ITunes')
it.run

def controlApp(aps,songName)
	
	@song = aps.playlists["Music"].tracks[songName]
	puts "Going to play: #{@song.artist.get} - #{@song.name.get}"
	@song.play
end
	
controlApp(it,ARGV[0])
