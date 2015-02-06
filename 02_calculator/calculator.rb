def add (nr1,nr2)
	return nr1+nr2
end

def subtract (nr1,nr2)
	return nr1-nr2
end

def sum (nr_array)
	final_sum=0
	nr_array.each do |x|
		final_sum+=x
	end
	return final_sum
end

def multiply (nr_array)
	final_multi=1
	if nr_array.length == 0
		return 0
	else
		nr_array.each do |x|
			final_multi *=x
		end
	end
	return final_multi
end

def power(nr1,nr2)
	return nr1 ** nr2
end

def factorial (nr)
	i=1
	final_fact=1
	while i<=nr
		final_fact *= i
		i+=1
	end
	return final_fact
end

