require 'test_driven_development'

describe "#remove_dups" do
  it "evaluates to a uniq array" do
    expect(remove_dups([1, 2, 1, 3, 3])).to eq([1, 2, 3])
  end
end

describe "#two_sum" do
  it "finds all pairs of positions where the elements at those positions sum to zero" do
    expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
  end
end 

describe "#my_transpose" do
  it "converts rows to columns" do 
    expect(my_transpose([
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ])).to eq([
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ])
  end 
end


#[0, 1, 2, 3, 4]
#[12,5,17,22,14].my_stock => [1,3]

describe "#my_stock" do
  it "returns the msot profitable pair of days" do
    expect(my_stock([12,5,17,22,14])).to eq([1,3])
  end
end 



