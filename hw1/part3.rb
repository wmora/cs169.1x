=begin

HW 1-3: ANAGRAMS

An anagram is a word obtained by rearranging the letters of another word. For example, "rats", "tars", 
and "star" are anagrams of one another, as are "dictionary" and "indicatory". We will call any array of 
single-word anagrams an anagram group. For instance, ["rats", "tars", "star"] is an anagram group, as is ["dictionary"].

Write a method combine_anagrams(words) that, given an array of strings words, groups the input words into anagram 
groups. Case doesn't matter in classifying strings as anagrams (but case should be preserved in the output), and the 
order of the anagrams in the groups doesn't matter. The output should be an array of anagram groups (i.e. an array of arrays).

Example test case:

 input: ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] 
 output: [ ["cars", "racs", "scar"],
           ["four"],
           ["for"],
           ["potatoes"],
           ["creams", "scream"] ]

Hint: You can quickly tell if two words are anagrams by sorting their letters, keeping in mind that upper vs. 
lowercase doesn't matter.
	
=end

def is_anagram?(word1, word2)		
	word1.downcase.chars.to_a.sort.flatten.to_s == word2.downcase.chars.to_a.sort.flatten.to_s
end

def combine_anagrams(words)
	output = []	
	words.each do |word|
		unless output.length == 0
			pushed = false
			output.each do |words|
				if is_anagram? words[0], word 
					words.push word 
					pushed = true
				end
			end
			output.push([word]) unless pushed 
		else
			output.push [word]
		end
	end
	output
end