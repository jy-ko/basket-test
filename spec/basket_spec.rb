require './basket'

describe Basket do
    describe "test 1" do
      it "returns the sum of basket items" do
        ba = Basket.new
        ba.add('BAS')
        ba.add('PAR')
        ba.add('BAS')
        ba.add('COR')
        price = ba.total
        expect(price).to eql(19.34)
      end
    end
    describe "test 2" do
        it "returns the sum of basket items" do
          ba = Basket.new
          ba.add('BAS')
          ba.add('BAS')
          price = ba.total
          expect(price).to eql(3.11)
        end
      end
      describe "test 3" do
        it "returns the sum of basket items" do
          ba = Basket.new
          ba.add('PAR')
          ba.add('PAR')
          ba.add('BAS')
          ba.add('PAR')
          price = ba.total
          expect(price).to eql(16.61)
        end
      end
  end