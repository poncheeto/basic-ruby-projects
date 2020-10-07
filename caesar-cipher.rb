
key = 0

def caesar_cipher(string, key)
    ascii = string.chars.map { |c| c.ord }
    shifted = ascii.map { |c| c + key }
    ciphered_text = shifted.map { |c| c.chr }.join
    puts ciphered_text
end


caesar_cipher('WXyz', 6)
