@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9'
}

def get_letter(letter)
  @dictionary[letter]
end

# testing the get_letter func
puts get_letter('-...')

def get_word(current_word)
  word_arr = current_word.split
  word = ''
  word_arr.each do |letter|
    word += get_letter(letter)
  end
  word
end

# testing the get_word func
puts get_word('-- -.--')

def get_bottle(current_bottle)
  bottle_arr = current_bottle.split('  ')
  bottle = ''
  bottle_arr.each do |letter|
    bottle += get_word(letter)
    bottle += ' '
  end
  bottle
end

# testing the get_bottle func
puts get_bottle('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
