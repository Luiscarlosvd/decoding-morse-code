def decode_char(char)
    morse_hash = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
      '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
      '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
      '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
      '--..' => 'Z'
    }
    morse_hash[char]
end

def decode_word(string)
  arr = string.split(' ')
  decoded_word = ''
  arr.each { |n| 
  decoded_word += decode_char(n)
  }
  decoded_word
end
  
def decode_message(string)
  arr = string.split('   ')
  decode_message = ''
  arr.each { |n|
  decode_message += decode_word(n)
  decode_message += " "
  }
  decode_message
end

puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
