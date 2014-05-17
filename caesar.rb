def caesar_cipher(input, shift)
		# for each character in string
			# if character is letter (regex)
				# get ASCII value
				# add shift (wrap to 26 letters)
				# convert back to string
			# end if
		# end for
	output = ""
	input.scan(/./) do |character|
		if character =~ /[A-Z]/
			cipher_char = (((character.sum + shift) - "A".sum) % 26 + "A".sum).chr
		elsif character =~ /[a-z]/
			cipher_char = (((character.sum + shift) - "a".sum) % 26 + "a".sum).chr
		elsif character =~ /\W/
			cipher_char = character
		end
		output << cipher_char
	end
	puts output
end

puts "Enter the input string:"
input_string = gets.chomp
puts "Enter the shift:"
shift = gets.chomp.to_i

caesar_cipher(input_string, shift)
