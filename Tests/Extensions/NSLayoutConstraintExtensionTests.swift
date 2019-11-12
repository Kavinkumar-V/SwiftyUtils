//
//  Created by Tom Baranes on 25/04/16.
//  Copyright © 2016 Tom Baranes. All rights reserved.
//

import XCTest
import SwiftyUtils

final class NSLayoutConstraintExtensionTests: XCTestCase {

    private var view: SwiftyView!
    private var superview: SwiftyView!

    override func setUp() {
        super.setUp()
        view = SwiftyView(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
        superview = SwiftyView(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
    }

    override func tearDown() {
        super.tearDown()
    }

}

extension NSLayoutConstraintExtensionTests {

    func testApplyMultiplierWidth() {
        let constraint = NSLayoutConstraint(item: view!,
                                            attribute: .width,
                                            relatedBy: .equal,
                                            toItem: nil,
                                            attribute: .width,
                                            multiplier: 1,
                                            constant: 10)
        constraint.apply(multiplier: 0.5, toView: superview)
        XCTAssertEqual(constraint.constant, 50)
    }

    func testApplyMultiplierHeight() {
        let constraint = NSLayoutConstraint(item: view!,
                                            attribute: .height,
                                            relatedBy: .equal,
                                            toItem: nil,
                                            attribute: .height,
                                            multiplier: 1,
                                            constant: 10)
        constraint.apply(multiplier: 0.5, toView: superview)
        XCTAssertEqual(constraint.constant, 100)
    }

}
