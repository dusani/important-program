class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word1, word2)
        # Write your algorithm here
       	puts "#{word1}"
        while word1 != word2

	        0.upto(word1.length - 1) do |x|
			        backup_letter = word1.dup
			        word1[x] = word2[x]

			        if         
			        	@dictionary.exists?(word1)
			        	puts "#{word1}"
			        	if word1 == word2
			        		break
			        	end

			    	else
			    		word1[x] = backup_letter[x]
			    	
			    	end
	    	end
	    end
    end
end

