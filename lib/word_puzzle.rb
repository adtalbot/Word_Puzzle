class String
  define_method(:word_puzzle) do

    user_input = self.split("")
    vowels = ['a','e','i','o','u']

    user_input.each() do |letter|
      if vowels.include?(letter)
        letter.replace('-')
      else
        letter
      end
    end           #end of each loop
    user_input.join()
  end
end
