# Create method to perform cipher

def caesar_cipher(string, key)
        shift_letters
        return string
    end


#Create method to shift letters

def shift_letters()
    string.each_byte { |c| p c }
end