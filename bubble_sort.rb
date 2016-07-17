def bubble_sort(arr)

count = arr.size - 1 

	while count > 0 
		1.upto(count) do |i| 
			if arr[i-1] > arr[i]
				arr[i-1], arr[i] = arr[i], arr[i-1]
			end 
		end
		count -=1 
	end
	return arr 

end


def bubble_sort_by(arr)
	count = arr.size - 1 

	while count > 0 
		1.upto(count) do |i| 
			if yield(arr[i-1] , arr[i]) > 0
				arr[i-1], arr[i] = arr[i], arr[i-1]
			end 
		end
		count -=1 
	end
	return arr 
end
