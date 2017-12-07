class PigLatinizer

	def piglatinize(word)
		i = word.split("").find_index {|letter| "AEIOU".include?(letter.upcase)}
		if i == 0
			word + "way"
		else
			word.slice(i, word.size - i) + word.slice(0,i) + "ay"
		end
	end

	def to_pig_latin(string)
		result = ""
		words = []
		words = string.split if string
		words.each do |word|
			result += piglatinize(word) + " "
		end
		result.strip
	end
end

