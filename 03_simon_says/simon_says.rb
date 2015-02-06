def echo (statement)
	return statement
end

def shout (statement)
	return statement.upcase
end

def repeat (statement, count=2)
	final_statement=""
	i=0
	while i < count do
		final_statement+=statement+" "
		i+=1
	end
	return final_statement.chomp(" ")
end

def start_of_word (statement,length)
	return statement[0,length]
end

def first_word (statement)
	return statement.split(" ")[0]
end

def titleize (statement)
	final_string=""
	little_words=["the","and","over"]
	string_array=statement.split(" ")
	string_array.each do |x|
		if little_words.include?(x)
			x.downcase!
		else
			x.capitalize! 
		end
		
	end
	string_array[0].capitalize!
	string_array.each do |x|
		final_string+=x+" "
	end
	return final_string.chomp(" ")
end
