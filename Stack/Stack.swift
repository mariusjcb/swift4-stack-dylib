//
//  Stack.swift
//  Stack
//
//  Created by Marius Ilie on 09/08/2017.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import Foundation

open class Stack<Element>: ExpressibleByArrayLiteral {
    
    //MARK: Properties
    
    private var elements = Array<Element>()
    
    //MARK: ArrayLiteralConvertible Init
    
    public required init(arrayLiteral: Element...) {
        for element in arrayLiteral {
            self.push(element)
        }
    }
}


extension Stack {
    public var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    public var count: Int {
        return self.elements.count
    }
    
    public var top: Element? {
        return self.elements.last
    }
    
    //MARK: Methods
    
    open func push(_ newElement: Element) {
        self.elements.append(newElement)
    }
    
    open func pop() -> Element? {
        return self.elements.popLast()
    }
}
