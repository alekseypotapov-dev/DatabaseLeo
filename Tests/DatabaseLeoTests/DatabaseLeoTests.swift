import XCTest
@testable import DatabaseLeo

final class DatabaseManagerTests: XCTestCase {

    func test_readData() {
        let sut = DatabaseManager(fileName: "File", fileExtension: "plist", bundlePath: Bundle.module.bundlePath)

        XCTAssertNoThrow(try sut.readData())
    }

    func test_writeData() {
        let sut = DatabaseManager(fileName: "File", fileExtension: "plist", bundlePath: Bundle.module.bundlePath)

        XCTAssertNoThrow(try sut.writeData(Data()))
    }
}
