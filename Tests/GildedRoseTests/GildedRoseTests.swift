@testable import GildedRose
import XCTest
import ApprovalTests

class GildedRoseTests: XCTestCase {

    private func doUpdateQuality(_ name: String, _ sellIn: Int, _ quality: Int) -> String {
        let items = [Item.createItem(name: name, sellIn: sellIn, quality: quality)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        
        return app.items[0].description
    }
    
    func testFoo() throws {
        try CombinationApprovals.verifyAllCombinations(doUpdateQuality,
                                                       ["foo",
                                                        "Aged Brie",
                                                        "Backstage passes to a TAFKAL80ETC concert",
                                                        "Sulfuras, Hand of Ragnaros"],
                                                       [-1, 0, 2, 6, 11],
                                                       [0, 1, 49, 50])
    }

    static var allTests : [(String, (GildedRoseTests) -> () throws -> Void)] {
        return [
            ("testFoo", testFoo),
        ]
    }
}
