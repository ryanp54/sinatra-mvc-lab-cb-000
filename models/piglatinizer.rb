class PigLatinizer
@@suffix = "way"

	def piglatinize(string)
		letters = string.split("")
		result = ""
		char = letters.shift
		while char && !'AEIOU'.include?(char.upcase)
			result += char
			char = letters.shift
		end
		letters.unshift(char).join + result + @@suffix
	end

end

