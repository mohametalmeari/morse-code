def decode_char(code)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_code[code] || 'invalid code'
end

puts decode_char('.-')

def decode_word(code)
  chr = code.split
  word = ''
  chr.each do |item|
    word += decode_char(item)
  end
  word
end

puts decode_word('-- -.--')

def decode(code)
  words = code.split('   ')
  msg = ''
  words.each do |item|
    msg += decode_word(item) + ' '
  end
  msg.strip
end

puts decode("-- -.--   -. .- -- .")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")