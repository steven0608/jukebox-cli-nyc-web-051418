my_songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help

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
counter = 1
my_songs.each do |x|
  if song_name == x || song_name==counter.to_s
    puts "playing #{x}"
  else
    puts "Invalid input, please try again"
  end
  counter +=1
end
end

def exit_jukebox
puts "Goodbye"

end

def run(my_songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "list"
      list(my_songs)
    elsif command == "help"
      help
    elsif command == "play"
      play(my_songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
