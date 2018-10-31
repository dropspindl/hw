require 'rspec'
require 'dessert'


=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Bob") }
  subject(:brownie) {Dessert.new("brownie", 50, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie", "lots", chef)}.to raise_error(ArgumentError)
    end

  end


  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("egg")
      expect(brownie.ingredients).to include(["egg"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      brownie.add_ingredient("milk")
      brownie.add_ingredient("chocolate")
      brownie.add_ingredient("oil")
      brownie.add_ingredient("walnuts")
      brownie.add_ingredient("flour")
      brownie.add_ingredient("love")

      brownie.mix!
      expect(brownie.ingredients).to_not eq(%w(egg milk chocolate oil walnuts flour love))
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(10)
      expect(brownie.quantity).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(brownie.eat(100)).to raise_error
    end

  end


  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
