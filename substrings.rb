# frozen_string_literal: true

# Create the dictionay of accepted words
dictionary = %w[below down go going horn how howdy it i low own part partner sit below down go going horn how howdy it i low own part partner sit]

# Create method
def substrings(string, array)
  # Create empty hash
  hash = {}

  # Iterate through dictionary
  array.each do |substring|
    hash[substring] = string.downcase.scan(substring).count if
        string.downcase.include?(substring)
  end
  hash
end
