=begin
HW 1-1: FUN WITH STRINGS

Part A — Palindromes: Write a method palindrome?(string) that determines whether a given string (word or phrase)
is a palindrome, that is, it reads the same backwards as forwards, ignoring case, punctuation, and nonword characters. 
(A "nonword character" is defined for our purposes as "a character that Ruby regexps would treat as a nonword character".)

The structure of your code should look as follows:  

def palindrome?(string)
    # your code here
end

Your solution shouldn't use loops or iteration of any kind. Instead, you will find regular-expression syntax 
very useful; it's reviewed briefly in the book, and the website rubular.com lets you try out Ruby regular expressions 
"live". Some methods that you might find useful (which you'll have to look up in Ruby documentation, ruby-doc.org) 
include: String#downcase, String#gsub, String#reverse.
  
=end

def palindrome?(str)
  str.gsub(/[\W]/, "").downcase == str.gsub(/[\W]/, "").downcase.reverse
end

=begin
Example test cases: 
=end

palindrome?("A man, a plan, a canal -- Panama")  # => true
palindrome?("Madam, I'm Adam!")                  # => true
palindrome?("Abracadabra")                       # => false (nil is also ok)

=begin

Part B — Word Count: Define a function count_words(string) that, given an input string, return a hash whose
 keys are words in the string and whose values are the number of times each word appears. 
 Your code should look like:

def count_words(string)
    # your code here
end

Your solution shouldn't use for-loops, but iterators like each are permitted. As before, nonwords and case 
should be ignored. A word is defined as a string of characters between word boundaries. 
(Hint: the sequence "\b" in a Ruby regexp means "word boundary".)

=end

def count_words(str)
  word_count = Hash.new
  str.scan(/\w+/i) do |s|  
  	s.downcase!	
  	unless word_count.has_key?(s)
  		word_count[s] = 1  		
  	else
  		word_count[s] += 1
  	end
  end
  return word_count
end

=begin
Example test cases: 
=end
count_words("A man, a plan, a canal -- Panama")
    # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"
    # => {'doo' => 3, 'bee' => 2}