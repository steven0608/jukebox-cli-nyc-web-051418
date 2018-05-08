#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '< /Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '</Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/weistevenchen/.atom/.learn-ide/home/steven0608/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
my_songs.each_with_index do |song,index|
  puts "#{index+1}. #{song}\n"
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
puts "Please enter a song name or number:"
song_name=gets.chomp
if (1..9).to_a.include?(song_name.to_i)
  puts "Playing #{my_songs[song_name.to_i -1]}"
elsif my_songs.include?(song_name)
  puts "Playing #{song_name}"
else
  puts "Invalid input, please try again"
end

end

def exit_jukebox
puts "Goodbye"
  #this method is the same as in jukebox.rb
end

def run(my_songs)

  #this method is the same as in jukebox.rb
command=""
puts "Please enter a command:"
command=gets.chomp
case command.downcase
when "exit"
  exit_jukebox
  break
when "list"
  list(my_songs)
when "play"
  play(my_songs)
when "help"
  help
else
  help
end
end
end
