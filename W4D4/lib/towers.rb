#[[3,2,1],[],[]] => [[],[],[3,2,1]]

class Towers 

    attr_accessor :type, :size, :towers
    def initialize(type, size) 
        @type = type 
        @size = size
        @towers = Array.new(3) {Array.new()}
    end

    # [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
    def set_up
        @towers[0][0] = 3
        @towers[0][1] = 2
        @towers[0][2] = 1
    end
end

p = Towers.new("tower", 3)
