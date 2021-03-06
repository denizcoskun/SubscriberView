import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SubscriberViewTests.allTests),
    ]
}
#endif
