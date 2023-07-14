def exercise_1
    p "Ruby Version: "+RUBY_VERSION
    p "Ruby Patch Level: "+RUBY_PATCHLEVEL.to_s
end

require 'date'
def exercise_2
    current_time = DateTime.now
    current_date_time = current_time.strftime "%d/%m/%y %H:%M"
    p "Current Date and Time: "+ current_date_time
end

def exercise_3 (string,n)
    return string*n
end

def exercise_4 
    p "Input the radius of the circle: "
    r = gets.chomp().to_f
    perimeter = 2 * Math::PI*r
    area = Math::PI * r * r
    p "The perimeter is #{perimeter}"
    p "The area is #{area}"
end

def exercise_5(str)
    return str[0,2] == "if" ? true : false
#   return str.start_with?("if") ? true : false
end

def exercise_6 
    p "Input your first name: "
    f_name = gets.chomp
    p "Input your last name: "
    l_name = gets.chomp
    p "Hello #{l_name} #{f_name}"   
end

def exercise_7
    file = gets.chomp
# file name
    fbname = File.basename file  
    p "File name: "+fbname 
# basename
    bname = File.basename file,".rb"
    p "Base name: "+bname 
# file extention
    ffextn = File.extname  file   
    p "Extention: "+ffextn 
# path name
    path_name= File.dirname  file 
    p "Path name: "+path_name
end

#theo de thi bai 8 tuong tu bai 6
def exercise_8
    p "Input your first name: "
    f_name = gets.chomp
    p "Input your last name: "
    l_name = gets.chomp
    p "Hello #{l_name} #{f_name}"
end

def exercise_9(a,b,c)
    if ((!(a >= 1 && a <= 10)) && (!(b>= 1 && b<=10)) && (!(c>= 1 && c<=10)) )
        return false
    else
        return true
    end
end


def exercise_10(a,b,c)
    if ((a >= 1 && a <= 10) && (b>= 1 && b<=10) && (c>= 1 && c<=10) ) || (!(a >= 1 && a <= 10)) && (!(b>= 1 && b<=10)) && (!(c>= 1 && c<=10)) 
        p false
    else
        p true
    end
end

def exercise_11
# puts(
#     <<-eos
#     Sample string :
#     a string that you "don't" have to escape
#     This
#     is a ....... multi-line
#     heredoc string --------> example
#     eos
#     )
puts <<~HEREDOC
  Sample string :
  a string that you "don't" have to escape
  This
  is a ....... multi-line
  heredoc string --------> example
HEREDOC
end

def exercise_12 (str)
    return str[0,2] == "if" ?  str : "if "<<str
end

def exercise_13 (str , n)
    return str.length < 3 ? str * n : str[0,3] * n
end

def exercise_14 
    p "Input the radius of the circle: "
    r = gets.chomp().to_f
    the_volume =  4/3 * Math::PI * (r**3) 
    p "The volume of the sphere is : #{the_volume}"
end

def exercise_15 (str)
    n = str.length
    return n == 0 ? nil : str[n-1].concat(str[1..n-2])<<str[0]
end

def exercise_16
    p "Input your age: "
    age = gets.chomp.to_i
    return age < 18 ? ("You are a minor") : true
end

def exercise_17 (n)    
    return n < 33 ? (n-33).abs : ((n-33).abs)*2  
end

def exercise_18 (x,y)
    return x > y ? x : y
end

def exercise_19 (x,y)   
    return (x == 20 || y == 20) ?  true : x + y
end

def exercise_20 (x,y,z)
    max = [x,y,z].max
    if max == x 
        p "x = #{max} is greatest"  
    elsif max == y 
        p "y = #{max} is greatest" 
    else
        p "z = #{max} is greatest"
    end   
end

def exercise_21 (n)
    (n-100).abs <= 10 || (n-200).abs <= 10    
end

def exercise_22 (x,y)
    x == y ? (x+y)*2 : x+y
end

def exercise_23
    9.times do
        p "Ruby exercises" 
    end       
end

def exercise_24 (str)
    n = str.length - 1
    str[n].concat(str)<<str[n]
end

def exercise_25 (temp1,temp2)
    (temp1 < 0 && temp2 >100) || (temp1 >100 && temp2 < 0) ? true : false 
end

def exercise_26
    34.upto(41) do |value|
        p value
    end    
end

def exercise_27
    2.step(10,2) do |value|
        p value 
    end    
end

def exercise_28
    9.step(1,-2) do |value|
        p value 
    end   
end

def exercise_29 (arr)
    arr.each{|value| p value}
end

def exercise_30 (a,b)
    (a>0 && b>0) && (a.digits[0] == b.digits[0]) ? true : false
end

def exercise_31
    sum  = 0
    h = {Literature: 74, Science: 89, Math: 91}
    h.each{|key,value| sum += value}
    p sum
end

def exercise_32 (char)
    char * 20
end

def exercise_33 (n)
    n % 400 == 0 || ( n % 4 == 0 && n% 100 != 0) ? "#{n} is leap year" : "#{n} is not leap year"
end

def exercise_34 str
    str.start_with?("Java") ? str.gsub("Java","") : str
end

def exercise_35 str
    str.start_with?("ps") ? "ps" : ""    
end

def exercise_36 (a,b)
    if ((a-10).abs < (b-10).abs)
        a
    elsif ((a-10).abs > (b-10).abs) 
        b
    else
        0
    end
end

def exercise_37 (a,b)
    (a >= 10 && a<= 20) || (a >= 20 && a<= 30) ? true : false
end

def exercise_38 (a,b)
    if (a>= 20 && a <= 30) && (a>b)
        a
    elsif (a>= 20 && a <= 30) && (a<b)
        b
    else
        0        
    end
end

def exercise_39 str
    str.include?"i"
end

# de` va output khac nhau nen em lam theo de
def exercise_40 (a,b)
    a.digits[0] ==  b.digits[0] ? true : false
end

def exercise_41 ( arr)
    if arr.empty?
        nil
    end
    arr.count 5
end

def exercise_42 arr
    n = arr.size
    if n < 5
        p (arr[0..n].count 7) >= 1 ? true : false 
    else
        p (arr[0..5].count 7) >= 1? true : false
    end

end

def exercise_43 arr
    index = 0
    n = arr.length
    if n == 0
        false
    end
    while index < n-2
        if arr[index..index+2] == [10,20,30]
            true
        end
        index += 1
    end
    false
end

#bai nay de` khac output
def exercise_44 (a,b)
    (a>=20 && a<= 30) ? a +b : 30
end

def exercise_45 (a,b)
    a == 11 || b== 11 || a+ b ==11 || a-b == 11 ? true : false 
end

def exercise_46 num
    num % 10 <= 2 || num %10 >= 8 ? true : false
end

def exercise_47 (a,b,c)
    (a+b==c) || (a+c ==b) || (b+c ==a) ? true : false   
end

def exercise_48 (a,b,c)
    a.digits[0] == b.digits[0] || a.digits[0] == c.digits[0] || b.digits[0] == c.digits[0] || (a.digits[0] == b.digits[0]) &&(b.digits[0] == c.digits[0]) ? true : false
end

def exercise_49 (a,b,c)
    (a-b).abs <= 20 || (a-c).abs <=20 || (b-c).abs <= 20 ? true : false
end

def exercise_50 (a,b)
    if a% 5 == b %5 
        a >b ? b : a        
    elsif a == b
        0        
    else
        a >b ? a : b
    end
end

def exercise_51 (a,b)
    a.digits[0] == b.digits[0] || a.digits[1] == b.digits[0] || a.digits[0] == b.digits[1] || a.digits[1] == b.digits[1] ? true : false  
end

def exercise_52 (a,b,c)
    if a == b
        c
    end
    if a == c 
        b
    end
    if b == c
        a
    end
    a+b+c
end

def exercise_53 (a,b,c)
    if a == 17
        0
    end
    if b == 17
        a
    end
    if c ==17
        a+b
    end
    a+b+c
end

def exercise_54 (x,y,z)
    if (y-z).abs <3 
        false
    end
    (x-y).abs <= 1 && (x-z).abs >= 3 || (x-z).abs <= 1 && (x-y).abs >= 3 ? true : false
end

def exercise_55 (a,b,c)
    arr = [a,b,c].sort
    (arr[1] - arr[0]).abs == (arr[2]-arr[1]).abs ? true : false
end

