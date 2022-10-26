
def decode_character(char)
    morse_code = {
        '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
        '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
        '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
        '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
        '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
        '--..' => 'Z'
      }

    morse_code.each do |key, value|
        return value if key == char
    end
end

def decode_word(string)
    str = ''
    full_word = ''
    string.split.each do |char|
        str = if char == '/'
            ''
        else
            decode_character(char)
        end
        full_word += str
    end
    full_word
end

def decode(morse_message)
    message = ''
    morse_message.split('   ').each do |word|
        message += "#{decode_word(word)} "
    end
    message
end

decode_character(".-")
decode_word("-- -.--")
decode("-- -.--   -. .- -- .")
decode(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ... ")
    