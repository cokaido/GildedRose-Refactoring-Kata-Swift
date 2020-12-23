public class Item {
    public var name: String
    public var sellIn: Int
    public var quality: Int
    
    public init(name: String, sellIn: Int, quality: Int) {
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
    
    public static func createItem(name: String, sellIn: Int, quality: Int) -> Item {
        switch name {
        case "Aged Brie":
            return AgedBrie(sellIn: sellIn, quality: quality)
        case "Backstage passes to a TAFKAL80ETC concert":
            return BackstagePass(sellIn: sellIn, quality: quality)
        case "Sulfuras, Hand of Ragnaros":
            return Sulfuras(sellIn: sellIn, quality: quality)
        default:
            return Item(name: name, sellIn: sellIn, quality: quality)
        }
    }
    
    public func doUpdateQuality() {
        if (quality > 0) {
            quality = quality - 1
        }
        
        sellIn = sellIn - 1
        
        if (sellIn < 0) {
            if (quality > 0) {
                quality = quality - 1
            }
        }        
    }

}

extension Item: CustomStringConvertible {
    public var description: String {
        return self.name + ", " + String(self.sellIn) + ", " + String(self.quality);
    }
}
