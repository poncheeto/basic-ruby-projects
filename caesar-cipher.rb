
key = 0

def caesar_cipher(string, key)
    # Create array of lowercase alphabet 
    alphabet = Array('a'..'z')
    # Create variable that takes letter and shifts it according to key value
        # Create hash object; key: base letter, value: shifted letter
    lower = Hash[alphabet.zip(alphabet.rotate(key))]
    
    # Assign uppercase alphabet to alphabet variable
    alphabet = Array('A'..'Z')
    upper = Hash[alphabet.zip(alphabet.rotate(key))]

    #Merge cases of upper and lowercase letters
    encrypter = lower.merge(upper)

    # Map through each letter of inputted string and return array of encrypted 
    # letters using fetch method
    ciphered_text = string.chars.map { |c| encrypter.fetch(c, c) }

    # Join encrypted letters into new string and return value
    p ciphered_text.join

end


caesar_cipher('WXyz', 6)
