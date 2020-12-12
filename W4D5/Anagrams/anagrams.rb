

# def first_anagram?(str1,str2) 
#     return false if str1.length != str2.length 
#     str1.each_char { |char| false if !str2.include?(char) }
#     true
# end 

# p first_anagram?('elvis','lives')
# p first_anagram?('deserts','desserts') 


# phase 1
# def first_anagram?(str1,str2)
#     first = str1.split('')
#     arr = first.permutation(str1.length).to_a
#     return true if arr.include?(str2.split(''))  
#     false
# end 

# p first_anagram?('or','xor')
# p first_anagram?('day','yda') 
# since we are using :permutation and the time complexity is determined by the string 
# that is given: the big O of this algorithm is O(n!) 


# phase 2 
def second_anagram?(str1,str2)
    arr = str2.split('')
    str1.each_char.with_index do |char,i|
        if arr.find_index(char) == nil
            return false
        else
            arr.delete(char)
        end
        return true if arr.empty?
    end
end 

p second_anagram?('xor','or')
p second_anagram?('day','yda') 

# difference between phase 1 and phase 2 is that in phase one we are creating all 
# possible sub arrays of a string and then try to find the second string within 
# that array. phasel two's algorithm is much less factorial. Becuse we are iteration
# through the string up until the string length, this is much more efficient BUT the 
# time complexity is asymptotically reliant on the input string length. I would say the 
# Big O of this algorithm is O(n) 

# phase 3 

def third_anagram?(str1, str2) 
    arr1 = str1.split("")
    arr2 = str2.split("")
    arr1.sort == arr2.sort
end

p third_anagram?('xor','or')
p third_anagram?('day','yda') 
# time complexity has really changed now: O(n) 


# phase 4 

def fourth_anagram?(str1,str2) 
    
end 

p third_anagram?('xor','or')
p third_anagram?('day','yda') 