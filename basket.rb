require './pricing'
class Basket

    def initialize
        @items = Array.new
    end

    def add(item)
        @items << item
    end

    def sub_total
        @items.map{ |item| Pricing.item_cost(item)}.sum
    end
    
    def total
        sub = self.sub_total
        discount_1 = Pricing.buy_one_get_one_free(@items)
        discount_2 = Pricing.bulk_discount(@items)
        total = sub - discount_1 - discount_2
    end
end

# ba = Basket.new
# ba.add('BAS')
# ba.add('PAR')
# ba.add('BAS')
# ba.add('PAR')
# ba.add('PAR')
# price = ba.total
# puts "#{price}"