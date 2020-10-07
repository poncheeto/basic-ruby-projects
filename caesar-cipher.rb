
key = 0

def caesar_cipher(string, key)
    alphabet = Array('a'..'z')
    lower = Hash[alphabet.zip(alphabet.rotate(key))]
    
    alphabet = Array('A'..'Z')
    upper = Hash[alphabet.zip(alphabet.rotate(key))]

    encrypter = lower.merge(upper)

    ciphered_text = string.chars.map { |c| encrypter.fetch(c, c) }
    p ciphered_text.join

end


caesar_cipher('a', 6)
