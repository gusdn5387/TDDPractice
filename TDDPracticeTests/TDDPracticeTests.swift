//
//  TDDPracticeTests.swift
//  TDDPracticeTests
//
//  Created by 박현우 on 2022/04/26.
//

import XCTest
@testable import TDDPractice

class TDDPracticeTests: XCTestCase {
    
    var viewController: ViewController?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // Array Sort Test - input 배열이 정렬했을 때 expect 배열과 동일하면 테스트 성공
    func testArraySorting() {
        let input = [1, 20, 100, 9, 6]
        let expect = [1, 6, 9, 20, 100]
        
        let result = input.sorted()
        
        XCTAssertEqual(result, expect)
    }
    
    // setupLayout 함수 테스트
    func testSetupLayout() {
        viewController?.setupLayout()
    }

    // divide 함수 테스트
    func testDivide_1() {
//        let divide = viewController?.divide(a: 2, b: 0) // division by zero error
        let divide = viewController?.divide(a: 4, b: 2)
//        XCTAssertNil(divide) // 값이 2라서 nil이 아님. 테스트 실패
//        XCTAssertNotEqual(2, divide) // 같아서 오류
        XCTAssertEqual(2, divide)
    }
    
    // evenCheck 함수 테스트
    func testEvenCheck() {
        let evenCheck: Int = viewController?.evenCheck(5) // evenCheck 함수 없어서 오류
        
    }
}
