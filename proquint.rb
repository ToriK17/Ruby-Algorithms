def uid_to_proquint(uid)
  # Step 1: Convert UID to binary
  binary_representation =
    if uid.is_a?(Numeric)
      uid.to_s(2)
    elsif uid.is_a?(String)
      uid.unpack('B*').first
    else
      raise ArgumentError, 'UID must be a Numeric or String'
    end

  # Step 2: Split Binary into 5-bit Chunks
  chunks = binary_representation.chars.each_slice(5).map { |chunk| chunk.join.ljust(5, '0') }

  # Step 3: Map to Proquints
  proquints = chunks.map { |chunk| map_to_proquint(chunk) }

  # Step 4: Combine Proquints with Dash and Remove Trailing Dash
  proquint_result = proquints.join('-')

  # Step 5: Shorten Result
  proquint_result = proquint_result[0, 11].chomp('-')

  return proquint_result
end


def map_to_proquint(chunk)
  # Create a mapping table for 5-bit binary to consonant-vowel pairs
  mapping_table = "bdfghjklmnpqrstvwxz"
  vowels = "aeiou"

  # Convert binary to decimal and map to consonant-vowel pair
  decimal_value = chunk.to_i(2)
  consonant = mapping_table[decimal_value / 5]
  vowel = vowels[decimal_value % 5]

  return "#{consonant}#{vowel}"
end

# Example usage with numeric UID
numeric_uid = 123_456_789
proquint_result_numeric = uid_to_proquint(numeric_uid)
puts "Numeric UID: #{numeric_uid} -> Proquint: #{proquint_result_numeric}"

# Example usage with string UID
string_uid = "abc123"
proquint_result_string = uid_to_proquint(string_uid)
puts "String UID: #{string_uid} -> Proquint: #{proquint_result_string}"

# ...

# From Scratch
def generate_random_uid(length)
  rand(2**(length - 1)..2**length - 1)
end

def create_proquint_from_scratch(length)
  # Step 1: Generate a random UID
  uid = generate_random_uid(length)

  # Step 2: Convert UID to Proquint
  proquint_result = uid_to_proquint(uid)

  return uid, proquint_result
end

# Example usage
uid_length = 20
uid, proquint_result = create_proquint_from_scratch(uid_length)
puts "Generated UID: #{uid} -> Proquint: #{proquint_result}"
