

def translate (input)
	vowels = ["a","e","i","o","u",] #array of vowels 
	translated="" # string to save the translated string
	
	
	#check if first letter is a vowel , if so put ay at the end of the string 
	input_array=input.split(" ")
	input_array.each do |x|
		i=0
		consonants="" # string to save the consonants to move 
		if vowels.include?(x[0])
			translated=translated+x+"ay "
		else
		while(!(vowels.include?(x[i])))||((x[i-1]=="q")&&(x[i]=="u"))
			consonants=consonants+x[i]
			i+=1
		end
		x.slice!(0..(i-1))
		translated=translated+x+consonants+"ay "
		end


	end



	return translated.chomp(" ")
end