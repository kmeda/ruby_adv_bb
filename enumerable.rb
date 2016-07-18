module Enumerable

	def my_each
		
		return self unless block_given?

		for i in self
			yield(i)
		end
	end

	def my_each_with_index
		return self unless block_given?

		for i in 0...length
			yield(self[i], i) # {|x, i| puts i}
		end
	end

	def my_select
	    return self unless block_given?
	    new_array = []
	    for i in self
	    	new_array << i if yield(i)
		end
	    return new_array
  	end

  	def my_all?
  		
  		for i in self
  			return false unless yield(i)
  		end
  		true
  		
  	end

  	def my_any?
  		for i in self
  			return true if yield(i)
  		end
  		false

  	end

  	def my_none?
  		for i in self
  			return false if yield(i)
  		end
  			
  	end

  	def my_count
  		return self.size
  	end

  	def my_map
  		new_arr = []
  		for i in self
  			new_arr << yield(i)
  		end
  		new_arr
  	end

  	def my_map(p)
  		new_arr = []
  		for i in self
  			new_arr << p.call(i)
  		end
  		new_arr
  	end

  	def my_inject(var=nil)
  		
  		arr = var.nil? ? self[1...size] : self
  		var ||= self[0]

  		for x in arr
  			var = yield(var, x)
  		end
  		var
  	end

  	def multiply_els
  		self.my_inject {|x,y| x*y}
  	end

end

arr = [2,3,4,6]
p arr.multiply_els

