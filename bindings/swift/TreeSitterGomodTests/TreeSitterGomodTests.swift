import XCTest
import SwiftTreeSitter
import TreeSitterGomod

final class TreeSitterGomodTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_gomod())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Gomod grammar")
    }
}
