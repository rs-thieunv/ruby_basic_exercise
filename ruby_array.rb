def exercise_1
    p "Original array"
    arr = gets.chomp
    color_check =  gets.chomp
    p " Check if #{color_check} in color array! "
    p arr.include? color_check
end

def exercise_2 arr
    p arr[0] == 7 || arr.last == 7 ? true : false
end

def exercise_3 arr
    p "Original array: #{arr}"
    num = gets.chomp.to_i
    p "#{num} random elements from the array."
    p arr.sample(num)
end

def exercise_4 arr
    arr[0] == arr.last ? true : false
end

def exercise_5 arr
    p "Original array: #{arr}"
    p "Sum of the values of the above array: "
    sum  = 0 
    arr.each{|value| sum+= value}
    p sum
end

def exercise_6 arr
    arr.uniq
end

def exercise_7 (arr1, arr2)
    arr1[0] == arr2[0] || arr1.last == arr2.last ? true : false    
end

def exercise_8  arr
    p  "Original array: "
    p "#{arr}"
    p "Remove blank element from the above array: "
    new_arr = arr.reject{|value| value.empty? }
    p new_arr
end

def exercise_9 arr
    sum = 0
    if arr.length >= 3
        arr.each{|value| sum += value}
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

def exercise_11 arr
    p rotated = [arr[1],arr[2],arr[0]]
end

def exercise_12 arr
    arr.reverse    
end

def exercise_13 arr
    if arr[0] < arr.last
        arr[0] = arr.last
        arr[1] = arr.last
    else
        arr[1] = arr[0]
        arr.last = arr[0]
    end
    arr
end

def exercise_14 arr
    if arr.empty?
        return 0
    end
    return arr.length < 2 ? arr[0] : arr.reduce{|sum,value|  sum + value}
end

def exercise_15 (arr1,arr2) 
    [arr1[1],arr2[1]]
end

def exercise_16 arr
    arr.flatten
end

def exercise_17 arr
    arr[0]==7 || arr[1] == 7 || arr[0] == 4 || arr[1] == 4 ? true : false
end

def exercise_18 arr
    arr[0]==6 || arr[1] == 6 || arr[0] == 9 || arr[1] == 9 ? true : false
end

def exercise_19 arr
    if arr.size == 2
        if arr == [5,5]
            true
        elsif arr == [3,3]
            true
        else    
            false
        end
    else
        false
    end
end

def exercise_20 arr
     
end
# exercise_1 ([1,2,3,5,6,74,5])

def exercise_21 (arr1,arr2)
    sum1 = arr1.reduce{|sum,value| sum + value}
    sum2 = arr2.reduce{|sum,value| sum + value}
    sum1 < sum2 ? sum2 : sum1
end

def exercise_22 arr 
    n = arr.size/2 - 1
    p arr[n..n+1]
end 

def exercise_23 (arr1,arr2)
    arr1 + arr2
end

def exercise_24 arr
    if arr.size == 1
        return arr[0] 
    end   
    tem = arr[0]
    arr[0] = arr[arr.length-1]
    arr[arr.length-1] = tem
    arr
end

def exercise_25 arr
    n = arr.length/2 -1
    arr[n..n+2]
end

def exercise_26 arr
    arr.sort! 
    arr[arr.length-1]
end

def exercise_27 arr
    if arr.size < 3
        return arr    
    end
    return arr[0..2]
end

def exercise_28 (arr1,arr2)
    if arr1.size  == 0
        return arr2[0]
    elsif arr2.size == 0
        return arr1[0]
    else
        return [arr1[0],arr2[0]]
    end
end

def exercise_29 arr
    index  = 0
    count = 0
    while index < arr.length
        if arr[index] % 2 == 0   
            count +=1 
        end
        index +=1     
    end    
    return count
end

def exercise_30 arr
    arr1 = arr.sort
    max = arr1[arr.length-1]
    min = arr1[0]
    sub = (arr.index(max)-arr.index(min)).abs
    return sub
end

def exercise_31 arr
    arr1 = arr.sort 
    total = arr1.reduce{|sum,value| sum + value}   
    return medium = total/arr.length
end

def exercise_32 arr
    if arr.empty? 
        return 0 
    end
    index = arr.index(17)
    total = arr[0...index].reduce{|sum,value| sum+value}
    return total
end

def exercise_33 arr
    count = 0
    index =0
    while index < arr.length
        if arr[index] == 3
            count+=1
        end
        index+=1
    end    
    count* 3 == 9? true :false
end

def exercise_34 arr
    index =0 
    count =0 
    while index <arr.length
        if arr[index] == 2
            count -= 1            
        end
        if arr[index] == 5
            count+=1             
        end
        index+=1
    end  
    count <= 0 ? false : true    
end

def exercise_35 arr
    index =0 
    count =0 
    while index <arr.length
        if arr[index] == 3
            count += 1            
        end
        if arr[index] == 5
            count+=1             
        end
        index+=1
    end
    count == arr.length ? true : false
end

def exercise_36 arr
    index =0 
    count =0 
    while index <arr.length
        if arr[index] == 3
            count += 1            
        end
        if arr[index] == 5
            count+=1             
        end
        index+=1
    end
    count > 0 ? true : false
end

def exercise_37 (arr,value)
    index =0 
    while index < arr.length
        if arr[index] == value || arr[index+1] == value 
            index += 1
        else
           return false
        end
    end
    return true
end

def exercise_38 arr
    index =0 
    count3 = 1
    count5 = 1
    while index < arr.length && (count3 + count5 != 0)
        if arr[index] == 3 && arr[index+1] == 3
            count3 = 0    
        end
        if arr[index] == 5 && arr[index+1] == 5
            count5 = 0            
        end
        index+=1
    end
    return (count3 == 0 && count5 == 1) || (count5 == 0 && count3 ==1 ) ? true : false
end

def exercise_39 arr
    index =0 
    count6 = 0
    while index < arr.length && count6==1
        if arr[index] == 6 && arr[index+1] == 6
            return true
        elsif arr[index] == 6 && arr[index+2] == 6
            return true
        end
        index+=1
    end
    return false
end

def exercise_40 arr
    index = arr.index(2)
    while index+1 < arr.length
        if arr[index+1] == 3
            return true
        end
        index +=1
    end
    return false
end

def exercise_41 arr
    index = 0
    count2 = 0
    count = 0
    while index < arr.length
        if arr[index] == 2
            count += 1
        end
        if arr[index] == 2 && arr[index+1] ==2 
            count2 +=1
        end
        index +=1
    end
    return count == 2 && count2 == 0 ? true : false
end

def exercise_42 arr
    return Hash[arr.zip]
end

def exercise_43 arr
    p "Original array: "
    p "#{arr}"    
    p "Frequency of numbers:"
    return arr.inject(Hash.new(0)){|hash,value| hash[value] += 1;hash}
end

def exercise_44 arr
    p "Original array: "
    p "#{arr}"
    p "If all items are identical?"
    new_hash = arr.inject(Hash.new(0)){|hash,value| hash[value] += 1;hash}
    return new_hash.size == 1? true :false
end

def exercise_45 (arr,str)
    new_array = []
    arr.each do |value|
        if value.start_with? str
            new_array<<value
        end
    end
    return new_array
end

def exercise_46 (arr)
    p "Original array: "
    p "#{arr}"
    p "Reverse array: "
    arr.reverse.each{|value| puts value}
end

def exercise_47 (arr,n)
    p "Original array:"
    p arr
    p "First #{n} elements "
    p arr.first(n)
end

def exercise_48 arr
    return arr.sort_by!(&:length)    
end
