public class BackstagePass: Item {
    public init(sellIn: Int, quality: Int) {
        super.init(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: sellIn, quality: quality)
    }
    
    public override func doUpdateQuality() {
        if (quality < 50) {
            quality = quality + 1
            
            if (sellIn < 11) {
                if (quality < 50) {
                    quality = quality + 1
                }
            }
            
            if (sellIn < 6) {
                if (quality < 50) {
                    quality = quality + 1
                }
            }
        }
        
        sellIn = sellIn - 1
        
        if (sellIn < 0) {
            quality = quality - quality
        }
    }
}
