//
//  Tests.swift
//  Tests
//
//  Created by Marius Ilie on 09/08/2017.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import XCTest
import Stack

open class SubstackTest<Element>: Stack<Element> {
    public required init(arrayLiteral: Element...) {
        super.init()
        for element in arrayLiteral {
            self.push(element)
        }
    }
}

class Tests: XCTestCase {
    func testStackLiteral() {
        let stack: Stack<Any> = ["hello", 4]
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 2)
        XCTAssertNotNil(stack.top)
        XCTAssertEqual(stack.top as? Int, 4)
        XCTAssertNotNil(stack.pop())
        XCTAssertEqual(stack.top as? String, "hello")
        XCTAssertNotNil(stack.pop())
        XCTAssertNil(stack.pop())
    }
    
    func testStackEmpty() {
        let stack = Stack<Int>()
        
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testStackOneElement() {
        let stack: Stack<Int> = []
        
        stack.push(123)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 123)
        
        let result = stack.pop()
        XCTAssertEqual(result, 123)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testStackTwoElements() {
        let stack = Stack<Int>()
        
        stack.push(123)
        stack.push(456)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(stack.top, 456)
        
        let result1 = stack.pop()
        XCTAssertEqual(result1, 456)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 123)
        
        let result2 = stack.pop()
        XCTAssertEqual(result2, 123)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testStackMakeEmpty() {
        let stack: Stack<Int> = []
        
        stack.push(123)
        stack.push(456)
        XCTAssertNotNil(stack.pop())
        XCTAssertNotNil(stack.pop())
        XCTAssertNil(stack.pop())
        
        stack.push(789)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 789)
        
        let result = stack.pop()
        XCTAssertEqual(result, 789)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    
    //MARK: - Subclass of Stack
    
    func testSubclassOfStackLiteral() {
        let stack: SubstackTest<Any> = ["hello", 4]
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 2)
        XCTAssertNotNil(stack.top)
        XCTAssertEqual(stack.top as? Int, 4)
        XCTAssertNotNil(stack.pop())
        XCTAssertEqual(stack.top as? String, "hello")
        XCTAssertNotNil(stack.pop())
        XCTAssertNil(stack.pop())
    }
    
    func testSubclassOfStackEmpty() {
        let stack = SubstackTest<Int>()
        
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testSubclassOfStackOneElement() {
        let stack: SubstackTest<Int> = []
        
        stack.push(123)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 123)
        
        let result = stack.pop()
        XCTAssertEqual(result, 123)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testSubclassOfStackTwoElements() {
        let stack = SubstackTest<Int>()
        
        stack.push(123)
        stack.push(456)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(stack.top, 456)
        
        let result1 = stack.pop()
        XCTAssertEqual(result1, 456)
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 123)
        
        let result2 = stack.pop()
        XCTAssertEqual(result2, 123)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
    
    func testSubclassOfStackMakeEmpty() {
        let stack: SubstackTest<Int> = []
        
        stack.push(123)
        stack.push(456)
        XCTAssertNotNil(stack.pop())
        XCTAssertNotNil(stack.pop())
        XCTAssertNil(stack.pop())
        
        stack.push(789)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.top, 789)
        
        let result = stack.pop()
        XCTAssertEqual(result, 789)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertEqual(stack.top, nil)
        XCTAssertNil(stack.pop())
    }
}
