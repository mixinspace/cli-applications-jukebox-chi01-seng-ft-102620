def run(songs_array)
  puts "Please enter a command:"
  user_input = gets.strip

    case user_input
  when "help"
    help
  when "list"
    list(songs_array)
  when "play"
    play(songs_array)
  when "exit"
    return exit_jukebox
  end
end


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.strip

  songs_array.each_with_index do |element, index|
    index += 1
    if input.to_i == index || input == element
      return puts "Playing #{element}"
    end
  end
  puts "Invalid input, please try again"
end


def list(songs_array)
  songs_array.each_with_index do |element, index|
    index += 1
  puts "#{index}. #{element}"
  end
end


def exit_jukebox
  puts "Goodbye"
end
