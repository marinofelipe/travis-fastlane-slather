// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    
	func testLane() {
        desc("Build project tests and generate coverage report")
        runTests(
            project: "Travis-Fastlane-Slather.xcodeproj",
            device: "iPhone 7",
            scheme: "Travis-Fastlane-Slather"
        )
        slather(
            proj: "Travis-Fastlane-Slather.xcodeproj",
            scheme: "Travis-Fastlane-Slather",
            travis: true,
            coveralls: true,
            sourceDirectory: "Travis-Fastlane-Slather/"
        )
	}
}
