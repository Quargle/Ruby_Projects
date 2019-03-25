# Ruby Caesar Cipher



def get_string
    print "Please enter your string to encrypt: "
    phrase = gets.chomp 
end

def get_shift
    print "Please enter your desired shift: "
    shift = gets.chomp 
end

def convert_string(phrase, shift)
    new_phrase = ''
    phrase.each_char do |letter|
        letter = convert_letter(letter, shift)
        new_phrase += letter
    end
    puts new_phrase
end

def convert_letter(letter, shift)
    # ASCII
    # a-z : 97-122
    # A-Z : 65-90
    letter_value = letter.ord                           # Converts letter to ASCII code

    if letter_value.between?(97, 122)                   # Lower case letters
        letter_value = letter_shift(letter_value, shift, 122)
    elsif letter_value.between?(65, 90)                 # Upper case letters
        letter_value = letter_shift(letter_value, shift, 90)
    end
    letter = letter_value.chr   # returns from number to character 
end

def letter_shift(letter_value, shift, max_value)
    shift = shift % 26
    if letter_value <= (max_value-shift)                # no looping required
        letter_value += shift                   
    else
        letter_value += (shift-26)                      # loop back to a
    end
end
    
phrase = get_string()
shift = get_shift().to_i
convert_string(phrase, shift)
