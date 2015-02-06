class Book
	def title=(input)
		expect_array=["and","in","the","of","a","an"]
		not_first_word=false
		input_array=input.split(" ")
		input_array.each do |x|
			if(!expect_array.include?(x))||(not_first_word==false)
				x.capitalize!
				not_first_word=true
			end
		end
		@title=input_array.join(" ")
	end


	def title
		@title
	end

end