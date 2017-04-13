//
//  ViewController.swift
//  TreesPractice
//
//  Created by Josh Henry on 4/12/17.
//  Copyright © 2017 Big Smash Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var node1: Node!
    var node4: Node!
    var node6: Node!
    var node5: Node!
    var node2: Node!
    var node3: Node!
    var node7: Node!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        node7 = Node(data: 7, left: nil, right: nil)
        node6 = Node(data: 6, left: nil, right: node7)
        node4 = Node(data: 4, left: nil, right: nil)
        node1 = Node(data: 1, left: nil, right: nil)
        node5 = Node(data: 5, left: node1, right: node4)
        node2 = Node(data: 2, left: node6, right: nil)
        node3 = Node(data: 3, left: node5, right: node2) //root
        
        preOrderTraverse(n: node3)
        print("---------------------")
        postOrderTraverse(n: node3)
        print("---------------------")
        inOrderTraverse(n: node3)
        
        
        print("Height is " + String(getHeight(root: node3)))
    }

    func preOrderTraverse(n: Node) {
        print(n.data)
        
        if let leftNode = n.left {
            preOrderTraverse(n: leftNode)
        }
        if let rightNode = n.right {
            preOrderTraverse(n: rightNode)
        }
    }
    
    func postOrderTraverse(n: Node) {
        if let leftNode = n.left {
            postOrderTraverse(n: leftNode)
        }
        if let rightNode = n.right {
            postOrderTraverse(n: rightNode)
        }
        print(n.data)
    }
    
    func inOrderTraverse(n: Node) {
        if let leftNode = n.left {
            postOrderTraverse(n: leftNode)
        }

        print(n.data)

        if let rightNode = n.right {
            postOrderTraverse(n: rightNode)
        }
    }
    
    
    func getHeight(root: Node?) -> Int {
        guard root != nil else {
            return -1
        }
        
        return 1 + max(getHeight(root: root!.left), getHeight(root: root!.right))
    }
}

