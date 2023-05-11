

def decode(morse)
    morse_alphabet = {
        ".-"   => "A",
        "-..." => "B",
        "-.-." => "C",
        "-.."  => "D",
        "."    => "E",
        "..-." => "F",
        "--."  => "G",
        "...." => "H",
        ".."   => "I",
        ".---" => "J",
        "-.-"  => "K",
        ".-.." => "L",
        "--"   => "M",
        "-."   => "N",
        "---"  => "O",
        ".--." => "P",
        "--.-" => "Q",
        ".-."  => "R",
        "..."  => "S",
        "-"    => "T",
        "..-"  => "U",
        "...-" => "V",
        ".--"  => "W",
        "-..-" => "X",
        "-.--" => "Y",
        "--.." => "Z",
        ".----." => "'",
        " " => "",
        "   " => " "
      }

      string_split = morse.split(/(\s{1,})/)
      decoded_message = ""
      
      string_split.each do |char|
        decoded_message  = decoded_message+ morse_alphabet[char]
      end
      puts decoded_message
end

decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

