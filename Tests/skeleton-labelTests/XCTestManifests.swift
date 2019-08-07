import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(skeleton_labelTests.allTests),
    ]
}
#endif