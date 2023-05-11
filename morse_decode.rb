# frozen_string_literal: true

MORSE_ALPHABET = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
  '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
  '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----.' => "'", ' ' => '',
  '   ' => ' '
}.freeze

def decode_char(char)
  MORSE_ALPHABET[char]
end

def decode_word(word)
  decoded = ''
  word.split(/(\s{1,})/).each { |n| decoded += decode_char(n) }
  puts "#{decoded}\n"
end

def decode_sentence(sentence)
  decoded_sentence = sentence.split(/(\s{1,})/)
  message = ''
  decoded_sentence.each { |n| message += decode_char(n) }
  puts message
end
puts decode_char('.-')
decode_word('-- -.--')
decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
