def substrings(string, dictionary)
	result = Hash.new	
	dictionary.each do |word|
		count = string.downcase.chars.each_cons(word.size).map(&:join).count(word)
		result[word] = count unless count == 0
	end
	return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
