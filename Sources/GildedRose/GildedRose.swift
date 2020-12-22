public class GildedRose {
    var items:[Item]
    
    public init(items:[Item]) {
        self.items = items
    }
        

    fileprivate func doUpdateQuality(_ item: Item) {
        switch item.name {
        case "Aged Brie":
            if (item.quality < 50) {
                item.quality = item.quality + 1
            }
            
            item.sellIn = item.sellIn - 1
            
            if (item.sellIn < 0) {
                if (item.quality < 50) {
                    item.quality = item.quality + 1
                }
            }
        case "Backstage passes to a TAFKAL80ETC concert":
            if (item.quality < 50) {
                item.quality = item.quality + 1
                
                if (item.sellIn < 11) {
                    if (item.quality < 50) {
                        item.quality = item.quality + 1
                    }
                }
                
                if (item.sellIn < 6) {
                    if (item.quality < 50) {
                        item.quality = item.quality + 1
                    }
                }
            }
            
            item.sellIn = item.sellIn - 1
            
            if (item.sellIn < 0) {
                item.quality = item.quality - item.quality
            }
        case "Sulfuras, Hand of Ragnaros":
            break
        default:
            if (item.quality > 0) {
                item.quality = item.quality - 1
            }
            
            item.sellIn = item.sellIn - 1
            
            if (item.sellIn < 0) {
                if (item.quality > 0) {
                    item.quality = item.quality - 1
                }
            }
        }
        
    }
    
    public func updateQuality() {
        for i in 0..<items.count {
            doUpdateQuality(items[i])
        }
    }
}
