# morse codes constant
MORSE_CODES = {
  # alpha chars
  '.-'    => 'a',
  '-...'  => 'b',
  '-.-.'  => 'c',
  '-..'   => 'd',
  '.'     => 'e',
  '..-.'  => 'f',
  '--.'   => 'g',
  '....'  => 'h',
  '..'    => 'i',
  '.---'  => 'j',
  '-.-'   => 'k',
  '.-..'  => 'l',
  '--'    => 'm',
  '-.'    => 'n',
  '---'   => 'o',
  '.--.'  => 'p',
  '--.-'  => 'q',
  '.-.'   => 'r',
  '...'   => 's',
  '-'     => 't',
  '..-'   => 'u',
  '...-'  => 'v',
  '.--'   => 'w',
  '-..-'  => 'x',
  '-.--'  => 'y',
  '--..'  => 'z',

  # now numbers
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
  
  # Mapping foward bar to be a space
  '/'.    => ' '
}

class MorseCode
  def morse_to_text(string_morse)
    @translated_string = ""
    puts translate(string_morse)
  end

  def text_to_morse line
    line.split('').map{|c| MORSE_CODES.key c.downcase}.join(' ')
  end

  private
  def translate(string_morse)
    array_morse = string_morse.split()
    array_morse.each{|morse| @translated_string += MORSE_CODES[morse] unless MORSE_CODES[morse].nil? }
    @translated_string
  end
end

morse = MorseCode.new

morse.morse_to_text("-- --- .-. ... . / -.-. --- -.. . / - .... . / -. . .-- / -.. . .- -.. / .-.. .- -. --. ..- .- --. . .-.-.-")
morse.morse_to_text("--- -- --.  .. ...  -- --- .-. ... .  -.-. --- -..")
morse.morse_to_text("- .-- . . - ... / .- .-. . / . ...- . -. / ... .... --- .-. - . .-. / .-- .. - .... / -- --- .-. ... . / -.-. --- -..")
morse.morse_to_text("-- --- .-. ... .   -.-. --- -.. .   .. ...   -... .- -..   ..-. --- .-.   - .-- . . - .. -. --")
morse.morse_to_text(".. - /  .. ... /  .- /  .--. .-.. . .- ... ..- .-. . /  - --- /  -- . . - /  -.-- --- ..- /  .- ... /  .-- . .-.. .-.")

mc = morse.text_to_morse('HAHAHA Interesting! Thx PotHix.')
puts mc
morse.morse_to_text mc
