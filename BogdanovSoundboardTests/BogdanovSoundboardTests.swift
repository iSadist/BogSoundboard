//
//  BogdanovSoundboardTests.swift
//  BogdanovSoundboardTests
//
//  Created by Jan Svensson on 2018-09-21.
//  Copyright © 2018 Jan Svensson. All rights reserved.
//

import XCTest
import AVFoundation
@testable import BogdanovSoundboard

class BogdanovSoundboardTests: XCTestCase {

    var audio: AudioUtility?
    
    override func setUp() {
        audio = AudioUtility()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        audio = nil
    }

    func testExample() {
        let audioPlayer = AudioUtility.createAudioPlayer(filePath: "dumpit")
        XCTAssert(audioPlayer != nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
