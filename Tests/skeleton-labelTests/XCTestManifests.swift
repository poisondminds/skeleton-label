import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(skeleton_labelTests.allTests),
    ]
}
#endif
