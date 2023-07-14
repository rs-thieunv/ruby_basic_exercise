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
    string*n
end

def exercise_4 
    p "Input the radius of the circle: "
    r = gets.chomp().to_f
    perimeter = 2 * Math::PI*r
    area = Math::PI * r * r
    p "The perimeter is #{perimeter}"
    p "The area is #{area}"
end

def exercise_5(string)
    string[0,2] == "if" ? true : false
#   return string.start_with?("if") ? true : false
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
        return false
    else
        return true
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

def exercise_12 (string)
    string[0,2] == "if" ?  string : "if "<<string
end

def exercise_13 (string , n)
    string.length < 3 ? string * n : string[0,3] * n
end

def exercise_14 
    p "Input the radius of the circle: "
    r = gets.chomp().to_f
    the_volume =  4/3 * Math::PI * (r**3) 
    p "The volume of the sphere is : #{the_volume}"
end

def exercise_15 (string)
    n = string.length
    n == 0 ? nil : string[n-1].concat(string[1..n-2])<<string[0]
end

def exercise_16
    p "Input your age: "
    age = gets.chomp.to_i
    age < 18 ? ("You are a minor") : true
end

def exercise_17 (n)    
    n < 33 ? (n-33).abs : ((n-33).abs)*2  
end

def exercise_18 (x,y)
    x > y ? x : y
end

def exercise_19 (x,y)   
    (x == 20 || y == 20) ?  true : x + y
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
    (n-100).abs <= 10 || (n-200).abs <= 10 ? true : false   
end

def exercise_22 (x,y)
    x == y ? (x+y)*2 : x+y
end

def exercise_23
    9.times do
        p "Ruby exercises" 
    end       
end

def exercise_24 (string)
    n = string.length - 1
    string[n].concat(string)<<string[n]
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

def exercise_29 (array)
    array.each{|value| p value}
end

def exercise_30 (a,b)
    (a>0 && b>0) && (a.digits[0] == b.digits[0]) ? true : false
end

def exercise_31
    sum  = 0
    h = {Literature: 74, Science: 89, Math: 91}
    h.each{|key,value| sum += value}
    return sum
end

def exercise_32 (char)
    char * 20
end

def exercise_33 (n)
    n % 400 == 0 || ( n % 4 == 0 && n% 100 != 0) ? "#{n} is leap year" : "#{n} is not leap year"
end

def exercise_34 (string)
    string.start_with?("Java") ? string.gsub("Java","") : string
end

def exercise_35 (string)
    string.start_with?("ps") ? "ps" : ""    
end

def exercise_36 (a,b)
    if ((a-10).abs < (b-10).abs)
        return a
    elsif ((a-10).abs > (b-10).abs) 
        return b
    else
        return 0
    end
end

def exercise_37 (a,b)
    (a >= 10 && a<= 20) || (a >= 20 && a<= 30) ? true : false
end

def exercise_38 (a,b)
    if (a>= 20 && a <= 30) && (a>b)
        return a
    elsif (a>= 20 && a <= 30) && (a<b)
        return b
    else
        return 0        
    end
end

def exercise_39 (string)
    string.include?"i"
end

# de` va output khac nhau nen em lam theo de
def exercise_40 (a,b)
    a.digits[0] ==  b.digits[0] ? true : false
end

def exercise_41 ( array)
    if array.empty?
        return nil
    end
    array.count 5
end

def exercise_42 (array)
    n = array.size
    if n < 5
        return (array[0..n].count 7) >= 1 ? true : false 
    else
        return (array[0..5].count 7) >= 1? true : false
    end

end

def exercise_43 (array)
    index = 0
    n = array.length
    if n == 0
        return false
    end
    while index < n-2
        if array[index..index+2] == [10,20,30]
            return true
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

def exercise_46 (num)
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
        return a >b ? b : a        
    elsif a == b
        return 0        
    else
        return a >b ? a : b
    end
end

def exercise_51 (a,b)
    a.digits[0] == b.digits[0] || a.digits[1] == b.digits[0] || a.digits[0] == b.digits[1] || a.digits[1] == b.digits[1] ? true : false  
end

def exercise_52 (a,b,c)
    if a==b && b==c
        return 0
    end
    if a == b
        return c
    end
    if a == c 
        return b
    end
    if b == c
        return a
    end
    a+b+c
end

def exercise_53 (a,b,c)
    if a == 17
        return 0
    end
    if b == 17
        return a
    end
    if c ==17
        return a+b
    end
        a+b+c
end

def exercise_54 (x,y,z)
    if (y-z).abs <3 
        return false
    end
    (x-y).abs <= 1 && (x-z).abs >= 3 || (x-z).abs <= 1 && (x-y).abs >= 3 ? true : false
end

def exercise_55 (a,b,c)
    array = [a,b,c].sort
    (array[1] - array[0]).abs == (array[2]-array[1]).abs ? true : false
end

