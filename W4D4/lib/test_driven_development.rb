
def remove_dups(arr)
  new_arr = []
  arr.select {|el| new_arr.push(el) if !new_arr.include?(el)}
  new_arr
end

# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
def two_sum(arr)
  result = []
  (0...arr.length - 1).each do |i|
    (1...arr.length).each do |j|
      if j > i
        if arr[i] + arr[j] == 0 
          result << [i, j]
        end
      end
    end
  end
  result 
end 


def my_transpose(arr) 
  final = []
  new_arr = [] # until new_arr has 3
  
  (0...arr.length).each do |i| 
    (0...arr.length).each do |j| 
      new_arr << arr[j][i]
    end 
    final << new_arr 
    new_arr = []
  end 
  final
end


#[0, 1, 2, 3, 4]
#[12,5,17,22,14] = [1,3]

def my_stock(arr)
  result = [] 
  best_diff = 0
  (0...arr.length - 1).each do |i|
    (0...arr.length - 1).each do |j|
      ele1 = arr[i]
      ele2 = arr[j]
      if ele1 < ele2 
        if (ele2 - ele1) > best_diff
          result = []
          best_diff = ele2 - ele1
          result << i 
          result << j
        end
      end
    end
  end        
  result
end


