import XCTest
@testable import IssTracker

final class IssTrackerTests: XCTestCase {
    func testGetIss() throws {
        IssTracker.getISS { result in
            switch result {
            case .success(let iss):
                
                XCTAssertNotNil(iss, "\(iss)")
                break
            case .failure(let failure):
                XCTFail("\(failure)")
                break
            }
        }
    }
}
