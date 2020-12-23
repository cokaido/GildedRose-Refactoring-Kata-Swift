public class AgedBrie: Item {
    public init(sellIn: Int, quality: Int) {
        super.init(name: "Aged Brie", sellIn: sellIn, quality: quality)
    }
    
    public override func doUpdateQuality() {
        if (quality < 50) {
            quality = quality + 1
        }
        
        sellIn = sellIn - 1
        
        if (sellIn < 0) {
            if (quality < 50) {
                quality = quality + 1
            }
        }
    }
}
