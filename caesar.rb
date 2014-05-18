def caesar_cipher(input, shift)
	output = ""
	input.scan(/./) do |character|
		if character =~ /[A-Z]/
			cipher_char = wrapped_cipher(character, shift, "A")
		elsif character =~ /[a-z]/
			cipher_char = wrapped_cipher(character, shift, "a")
		elsif character =~ /\W/
			cipher_char = character
		end
		output << cipher_char
	end
	puts output
end

def wrapped_cipher(character, shift, base)
	(((character.ord + shift) - base.ord) % 26 + base.ord).chr
end


puts "Enter the input string:"
input_string = gets.chomp
puts "Enter the shift:"
shift = gets.chomp.to_i

caesar_cipher(input_string, shift)
