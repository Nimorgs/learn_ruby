class Timer

	def initialize()
		@seconds=0
		@minutes=0
		@hours=0
	end
	def seconds=(input)
		hours=0
		minutes=0
		seconds=input
		while(seconds>60)
			minutes+=1
			seconds-=60
		end
		while(minutes>60)
			hours+=1
			minutes-=60
		end
		@hours=hours
		@minutes=minutes
		@seconds=seconds


	end



	def time_string()
		time_string =""
		if("#{@hours}".length==1)
			time_string="0#{@hours}:"
		else
			time_string="#{@hours}:"
		end

		if("#{@minutes}".length==1)
			time_string=time_string+"0#{@minutes}:"
		else
			time_string=time_string+"#{@minutes}:"
		end

		if("#{@seconds}".length==1)
			time_string=time_string+"0#{@seconds}"
		else
			time_string=time_string+"#{@seconds}"
		end
		return time_string
	end


	def seconds
		@seconds
	end

	def minutes
		@minutes
	end

	def hours
		@hours
	end
end