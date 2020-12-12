require 'byebug' 
def bad_two_sum?(arr, target) 
    # debugger
    (0...arr.length).each do |i| 
        (1...arr.length - 1).each do |j| 
            if arr[i] + arr[j] == target 
                return true 
            end
        end 

    end
    false 
end 

arr = [5,3,0,4,10]
p bad_two_sum?(arr, 13) # => true
p bad_two_sum?(arr, 2)  # => false

# time complexity: O(n^2)