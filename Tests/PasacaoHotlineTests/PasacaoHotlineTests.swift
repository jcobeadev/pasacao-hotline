import XCTest
import OSLog
import Foundation
@testable import PasacaoHotline

let logger: Logger = Logger(subsystem: "PasacaoHotline", category: "Tests")

@available(macOS 13, *)
final class PasacaoHotlineTests: XCTestCase {

    func testPasacaoHotline() throws {
        logger.log("running testPasacaoHotline")
        XCTAssertEqual(1 + 2, 3, "basic test")
    }

    func testDecodeType() throws {
        // load the TestData.json file from the Resources folder and decode it into a struct
        let resourceURL: URL = try XCTUnwrap(Bundle.module.url(forResource: "TestData", withExtension: "json"))
        let testData = try JSONDecoder().decode(TestData.self, from: Data(contentsOf: resourceURL))
        XCTAssertEqual("PasacaoHotline", testData.testModuleName)
    }

}

struct TestData : Codable, Hashable {
    var testModuleName: String
}
