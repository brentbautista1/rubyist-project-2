def bubble_sort(arr)
	pos1 = 0
	while pos1<(arr.length)-1
		pos2=0
		while pos2 < (arr.length)-1
			arr[pos2], arr[pos2+1] = arr[pos2+1], arr[pos2] if arr[pos2]>arr[pos2+1]
			pos2+=1
		end
		pos1+=1
	end
	return arr
end

def bubble_sort_by(arr)
	pos1 = 0
	while pos1<(arr.length)-1
		pos2=0
		while pos2 < (arr.length)-1
			arr[pos2], arr[pos2+1] = arr[pos2+1], arr[pos2] if yield(num1,num2) > 0
			pos2+=1
		end
		pos1+=1
	end
	return arr
end

puts bubble_sort([9,3,1,0])
puts "=="
puts bubble_sort([9,3,1,0]){|num1,num2| num1<=>num2}