def exercise_1(stringing1, string2)
        "<#{string1}> #{string2} </#{string1}>"
end

def exercise_2 (string1, string2)
    n = string1.length/2 
    string1[0..n-1].concat(string2)<<string1[n...string1.length]
end

def exercise_3 string
    p string.upcase
    p string.downcase
    p string.capitalize
end

def exercise_4 (string1,string2)
    if string1.include? string2
        p "Substring present in the string."
    end
        p "Substring not present in the string."
end 

def exercise_5 (string1)
    string1.gsub!(/\s+/,"")
end

def exercise_6 (n, string)
    n.times do string.chop! end
    return string
end

def exercise_7 (string)
    string.split("")    
end

def exercise_8 (string1, string2)
    string1.gsub!(string2,"")
end

def exercise_9 (string1,string2)
    string1.start_with?(string2)
end

def exercise_10 (string1,string2)     
    string1.count(string2)
end

def exercise_11 (string1)
    string1.chars.sort.join
end

def exercise_12 (string,char)
    string.delete(char)
end

def exercise_13(string,char)
    string.delete(char)
end

def exercise_14 (string)
    string[2...-2]
end

def exercise_15 (string,n)
    string[n...-1]
end

def exercise_16 (string)   
    string.lines.count
end

def exercise_17 (string,n)
    string[0..n-1]
end

def exercise_18 (string,char)
    if string.start_with?(char)
        return string.delete(char)
    end
        return string
end

