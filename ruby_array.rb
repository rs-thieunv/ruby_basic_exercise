def exercise_1
    p "Original array"
    array = gets.chomp
    color_check =  gets.chomp
    p " Check if #{color_check} in color array! "
    p array.include? color_check
end

def exercise_2 (array)
    array[0] == 7 || array.last == 7 ? true : false
end

def exercise_3 (array)
    p "Original array: #{array}"
    number = gets.chomp.to_i
    p "#{number} random elements from the array."
    p array.sample(number)
end

def exercise_4 (array)
    array[0] == array.last ? true : false
end

def exercise_5 (array)
    p "Original array: #{array}"
    p "Sum of the values of the above array: "
    sum  = 0 
    array.each{|value| sum+= value}
    return sum
end

def exercise_6 (array)
    array.uniq
end

def exercise_7 (array1, array2)
    array1[0] == array2[0] || array1.last == array2.last ? true : false    
end

def exercise_8  (array)
    p  "Original array: "
    p "#{array}"
    p "Remove blank element from the above array: "
    new_arr = array.reject{|value| value.empty? }
    p new_arr
end

def exercise_9 (array)
    sum = 0
    if array.length >= 3
        array.each{|value| sum += value}
        return sum
    end
    false
end

def exercise_10
    color = "Red, Green, Blue, White"
    nums = "1, 3, 4, 5, 7"
    print "Original delimited string:\n"
    print color,", "
    print nums
    print "\nString to array:\n"
    color_array = color.split(",")
    nums_array = nums.split(",").map { |s| s.to_i }
    print color_array
    print "\n",nums_array
end

def exercise_11 (array)
    [array[1],array[2],array[0]]
end

def exercise_12 (array)
    array.reverse    
end

def exercise_13 (array)
    if array[0] < array.last
        array[0] = array.last
        array[1] = array.last
    else
        array[1] = array[0]
        array.last = array[0]
    end
    array
end

def exercise_14 (array)
    if array.empty?
        return 0
    end
    return array.length < 2 ? array[0] : array.reduce{|sum,value|  sum + value}
end

def exercise_15 (arr1,arr2) 
    [arr1[1],arr2[1]]
end

def exercise_16 (array)
    array.flatten
end

def exercise_17 (array)
    array[0]==7 || array[1] == 7 || array[0] == 4 || array[1] == 4 ? true : false
end

def exercise_18 (array)
    array[0]==6 || array[1] == 6 || array[0] == 9 || array[1] == 9 ? true : false
end

def exercise_19 (array)
    if array.size == 2
        if array == [5,5]
            return true
        elsif array == [3,3]
            return true
        else    
            return false
        end
    else
        false
    end
end

def exercise_20 
    number1 = numbers[0], numbers[1], numbers[2]
	if(numbers[0] == 3 && numbers[1] == 5)
			number1[1] = 1;
	end		
	if(numbers[1] == 3 && numbers[2] == 5)
			number1[2] = 1;
	end		
	return number1;
end

def exercise_21 (array1,array2)
    sum1 = array1.reduce{|sum,value| sum + value}
    sum2 = array2.reduce{|sum,value| sum + value}
    sum1 < sum2 ? sum2 : sum1
end

def exercise_22 (array) 
    n = array.size/2 - 1
    return array[n..n+1]
end 

def exercise_23 (array1,array2)
    array1 + array2
end

def exercise_24 (array)
    if array.size <= 1
        return array
    end
    first_element = array[0]
    array[0] = array[-1]
    array[-1] = first_element
    return array
end

def exercise_25 (array)
    n = array.length/2 -1
    array[n..n+2]
end

def exercise_26 (array)
    array.sort! 
    array[array.length-1]
end

def exercise_27 (array)
    if array.size < 3
        return array    
    end
    return array[0..2]
end

def exercise_28 (array1,array2)
    if array1.size  == 0
        return array2[0]
    elsif array2.size == 0
        return array1[0]
    else
        return [array1[0],array2[0]]
    end
end

def exercise_29 (array)
    index  = 0
    count = 0
    while index < array.length
        if array[index] % 2 == 0   
            count +=1 
        end
        index +=1     
    end    
    return count
end

def exercise_30 (array)
    arr1 = array.sort
    max = arr1[array.length-1]
    min = arr1[0]
    sub = (array.index(max)-array.index(min)).abs
    return sub
end

def exercise_31 (array)
    arr1 = array.sort 
    total = arr1.reduce{|sum,value| sum + value}   
    return medium = total/array.length
end

def exercise_32 (array)
    if array.empty? 
        return 0 
    end
    index = array.index(17)
    total = array[0...index].reduce{|sum,value| sum+value}
    return total
end

def exercise_33 (array)
    count = 0
    index =0
    while index < array.length
        if array[index] == 3
            count+=1
        end
        index+=1
    end    
    count* 3 == 9? true :false
end

def exercise_34 (array)
    index =0 
    count =0 
    while index <array.length
        if array[index] == 2
            count -= 1            
        end
        if array[index] == 5
            count+=1             
        end
        index+=1
    end  
    count <= 0 ? false : true    
end

def exercise_35 (array)
    index =0 
    count =0 
    while index <array.length
        if array[index] == 3
            count += 1            
        end
        if array[index] == 5
            count+=1             
        end
        index+=1
    end
    count == array.length ? true : false
end

def exercise_36 (array)
    index =0 
    count =0 
    while index <array.length
        if array[index] == 3
            count += 1            
        end
        if array[index] == 5
            count+=1             
        end
        index+=1
    end
    count > 0 ? true : false
end

def exercise_37 (array,value)
    index =0 
    while index < array.length
        if array[index] == value || array[index+1] == value 
            index += 1
        else
           return false
        end
    end
    true
end

def exercise_38 (array)
    index =0 
    count3 = 1
    count5 = 1
    while index < array.length && (count3 + count5 != 0)
        if array[index] == 3 && array[index+1] == 3
            count3 = 0    
        end
        if array[index] == 5 && array[index+1] == 5
            count5 = 0            
        end
        index+=1
    end
    (count3 == 0 && count5 == 1) || (count5 == 0 && count3 ==1 ) ? true : false
end

def exercise_39 (array)
    index =0 
    count6 = 0
    while index < array.length && count6==1
        if array[index] == 6 && array[index+1] == 6
            return true
        elsif array[index] == 6 && array[index+2] == 6
            return true
        end
        index+=1
    end
    return false
end

def exercise_40 (array)
    index = array.index(2)
    while index+1 < array.length
        if array[index+1] == 3
            return true
        end
        index +=1
    end
    return false
end

def exercise_41 (array)
    index = 0
    count2 = 0
    count = 0
    while index < array.length
        if array[index] == 2
            count += 1
        end
        if array[index] == 2 && array[index+1] ==2 
            count2 +=1
        end
        index +=1
    end
    count == 2 && count2 == 0 ? true : false
end

def exercise_42 (array)
    Hash[array.zip]
end

def exercise_43 array
    p "Original array: "
    p "#{array}"    
    p "Frequency of numbers:"
    p array.inject(Hash.new(0)){|hash,value| hash[value] += 1;hash}
end

def exercise_44 (array)
    p "Original array: "
    p "#{array}"
    p "If all items are identical?"
    new_hash = array.inject(Hash.new(0)){|hash,value| hash[value] += 1;hash}
    new_hash.size == 1? true :false
end

def exercise_45 (array,string)
    new_array = []
    array.each do |value|
        if value.start_with? string
            new_array<<value
        end
    end
    return new_array
end

def exercise_46 (array)
    p "Original array: "
    p "#{array}"
    p "Reverse array: "
    array.reverse.each{|value| puts value}
end

def exercise_47 (array,n)
    p "Original array:"
    p array
    p "First #{n} elements "
    p array.first(n)
end

def exercise_48 (array)
    array.sort_by!(&:length)    
end
