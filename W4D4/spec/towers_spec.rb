require 'towers' 

#[1,2,3,4,5,6] 
#[] 
#[] 

describe Towers do
    subject(:tower){ Towers.new('tower', 3)}

    describe '#initialize' do 
        it "takes in a type" do
            expect(tower.type).to eq('tower') 
        end 
    end

    describe "#set_up" do
        it "sets up starting pile" do
            # expect(:towers[0]).to eq([3,2,1])
            expect(tower.towers).to eq([[3,2,1],[],[]])
            tower.set_up
        end
    end

    # describe "#move" dox
        
    # end
end 