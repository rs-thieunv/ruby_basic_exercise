def exercise_1(str1, str2)
        "<#{str1}> #{str2} </#{str1}>"
end

def exercise_2 (str1, str2)
    n = str1.length/2 
    str1[0..n-1].concat(str2)<<str1[n...str1.length]
end

def exercise_3 str
    p str.upcase
    p str.downcase
    p str.capitalize
end

def exercise_4 (str1,str2)
    if str1.include? str2
        p "Substring present in the string."
    end
        p "Substring not present in the string."
end 

def exercise_5 (str1)
    str1.gsub!(/\s+/,"")
end

def exercise_6 (n, str)
    n.times do str.chop! end
    return str
end

def exercise_7 (str)
    str.split("")    
end

def exercise_8 (str1, str2)
    str1.gsub!(str2,"")
end

def exercise_9 (str1,str2)
    str1.start_with?(str2)
end

def exercise_10 (str1,str2)     
    str1.count(str2)
end

def exercise_11 (str1)
    str1.chars.sort.join
end

def exercise_12 (str,chr)
    str.delete(chr)
end

def exercise_13(str,chr)
    str.delete(chr)
end

def exercise_14 (str)
    str[2...-2]
end

def exercise_15 (str,n)
    str[n...-1]
end

def exercise_16 (str)   
    str.lines.count
end

def exercise_17 (str,n)
    str[0..n-1]
end

def exercise_18 (str,chr)
    if str.start_with?(chr)
        return str.delete(chr)
    end
        return str
end

