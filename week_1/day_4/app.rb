require 'ruby-dictionary'
require_relative("word_chain.rb")



dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)

my_chain.find_chain("lead", "gold")