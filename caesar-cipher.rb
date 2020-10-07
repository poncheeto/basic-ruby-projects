
key = 0

def caesar_cipher(string, key)
    alphabet = Array('a'..'z')
    encrypter = Hash[alphabet.zip(alphabet.rotate(key))]
    ciphered_text = string.chars.map { |c| encrypter.fetch(c, " ") }
    p ciphered_text.join

end


caesar_cipher('a', 6)
