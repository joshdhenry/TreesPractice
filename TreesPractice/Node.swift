//
//  Node.swift
//  TreesPractice
//
//  Created by Josh Henry on 4/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

import Foundation

class Node
{
    var data: Int
    var left: Node?
    var right: Node?
    
    init(data: Int, left: Node?, right: Node?) {

        self.data = data
        
        if let leftNode = left {
            self.left = leftNode
        }
        
        if let rightNode = right {
            self.right = rightNode
        }
    }
    
}
