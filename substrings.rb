def substrings(input, dictionary)
	strings = input.downcase.split(/\W/)
	output_hash = {}
	dictionary.each do |word|
		matches = 0
		strings.each do |input|
			if input =~ (/#{word}/) # use word as regex
				matches += 1
			end
			if matches > 0
				output_hash[word] = matches
			end
		end
	end
	output_hash
end

dictionary = ["below","down","go","going","horn","how","howdy",
	"it","i","low","own","part","partner","sit"]

# p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)