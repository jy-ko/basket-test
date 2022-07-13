class Pricing
    DATA = {
        items: {
            BAS: {
                cost: 3.11
            },
            PAR: {
                cost: 5
            },
            COR: {
                cost: 11.23
            }
        }
    }
    def self.item_cost(item)
        DATA[:items][item.to_sym][:cost]
    end

    # discount rule 1
    def self.buy_one_get_one_free(items)
        discount = 0
        if items.count('BAS') >= 2
            discount = (items.count('BAS') / 2 ) * ( 2 - 1) * self.item_cost('BAS')
        end
        discount
    end
    # discount rule 2
    def self.bulk_discount(items)
        discount = 0
        if items.count('PAR') >= 3
            discount = items.count('PAR') * 0.5
        end
        discount
    end
end