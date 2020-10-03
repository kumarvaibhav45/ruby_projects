def caesar_cipher(message, shift)
  shift = shift.to_i % 26
  lowercase_array = ('a'..'z').to_a
  uppercase_array = ('A'..'Z').to_a
  new_message_array = message.split('').map do |char|
    if lowercase_array.include?(char)
      new_index = lowercase_array.index(char) + shift
      new_index = new_index - 26 if new_index >= 25
      lowercase_array[new_index]
    elsif uppercase_array.include?(char)
      new_index = uppercase_array.index(char) + shift
      new_index = new_index - 26 if new_index >= 25
      uppercase_array[new_index]
    else
      char
    end
  end
  new_message_array.join
end

caesar_cipher("What a string!", 5)