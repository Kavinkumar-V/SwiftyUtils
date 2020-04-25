//
//  Created by Tom Baranes on 24/04/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import XCTest
import SwiftyUtils

final class URLExtensionTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

}

extension URLExtensionTests {

    func testQueryParameters() {
        let url = URL(string: "http://example.com/api?v=1.1&q=google")!
        let queryParameters = url.queryParameters
        XCTAssertEqual(queryParameters?["v"], Optional("1.1"))
        XCTAssertEqual(queryParameters?["q"], Optional("google"))
        XCTAssertNil(queryParameters?["other"])
    }

    func testQueryParameters_withoutParameters() {
        let url = URL(string: "http://example.com/api")!
        XCTAssertNil(url.queryParameters)
    }

}
