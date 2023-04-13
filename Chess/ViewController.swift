//
//  ViewController.swift
//  Chess
//
//  Created by Егор Бадмаев on 10.04.2023.
//

import UIKit
import Models

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let board = Board()
        print(board[.a, 8].letter, board[.a, 8].row)
        print(board[.h, 1].letter, board[.h, 1].row)
    }
}
